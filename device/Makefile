#编译用到的路径
WORKSPACE = /home/cron/ubuntu/project/
OUTPATH = $(WORKSPACE)build/
LIBFLAG = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device
#编译链接用到的参数
CFLAG  = -m32 $(LIBFLAG) -c -fno-builtin -o


MAKE     = sudo make -r
AS     = sudo nasm

CC      = sudo gcc -std=gnu99
LD       = sudo ld
COPY     = cp
DEL      = sudo rm
OBJS     = $(OUTPATH)timer.o
default:
		$(MAKE) $(OBJS)
$(OUTPATH)%.o:%.c
	$(CC) $(CFLAG) $@ $<
timer.o:timer.c
