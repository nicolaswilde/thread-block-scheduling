#include <kernels.h>
#include <archs.h>

int main() {

    const int KN = 4;

    clock_t clock_rate = CLOCK;

    int b[KN], t[KN], r[KN], s[KN];

    b[0] = N_SM * (MAX_THREAD_PER_SM / MAX_THREAD_PER_THREAD_BLOCK);
    t[0] = MAX_THREAD_PER_THREAD_BLOCK;
    r[0] = 32;
    s[0] = 0;

    b[1] = N_SM * (MAX_THREAD_PER_SM / MAX_THREAD_PER_THREAD_BLOCK);
    t[1] = MAX_THREAD_PER_THREAD_BLOCK;
    r[1] = 32;
    s[1] = 0;

    b[2] = N_SM * (MAX_THREAD_PER_SM / MAX_THREAD_PER_THREAD_BLOCK);
    t[2] = MAX_THREAD_PER_THREAD_BLOCK;
    r[2] = 32;
    s[2] = 0;

    b[3] = N_SM * (MAX_THREAD_PER_SM / MAX_THREAD_PER_THREAD_BLOCK);
    t[3] = MAX_THREAD_PER_THREAD_BLOCK;
    r[3] = 32;
    s[3] = 0;

    printf("================================================================================\n");
    printf("Test4 ==========================================================================\n");
    printf("K1 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream1\n", b[0], t[0], r[0], s[0]);
    printf("K2 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream1\n", b[1], t[1], r[1], s[1]);
    printf("K3 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream2\n", b[2], t[2], r[2], s[2]);
    printf("K4 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream3\n", b[3], t[3], r[3], s[3]);
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

    invoke_kernel(b[0], t[0], r[0], s[0], stream[0], d_seconds[0], clock_rate, d_smid[0]);
    invoke_kernel(b[1], t[1], r[1], s[1], stream[0], d_seconds[1], clock_rate, d_smid[1]);
    invoke_kernel(b[2], t[2], r[2], s[2], stream[1], d_seconds[2], clock_rate, d_smid[2]);
    invoke_kernel(b[3], t[3], r[3], s[3], stream[2], d_seconds[3], clock_rate, d_smid[3]);

    // smid
    /*
    for (int i = 0; i < KN; i++) {
        checkCuda(cudaMemcpy(h_smid[i], d_smid[i], smid_size[i], cudaMemcpyDeviceToHost));

        printf("K%d smid = %d", i + 1, h_smid[i][0]);
        for (int j = 1; j < b[i]; j++) printf(", %d", h_smid[i][j]);
        printf("\n");
    }

    printf("================================================================================\n");
    */

    // free

    for (int i = 0; i < KN; i++) {
        checkCuda(cudaFree(d_smid[i]));
        checkCuda(cudaFree(d_seconds[i]));
        free(h_smid[i]);
        free(h_seconds[i]);
        checkCuda(cudaStreamDestroy(stream[i]));
    }
}
