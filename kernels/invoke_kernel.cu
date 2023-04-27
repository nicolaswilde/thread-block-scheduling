#include <kernels.h>

void invoke_kernel(int b, int t, int r, int s, cudaStream_t stream, float *seconds, clock_t clock_rate, int *smid) {
    switch (r) {
        case  24: kernel_r24 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  32: kernel_r32 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  40: kernel_r40 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  41: kernel_r41 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  48: kernel_r48 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  56: kernel_r56 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  64: kernel_r64 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  72: kernel_r72 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  80: kernel_r80 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  88: kernel_r88 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case  96: kernel_r96 <<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 104: kernel_r104<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 112: kernel_r112<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 120: kernel_r120<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 128: kernel_r128<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 136: kernel_r136<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 144: kernel_r144<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 152: kernel_r152<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 160: kernel_r160<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 168: kernel_r168<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 176: kernel_r176<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 184: kernel_r184<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 192: kernel_r192<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 200: kernel_r200<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 208: kernel_r208<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 216: kernel_r216<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 224: kernel_r224<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 232: kernel_r232<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 240: kernel_r240<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 248: kernel_r248<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        case 255: kernel_r255<<<b, t, s, stream>>>(smid, s, seconds, clock_rate); break;
        default: printf("ERROR: invoke kernel r = %d\n", r);
    }
}
