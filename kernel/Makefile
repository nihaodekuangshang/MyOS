#编译用到的路径
SHELL = /bin/bash
WORKSPACE = /home/cron/ubuntu/project/
OUTPATH   = $(WORKSPACE)build/
LIBFLAG   = -I $(WORKSPACE)lib/kernel/  -I $(WORKSPACE)lib/  -I $(WORKSPACE)  -I $(WORKSPACE)device\
			-I $(WORKSPACE)kernel/ 
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
COPY      = cp
DEL       = sudo rm
OBJS = $(BUILD_DIR)/main.o $(BUILD_DIR)/init.o $(BUILD_DIR)/interrupt.o \
      $(BUILD_DIR)/timer.o $(BUILD_DIR)/kernel.o $(BUILD_DIR)/print.o \
      $(BUILD_DIR)/debug.o $(BUILD_DIR)/string.o $(BUILD_DIR)/memory.o \
      $(BUILD_DIR)/bitmap.o 
OBJS      = $(OUTPATH)main.o $(OUTPATH)init.o $(OUTPATH)interrupt.o  $(OUTPATH)timer.o\
		  $(OUTPATH)kernel.o $(OUTPATH)print.o $(OUTPATH)debug.o $(OUTPATH)string.o\
		$(OUTPATH)memory.o $(OUTPATH)bitmap.o
default:
		$(MAKE) img
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

