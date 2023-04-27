#include <kernels.h>
#include <archs.h>

int main() {

    const int KN = 9;

    clock_t clock_rate = CLOCK;

    int b[KN], t[KN], r[KN], s[KN];

    b[0] = N_SM; t[0] = 32; r[0] = 32; s[0] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[1] = N_SM; t[1] = 32; r[1] = 32; s[1] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[2] = N_SM; t[2] = 32; r[2] = 32; s[2] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[3] = N_SM; t[3] = 32; r[3] = 32; s[3] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[4] = N_SM; t[4] = 32; r[4] = 32; s[4] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[5] = N_SM; t[5] = 32; r[5] = 32; s[5] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[6] = N_SM; t[6] = 32; r[6] = 32; s[6] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[7] = N_SM; t[7] = 32; r[7] = 32; s[7] = ((MAX_SMEM_PER_SM / 1024 / 8) - 1) * 1024;
    b[8] = N_SM; t[8] = 32; r[8] = 32; s[8] = ((MAX_SMEM_PER_SM / 1024 / 2) - 1) * 1024;
    cudaFuncSetAttribute(kernel_r32, cudaFuncAttributeMaxDynamicSharedMemorySize, s[8]);

    printf("================================================================================\n");
    printf("Test14 =========================================================================\n");
    printf("K1 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream1\n", b[0], t[0], r[0], s[0]);
    printf("K2 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream2\n", b[1], t[1], r[1], s[1]);
    printf("K3 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream3\n", b[2], t[2], r[2], s[2]);
    printf("K4 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream4\n", b[3], t[3], r[3], s[3]);
    printf("K5 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream5\n", b[4], t[4], r[4], s[4]);
    printf("K6 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream6\n", b[5], t[5], r[5], s[5]);
    printf("K7 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream7\n", b[6], t[6], r[6], s[6]);
    printf("K8 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream8\n", b[7], t[7], r[7], s[7]);
    printf("K9 = K(%d, %d, %d, %d Bytes), all blocks 1s, stream9\n", b[8], t[8], r[8], s[8]);
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
        for (int j = 0; j < b[i]; j++) {
            if (i % 2 == 0)
                h_seconds[i][j] = 1.0f;
            else
                h_seconds[i][j] = 2.0f;
        }
        checkCuda(cudaMemcpy(d_seconds[i], h_seconds[i], seconds_size[i], cudaMemcpyHostToDevice));
    }

    // stream

    cudaStream_t stream[KN];
    for (int i = 0; i < KN; i++) checkCuda(cudaStreamCreate(&stream[i]));

    // invoke kernels

    for (int i = 0; i < KN; i++)
        invoke_kernel(b[i], t[i], r[i], s[i], stream[i], d_seconds[i], clock_rate, d_smid[i]);

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
