
MAKE     = sudo make -r
NASM     = sudo nasm
GCC      = sudo gcc -std=c99
LD       = sudo ld
COPY     = cp
DEL      = rm


default:
		$(MAKE) img
img:
		$(MAKE) NewOS.img
NewOS.img: loader.bin mbr.bin 
		dd if=mbr.bin of=../NewOS.img bs=512 count=1 conv=notrunc
		dd if=loader.bin of=../NewOS.img bs=512 count=7 seek=2 conv=notrunc

%.bin: %.S
		$(NASM) $*.S -I Include/  -o $*.bin
clear:
		$(DEL) *.bin
