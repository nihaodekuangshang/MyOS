#编译用到的路径
WORKSPACE = /home/cron/os/project/
OUTPATH   = $(WORKSPACE)build/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device
#编译链接用到的参数
CFLAG     = -m32 $(LIBFLAG) -c -fno-builtin -o
ASMFLAG   = -f elf -o
LDFLAG    = -m elf_i386 -Ttext 0x1500 -e main -o

MAKE      = sudo make -r
AS        = sudo nasm

CC        = sudo gcc -std=gnu99
LD        = sudo ld
COPY      = cp
DEL       = sudo rm

OBJS      = $(OUTPATH)print.o
default:
	$(MAKE) $(OBJS)

$(OUTPATH)%.o:%.S
	$(AS) $(ASMFLAG) $@ $<
