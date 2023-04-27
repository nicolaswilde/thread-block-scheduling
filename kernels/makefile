default: clean arch70 arch75 arch80 arch86

clean:
	rm -f *.a *.o

arch70:
	rm -f *.o
	nvcc -c kernel_r24.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=24
	nvcc -c kernel_r32.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=32
	nvcc -c kernel_r40.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=40
	nvcc -c kernel_r41.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=41
	nvcc -c kernel_r48.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=48
	nvcc -c kernel_r56.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=56
	nvcc -c kernel_r64.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=64
	nvcc -c kernel_r72.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=72
	nvcc -c kernel_r80.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=80
	nvcc -c kernel_r88.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=88
	nvcc -c kernel_r96.cu  -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=96
	nvcc -c kernel_r104.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=104
	nvcc -c kernel_r112.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=112
	nvcc -c kernel_r120.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=120
	nvcc -c kernel_r128.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=128
	nvcc -c kernel_r136.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=136
	nvcc -c kernel_r144.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=144
	nvcc -c kernel_r152.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=152
	nvcc -c kernel_r160.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=160
	nvcc -c kernel_r168.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=168
	nvcc -c kernel_r176.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=176
	nvcc -c kernel_r184.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=184
	nvcc -c kernel_r192.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=192
	nvcc -c kernel_r200.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=200
	nvcc -c kernel_r208.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=208
	nvcc -c kernel_r216.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=216
	nvcc -c kernel_r224.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=224
	nvcc -c kernel_r232.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=232
	nvcc -c kernel_r240.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=240
	nvcc -c kernel_r248.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=248
	nvcc -c kernel_r255.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include -maxrregcount=255
	nvcc -c invoke_kernel.cu -arch=compute_70 -code=sm_70 --ptxas-options=-v -I../include
	nvcc -dlink -o kernels.o *.o -lcublas -lcudnn -arch=compute_70 -code=sm_70
	ar cr libkernels_70.a *.o
	rm -f *.o

arch75:
	rm -f *.o
	nvcc -c kernel_r24.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=24
	nvcc -c kernel_r32.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=32
	nvcc -c kernel_r40.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=40
	nvcc -c kernel_r41.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=41
	nvcc -c kernel_r48.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=48
	nvcc -c kernel_r56.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=56
	nvcc -c kernel_r64.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=64
	nvcc -c kernel_r72.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=72
	nvcc -c kernel_r80.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=80
	nvcc -c kernel_r88.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=88
	nvcc -c kernel_r96.cu  -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=96
	nvcc -c kernel_r104.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=104
	nvcc -c kernel_r112.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=112
	nvcc -c kernel_r120.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=120
	nvcc -c kernel_r128.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=128
	nvcc -c kernel_r136.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=136
	nvcc -c kernel_r144.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=144
	nvcc -c kernel_r152.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=152
	nvcc -c kernel_r160.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=160
	nvcc -c kernel_r168.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=168
	nvcc -c kernel_r176.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=176
	nvcc -c kernel_r184.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=184
	nvcc -c kernel_r192.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=192
	nvcc -c kernel_r200.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=200
	nvcc -c kernel_r208.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=208
	nvcc -c kernel_r216.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=216
	nvcc -c kernel_r224.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=224
	nvcc -c kernel_r232.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=232
	nvcc -c kernel_r240.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=240
	nvcc -c kernel_r248.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=248
	nvcc -c kernel_r255.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include -maxrregcount=255
	nvcc -c invoke_kernel.cu -arch=compute_75 -code=sm_75 --ptxas-options=-v -I../include
	nvcc -dlink -o kernels.o *.o -lcublas -lcudnn -arch=compute_75 -code=sm_75
	ar cr libkernels_75.a *.o
	rm -f *.o

arch80:
	rm -f *.o
	nvcc -c kernel_r24.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=24
	nvcc -c kernel_r32.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=32
	nvcc -c kernel_r40.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=40
	nvcc -c kernel_r41.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=41
	nvcc -c kernel_r48.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=48
	nvcc -c kernel_r56.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=56
	nvcc -c kernel_r64.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=64
	nvcc -c kernel_r72.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=72
	nvcc -c kernel_r80.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=80
	nvcc -c kernel_r88.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=88
	nvcc -c kernel_r96.cu  -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=96
	nvcc -c kernel_r104.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=104
	nvcc -c kernel_r112.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=112
	nvcc -c kernel_r120.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=120
	nvcc -c kernel_r128.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=128
	nvcc -c kernel_r136.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=136
	nvcc -c kernel_r144.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=144
	nvcc -c kernel_r152.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=152
	nvcc -c kernel_r160.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=160
	nvcc -c kernel_r168.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=168
	nvcc -c kernel_r176.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=176
	nvcc -c kernel_r184.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=184
	nvcc -c kernel_r192.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=192
	nvcc -c kernel_r200.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=200
	nvcc -c kernel_r208.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=208
	nvcc -c kernel_r216.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=216
	nvcc -c kernel_r224.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=224
	nvcc -c kernel_r232.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=232
	nvcc -c kernel_r240.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=240
	nvcc -c kernel_r248.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=248
	nvcc -c kernel_r255.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include -maxrregcount=255
	nvcc -c invoke_kernel.cu -arch=compute_80 -code=sm_80 --ptxas-options=-v -I../include
	nvcc -dlink -o kernels.o *.o -lcublas -lcudnn -arch=compute_80 -code=sm_80
	ar cr libkernels_80.a *.o
	rm -f *.o

arch86:
	rm -f *.o
	nvcc -c kernel_r24.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=24
	nvcc -c kernel_r32.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=32
	nvcc -c kernel_r40.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=40
	nvcc -c kernel_r41.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=41
	nvcc -c kernel_r48.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=48
	nvcc -c kernel_r56.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=56
	nvcc -c kernel_r64.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=64
	nvcc -c kernel_r72.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=72
	nvcc -c kernel_r80.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=80
	nvcc -c kernel_r88.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=88
	nvcc -c kernel_r96.cu  -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=96
	nvcc -c kernel_r104.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=104
	nvcc -c kernel_r112.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=112
	nvcc -c kernel_r120.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=120
	nvcc -c kernel_r128.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=128
	nvcc -c kernel_r136.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=136
	nvcc -c kernel_r144.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=144
	nvcc -c kernel_r152.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=152
	nvcc -c kernel_r160.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=160
	nvcc -c kernel_r168.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=168
	nvcc -c kernel_r176.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=176
	nvcc -c kernel_r184.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=184
	nvcc -c kernel_r192.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=192
	nvcc -c kernel_r200.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=200
	nvcc -c kernel_r208.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=208
	nvcc -c kernel_r216.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=216
	nvcc -c kernel_r224.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=224
	nvcc -c kernel_r232.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=232
	nvcc -c kernel_r240.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=240
	nvcc -c kernel_r248.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=248
	nvcc -c kernel_r255.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include -maxrregcount=255
	nvcc -c invoke_kernel.cu -arch=compute_86 -code=sm_86 --ptxas-options=-v -I../include
	nvcc -dlink -o kernels.o *.o -lcublas -lcudnn -arch=compute_86 -code=sm_86
	ar cr libkernels_86.a *.o
	rm -f *.o
