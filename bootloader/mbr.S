%include "boot.inc"

SECTION MBR vstart=0x7c00



main:
	mov ax,cs
	mov ds,ax
	mov es,ax
	mov ss,ax
	mov fs,ax
	mov ax,0xb800
	mov gs,ax
	mov sp,0x07c00
	
CleanScreen:
		mov 	ax,0x0600;
		mov		bx,0x0700
		mov		cx,0
		mov		dx,0x184f
		int		0x10
		mov		bx,Message
		mov		si,0

	push	Message
	push	0x07
	push	80
	push	0
	push	0
	call	prints
	add		sp,0x0a
	

	push	4		;待读入的扇区数
	push	LOADER_BASE_ADDR
	push	DWORD LOADER_START_SECTOR
	call	rd_disk_m_16
	add	sp,4
	jmp	LOADER_BASE_ADDR  ;控制权交给loader程序
	
prints:;void prints(short x,short y,short xsize,short color,char *string)
	push	bp
	mov		bp,sp
	sub		sp,0x40
	push	ax
	push	bx
	push	dx
	

	;判断坐标是否在范围内
	mov ax,[bp+0x4]
	cmp ax,80
	jae endprints

	mov ax,[bp+0x6]
	cmp ax,25
	jae endprints

	mov ax,0xb800
	mov gs,ax
	;计算出该坐标在显存中对应的区域
	mov		bx,[bp+6]
	mov		ax,[bp+0x8]
	mul		bx
	add		ax,[bp+0x4]
	mov		bx,2
	mul		bx
		
	mov		dh,[bp+0x0a]
	mov		bx,[bp+0x0c]
	mov		bp,ax       ;将算出的像素位置存到bp中
	ploop:
		mov		dl,[bx]
		cmp		dl,0
		je		endprints
		mov		byte [gs:bp],dl
		mov		byte [gs:bp+1],dh
		add		bp,2
		add		bx,1

		jmp		ploop
		
	endprints:
		pop		dx
		pop		bx
		pop		ax
		add		sp,0x040
		pop		bp
		ret
rd_disk_m_16: ;void rd_disk_m_16(int LOADER_START_SECTOR,short LOADER_BASE_ADDR,short sector_count)
		;存储扇区数
		push	bp
		mov		bp,sp
		push	eax

		mov		ax,[bp+0x0a]
		mov		dx,0x1f2
		out		dx,al
		;存储LBA地址，即扇区号
		mov		eax,[bp+0x04]
		mov		dx,0x1f3
		out		dx,al
		
		mov		dx,0x1f4
		shr		eax,8
		out		dx,al
		
		mov		dx,0x1f5
		shr		eax,8
		out		dx,al

		mov		dx,0x1f6
		shr		eax,8
		and		al,0x0f
		or		al,0xe0
		out		dx,al

	;传输读取数据命令
		mov		dx,0x1f7
		mov		al,0x20
		out		dx,al
	;检测硬盘状态
	.not_ready:
		nop
		in		al,dx
		and		al,0x88  ;第4位为1表示未准备好
					      ;第七位为1表示硬盘忙
		cmp		al,0x08
		jnz		.not_ready
	;从0x1f0读数据
		mov		ax,[bp+0x0a]   ;求要读多少次，一次读一个字，(扇区数*512/2)
		mov		bx,256
		mul		bx
		mov		cx,ax

		mov		bx,[bp+0x8] ;要把loader加载到的内存地址
		mov		dx,0x1f0
	.go_read_disk:
		in		ax,dx
		mov		[bx],ax
		add		bx,2
		loop	.go_read_disk
		pop		eax
		pop		bp
		ret

fin:	;void fin(void)
	hlt
	jmp fin

Message:
	db	"loading system..."
	db	0x00
endMessage:
	times 510-($-$$) db 0
	db 0x55
	db 0xaa
	
