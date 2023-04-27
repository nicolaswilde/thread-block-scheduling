#ifndef __ARCHS_H__
#define __ARCHS_H__

#define THREAD_PER_WARP 32

#ifdef V100 // Volta Architecture, Compute Capability = 7.0

    #define CLOCK 1500000

    // hardware limits
    #define N_SM 80
    #define MAX_THREAD_BLOCK_PER_SM 32
    #define MAX_WARP_PER_SM 64
    #define MAX_THREAD_PER_SM 2048
    #define MAX_REG_PER_SM 65536
    #define MAX_SMEM_PER_SM 98304

    // software limits
    #define MAX_THREAD_PER_THREAD_BLOCK 1024
    #define MAX_REG_PER_THREAD 255
    #define MAX_SMEM_PER_THREAD_BLOCK 98304
    #define RUNTIME_SMEM_PER_THREAD_BLOCK 0

    // allocation granularity
    #define REG_ALLOC_GRAN 256
    #define SMEM_ALLOC_GRAN 256

#endif // V100

#ifdef RTX2080TI // Turing Architecture, Compute Capability = 7.5

    #define CLOCK 1900000

    // hardware limits
    #define N_SM 68
    #define MAX_THREAD_BLOCK_PER_SM 16
    #define MAX_WARP_PER_SM 32
    #define MAX_THREAD_PER_SM 1024
    #define MAX_REG_PER_SM 65536
    #define MAX_SMEM_PER_SM 65536

    // software limits
    #define MAX_THREAD_PER_THREAD_BLOCK 1024
    #define MAX_REG_PER_THREAD 255
    #define MAX_SMEM_PER_THREAD_BLOCK 65536
    #define RUNTIME_SMEM_PER_THREAD_BLOCK 0

    // allocation granularity
    #define REG_ALLOC_GRAN 256
    #define SMEM_ALLOC_GRAN 256

#endif // RTX2080TI

#ifdef A100 // Ampere Architecture, Compute Capability = 8.0

    #define CLOCK 1500000

    // hardware limits
    #define N_SM 108
    #define MAX_THREAD_BLOCK_PER_SM 32
    #define MAX_WARP_PER_SM 64
    #define MAX_THREAD_PER_SM 2048
    #define MAX_REG_PER_SM 65536
    #define MAX_SMEM_PER_SM 167936

    // software limits
    #define MAX_THREAD_PER_THREAD_BLOCK 1024
    #define MAX_REG_PER_THREAD 255
    #define MAX_SMEM_PER_THREAD_BLOCK 166912
    #define RUNTIME_SMEM_PER_THREAD_BLOCK 1024

    // allocation granularity
    #define REG_ALLOC_GRAN 256
    #define SMEM_ALLOC_GRAN 128

#endif // A100

#ifdef RTX3090 // Ampere Architecture, Compute Capability = 8.6

    #define CLOCK 1900000

    // hardware limits
    #define N_SM 82
    #define MAX_THREAD_BLOCK_PER_SM 16
    #define MAX_WARP_PER_SM 48
    #define MAX_THREAD_PER_SM 1536
    #define MAX_REG_PER_SM 65536
    #define MAX_SMEM_PER_SM 102400

    // software limits
    #define MAX_THREAD_PER_THREAD_BLOCK 1024
    #define MAX_REG_PER_THREAD 255
    #define MAX_SMEM_PER_THREAD_BLOCK 101376
    #define RUNTIME_SMEM_PER_THREAD_BLOCK 1024

    // allocation granularity
    #define REG_ALLOC_GRAN 256
    #define SMEM_ALLOC_GRAN 128

#endif // RTX3090

#endif // __ARCHS_H__
