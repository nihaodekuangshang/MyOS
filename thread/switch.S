[bits 32]
section .text
global switch_to
switch_to:
	push	esi
	push	edi
	push	ebx
	push	ebp

	mov	eax,[esp + 0x14]
	mov	[eax],esp        ;self_kstack = esp
;----以上是备份当前线程的环境，下面是恢复下一个线程的环境-----
	mov	eax,[esp + 0x18]
	mov	esp,[eax]

	pop	ebp
	pop	ebx
	pop	edi
	pop	esi
	ret
; 返回到第二个线程的代码里
;未由中断进入，第一次执行时会返回到 kernel_thread