#编译用到的路径
WORKSPACE  = /home/cron/os/project/
OUTPATH    = $(WORKSPACE)build/   #输出文件存放的地方
KERNELPATH = $(WORKSPACE)kernel/
BOOTPATH   = $(WORKSPACE)bootloader/
LIBKPATH   = $(WORKSPACE)lib/kernel/
LIBUPATH   = $(WORKSPACE)lib/user/
LIBPATH    = $(WORKSPACE)lib/
DEVICEPATH = $(WORKSPACE)device/
VPATH      = $(KERNELPATH):$(LIBKPATH):$(LIBPATH):$(LIBUPATH):$(BOOTPATH) 

#编译链接用到的参数
LIBFLAG    = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
				-I $(WORKSPACE)bootloader/
CFLAG      = -Wall  -m32 $(LIBFLAG)  -fno-builtin -fno-stack-protector \
			-W -Wstrict-prototypes -Wmissing-prototypes -c -o
#-fno-builtin，它是告诉编译器不要采用内部函数，
#－Wstriet-prototypes 选项要求函数声明中必须有参数类型，否则编译时发出警告。
#－Wmissing-prototypes 选项要求函数必须有声明，否则编译时发出警告。
ASM2OBJF   = -f elf -o
ASM2BINF   =  $(LIBFLAG) -o
LDFLAG     = -m elf_i386 -Ttext 0x1500 -e main -Map $(OUTPATH)kernel.map -o

MAKE       = sudo make -r
AS         = sudo nasm

CC         = sudo gcc -std=gnu99
LD         = sudo ld
COPY       = cp
DEL        = sudo rm
OBJS       = $(OUTPATH)main.o $(OUTPATH)init.o $(OUTPATH)interrupt.o $(OUTPATH)timer.o\
			$(OUTPATH)kernel.o $(OUTPATH)print.o $(OUTPATH)debug.o
BINS       = $(OUTPATH)kernel.bin $(OUTPATH)loader.bin $(OUTPATH)mbr.bin
default:
		$(MAKE) img
img:
		$(MAKE) NewOS.img
NewOS.img: $(BINS)
		dd if=$(OUTPATH)mbr.bin of=./NewOS.img bs=512 count=1 conv=notrunc
		dd if=$(OUTPATH)loader.bin of=./NewOS.img bs=512 count=7 seek=2 conv=notrunc
		dd if=$(OUTPATH)kernel.bin of=./NewOS.img bs=512 count=200 seek=9 conv=notrunc
# bootloader/
$(WORKSPACE)build/%.bin: %.S
		$(AS) $(ASM2BINF) $@ $<

 $(WORKSPACE)build/%.o:%.c
	$(CC) $(CFLAG) $@ $<
 $(WORKSPACE)build/%.o:%.S
	$(AS) $(ASM2OBJF) $@ $<

kernel.bin:$(OBJS) 
	$(LD) $(LDFLAG) $@ $^


clear:
		$(DEL) *.bin
		$(DEL) *.o
