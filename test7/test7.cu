#include <kernels.h>
#include <archs.h>

int main() {

    const int KN = 1;

    clock_t clock_rate = CLOCK;

    int b[KN], t[KN], r[KN], s[KN];

    b[0] = N_SM;
    t[0] = 32;
    r[0] = 32;
    s[0] = 0;

    printf("================================================================================\n");
    printf("Test7 ==========================================================================\n");
    printf("K1 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream1\n", b[0], t[0], r[0], s[0]);
    printf("================================================================================\n");

    // smid

    size_t smid_size[KN];
    for (int i = 0; i < KN; i++) smid_size[i] = b[i] * sizeof(int);

    int *d_smid[KN], *h_smid[KN];
    for (int i = 0; i < KN; i++) {
        checkCuda(cudaMalloc(&d_smid[i], smid_size[i]));
        h_smid[i] = (int *)malloc(smid_size[i]);
        checkCuda(cudaMemset(d_smid[i], 0xffffffff, smid_size[i]));
    }

    // seconds

    size_t seconds_size[KN];
    for (int i = 0; i < KN; i++) seconds_size[i] = b[i] * sizeof(float);

    float *d_seconds[KN], *h_seconds[KN];
    for (int i = 0; i < KN; i++) {
        checkCuda(cudaMalloc(&d_seconds[i], seconds_size[i]));
        h_seconds[i] = (float *)malloc(seconds_size[i]);
        for (int j = 0; j < b[i]; j++) h_seconds[i][j] = 1.0f;
        checkCuda(cudaMemcpy(d_seconds[i], h_seconds[i], seconds_size[i], cudaMemcpyHostToDevice));
    }

    // stream

    cudaStream_t stream[KN];
    for (int i = 0; i < KN; i++) checkCuda(cudaStreamCreate(&stream[i]));

    // invoke kernels

    for (int i = 0; i < KN; i++)
        invoke_kernel(b[i], t[i], r[i], s[i], stream[i], d_seconds[i], clock_rate, d_smid[i]);

    // smid

    for (int i = 0; i < KN; i++) {
        checkCuda(cudaMemcpy(h_smid[i], d_smid[i], smid_size[i], cudaMemcpyDeviceToHost));

        printf("K%d smid = %d", i + 1, h_smid[i][0]);
        for (int j = 1; j < b[i]; j++) printf(", %d", h_smid[i][j]);
        printf("\n");
    }

    printf("================================================================================\n");

    // free

    for (int i = 0; i < KN; i++) {
        checkCuda(cudaFree(d_smid[i]));
        checkCuda(cudaFree(d_seconds[i]));
        free(h_smid[i]);
        free(h_seconds[i]);
        checkCuda(cudaStreamDestroy(stream[i]));
    }
}
