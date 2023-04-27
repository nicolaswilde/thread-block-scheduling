#ifndef __KERNELS_H__
#define __KERNELS_H__

#include <cuda_runtime.h>

#include <stdio.h>
#include <stdlib.h>

#define checkCuda(func)                                                          \
{                                                                                \
    cudaError_t e = (func);                                                      \
    if(e != cudaSuccess)                                                         \
        printf ("%s %d CUDA: %s\n", __FILE__,  __LINE__, cudaGetErrorString(e)); \
}

__global__ void kernel_r24 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r32 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r40 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r41 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r48 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r56 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r64 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r72 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r80 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r88 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r96 (int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r104(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r112(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r120(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r128(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r136(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r144(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r152(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r160(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r168(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r176(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r184(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r192(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r200(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r208(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r216(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r224(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r232(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r240(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r248(int *smid, int smem_size, float *seconds, clock_t clock_rate);
__global__ void kernel_r255(int *smid, int smem_size, float *seconds, clock_t clock_rate);

void invoke_kernel(int b, int t, int r, int s, cudaStream_t stream, float *seconds, clock_t clock_rate, int *smid);

#endif // __KERNELS_H__
