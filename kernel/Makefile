#编译用到的路径
SHELL = /bin/bash
HOMESPACE = /home/cron/ubuntu/
WORKSPACE =$(HOMESPACE)project/
OUTPATH   = $(WORKSPACE)build/
TOOLSPACE = $(HOMESPACE)tools/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
			-I $(WORKSPACE)kernel/  -I $(WORKSPACE)thread/
#编译链接用到的参数
CFLAG     = -Wall  -m32 $(LIBFLAG)  -fno-builtin -fno-stack-protector \
			-W -c -o
#-fno-builtin，它是告诉编译器不要采用内部函数，
#－Wstriet-prototypes 选项要求函数声明中必须有参数类型，否则编译时发出警告。
#－Wmissing-prototypes 选项要求函数必须有声明，否则编译时发出警告。
ASMFLAG   = -f elf -o
LDFLAG    = -m elf_i386 -Ttext 0xc0001500 -e main -Map $(OUTPATH)kernel.map -o

MAKE      = sudo make -r
AS        = sudo nasm

CC        = sudo gcc -std=gnu99
LD        = sudo ld
COPY      = sudo cp
DEL       = sudo rm
OBJS      = $(OUTPATH)main.o $(OUTPATH)init.o $(OUTPATH)interrupt.o  $(OUTPATH)timer.o\
		  $(OUTPATH)kernel.o $(OUTPATH)print.o $(OUTPATH)debug.o $(OUTPATH)string.o\
		$(OUTPATH)memory.o $(OUTPATH)bitmap.o  $(OUTPATH)thread.o $(OUTPATH)list.o $(OUTPATH)switch.o
default:
		$(MAKE) install
install:
	$(MAKE) img
	sudo cp $(WORKSPACE)NewOS.img $(TOOLSPACE)Bochs/NewOS.img
	sudo $(TOOLSPACE)objdump.sh ../build/kernel.bin ../diskernel.S
img:
		$(MAKE) NewOS.img
NewOS.img: $(OUTPATH)kernel.bin
	dd if=$(OUTPATH)kernel.bin of=../NewOS.img bs=512 count=200 seek=9 conv=notrunc
$(OUTPATH)%.o:%.c
	$(CC) $(CFLAG) $@ $<
$(OUTPATH)%.o:%.S
	$(AS) $(ASMFLAG) $@ $<

$(OUTPATH)kernel.bin:$(OBJS) 
	$(LD) $(LDFLAG) $@ $^
clean:
		$(DEL) *.bin
		$(DEL) *.o

