[bits 32]
%define ERROR_CODE nop		 ; 若在相关的异常中cpu已经自动压入了错误码,为保持栈中格式统一,这里不做操作.
%define ZERO push 0		 ; 若在相关的异常中cpu没有压入错误码,为了统一栈中格式,就手工压入一个0

extern put_str;
extern idt_table;

section .data
global intr_entry_table
intr_entry_table:

%MACRO VECTOR  2

section .text
intr%1entry:
%2
	push    ds
	push    es
	push    fs
	push    gs
	pushad	   ;保存环境


  ; 如果是从片上进入的中断,除了往从片上发送EOI外,还要往主片上发送EOI 
	mov     al,0x20		      ; 中断结束命令EOI
	out     0xa0,al		      ; 向从片发送
	out     0x20,al		      ; 向主片发送

	push %1    ; 不管idt_table中的目标程序是否需要参数,都一律压入中断向量号,方便调试
	mov	eax,[idt_table + %1*4]
	call [eax]	 ; 调用idt_table中的C版本中断处理函数
	add	    esp,4
	jmp intr_exit

section  .data
	dd  intr%1entry		     ;存储各个中断入口程序的地址
				     ;形成 intr_entry_table 数组

%endmacro

section .text
intr_exit:
	popad
	pop     gs
	pop     fs
	pop     es
	pop     ds
	add     esp,4      ;跳过错误号
	iret





VECTOR 0x0 ,ZERO
VECTOR 0X1 ,ZERO
VECTOR 0X2 ,ZERO
VECTOR 0x3 ,ZERO
VECTOR 0X4 ,ZERO
VECTOR 0X5 ,ZERO
VECTOR 0x6 ,ZERO
VECTOR 0X7 ,ZERO
VECTOR 0X8 ,ERROR_CODE
VECTOR 0x9 ,ZERO
VECTOR 0XA ,ERROR_CODE
VECTOR 0XB ,ERROR_CODE
VECTOR 0XC ,ERROR_CODE
VECTOR 0XD ,ERROR_CODE
VECTOR 0XE ,ERROR_CODE
VECTOR 0XF ,ZERO
VECTOR 0X10 ,ZERO
VECTOR 0X11 ,ERROR_CODE
VECTOR 0x12 ,ZERO
VECTOR 0X13 ,ZERO
VECTOR 0X14 ,ZERO
VECTOR 0x15 ,ZERO
VECTOR 0X16 ,ZERO
VECTOR 0X17 ,ZERO
VECTOR 0X18 ,ZERO
VECTOR 0X19 ,ZERO
VECTOR 0X1A ,ZERO
VECTOR 0X1B ,ZERO
VECTOR 0X1C ,ZERO
VECTOR 0X1D ,ZERO
VECTOR 0X1E ,ERROR_CODE				      ;处理器自动推错误码
VECTOR 0X1F ,ZERO
VECTOR 0X20 ,ZERO
