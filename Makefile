all: bootloader kernel
	cat bootloader/boot.bin kernel/kernel.bin > os-image.bin

bootloader:
	make -C bootloader

kernel:
	make -C kernel

clean:
	rm -f os-image.bin
	make -C bootloader clean
	make -C kernel clean
