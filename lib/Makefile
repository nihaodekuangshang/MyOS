#编译用到的路径
WORKSPACE = /home/cron/ubuntu/project/
OUTPATH   = $(WORKSPACE)build/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
			-I $(WORKSPACE)kernel
#编译链接用到的参数
CFLAG     = -std=gnu99 Wall  -m32 $(LIBFLAG)  -fno-builtin -fno-stack-protector \
			-W -Wstrict-prototypes -Wmissing-prototypes -c -o
#-fno-builtin，它是告诉编译器不要采用内部函数，
#－Wstriet-prototypes 选项要求函数声明中必须有参数类型，否则编译时发出警告。
#－Wmissing-prototypes 选项要求函数必须有声明，否则编译时发出警告。
ASMFLAG   = -f elf -o


MAKE      = sudo make -r
AS        =  nasm

CC        =  sudo gcc
LD        =  sudo ld
COPY      = cp
DEL       = sudo rm

OBJS      = $(OUTPATH)string.o
default:
	$(MAKE) $(OBJS)

$(OUTPATH)%.o:%.c
	$(CC) $(CFLAG) $@ $<
