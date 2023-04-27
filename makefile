.PHONY: test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test11 test12 test13 test14
TESTS := test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test11 test12 test13 test14

ifndef GPGPU
	GPGPU := RTX3090
endif

all: clean lib $(TESTS)

lib:
	make clean -C kernels
	make -C kernels

$(TESTS):
	make clean -C $@
	make -C $@ GPGPU=$(GPGPU)
	make profile -C $@
	mkdir -p result
	mv $@/$@.nsys-rep result/$@_$(GPGPU).nsys-rep

clean:
	make clean -C kernels
	rm -f result/*.nsys-rep
