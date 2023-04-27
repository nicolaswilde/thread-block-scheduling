#include <kernels.h>

__global__ void kernel_r184(int *smid, int smem_size, float *seconds, clock_t clock_rate) {

    clock_t t0 = clock64();

    int this_smid;
    asm("mov.u32 %0, %smid;" : "=r"(this_smid));

    if (threadIdx.x == 0) smid[blockIdx.x] = this_smid;

    extern __shared__ int smem[];

    const int regs_count = 256;
    const int smem_count = smem_size / sizeof(int);
    int regs[regs_count];

    #pragma unroll 256
    for (int i = 0; i < smem_count; i++) regs[i % regs_count] += smem[i];
    for (int i = 0; i < regs_count && i < smem_count; i++) smem[i] = regs[i];

    float this_seconds = seconds[blockIdx.x];
    clock_t t1 = clock64();
    while ((t1 - t0) / (clock_rate * 1000.0f) < this_seconds) t1 = clock64();
}
