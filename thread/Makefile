
#编译用到的路径
SHELL = /bin/bash
HOMESPACE = /home/cron/ubuntu/
WORKSPACE =$(HOMESPACE)project/
OUTPATH   = $(WORKSPACE)build/
TOOLSPACE = $(HOMESPACE)tools/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
			-I $(WORKSPACE)kernel/ 
#编译链接用到的参数
CFLAG     = -Wall  -m32 $(LIBFLAG)  -fno-builtin -fno-stack-protector \
			-W -c -o
#-fno-builtin，它是告诉编译器不要采用内部函数，
#－Wstriet-prototypes 选项要求函数声明中必须有参数类型，否则编译时发出警告。
#－Wmissing-prototypes 选项要求函数必须有声明，否则编译时发出警告。
ASMFLAG   = -f elf -o

MAKE      = sudo make -r
AS        = sudo nasm

CC        = sudo gcc -std=gnu99
LD        = sudo ld
COPY      = sudo cp
DEL       = sudo rm
OBJS      = $(OUTPATH)thread.o $(OUTPATH)switch.o

default:
	$(MAKE) $(OBJS)

$(OUTPATH)%.o:%.S
	$(AS) $(ASMFLAG) $@ $<
$(OUTPATH)%.o:%.c
	$(CC) $(CFLAG) $@ $<
clean:
		$(DEL) *.bin
		$(DEL) *.o

