#编译用到的路径
WORKSPACE = /home/cron/ubuntu/project/
OUTPATH   = $(WORKSPACE)build/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
			-I $(WORKSPACE)kernel/ 
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

OBJS      = $(OUTPATH)print.o $(OUTPATH)bitmap.o $(OUTPATH)list.o
default:
	$(MAKE) $(OBJS)

$(OUTPATH)%.o:%.S
	$(AS) $(ASMFLAG) $@ $<
$(OUTPATH)%.o:%.c
	$(CC) $(CFLAG) $@ $<
