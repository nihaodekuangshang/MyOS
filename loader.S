%include "boot.inc"
SECTION MBR vstart=LOADER_BASE_ADDR
LOADER_STACK_TOP equ LOADER_BASE_ADDR
	jmp	loader_start
;构建gdt表
GDT_BASE:   dd 0x00000000
	    dd 0x00000000

CODE_DESC:  dd 0X0000FFFF
	    dd DESC_CODE_HIGH4
DATA_STACK_DESC:    dd 0x0000ffff
		    dd DESC_DATA_HIGH4
VIDEO_DESC: dd 0x80000007
	    dd DESC_VIDEO_HIGH4
GDT_SIZE equ $-GDT_BASE
GDT_LIMIT equ GDT_SIZE-1

times 60 dq 0

;存储获取到的内存数量
total_mem_bytes: dd 0

SELECTOR_CODE equ (0X1<<3) + TI_GDT + RPL0 ;1左移三位为0x1000，加上占4位的属性
SELECTOR_DATA equ (0x2<<3) + TI_GDT + RPL0
SELECTOR_VIDEO equ (0x3<<3) + TI_GDT + RPL0

gdt_ptr:    dw GDT_LIMIT
	    dd GDT_BASE
idt_ptr:    dw 0
	    dd 0
	    
ards_buf    times 244 db 0 ;存放读取到ards的位置
ards_nr     dw 0 ;读取的ards的数量

loader_start:
	mov sp,LOADER_BASE_ADDR

;read cursor,save 0x500
	xor	bx,bx
	mov	ah,0x03
	int	0x10
	mov	[CURSOR_ADDR],dx

;Get memory size save 0x502
	call	get_mem
	mov	ebx,[eax]
	mov	[MEM_SIZE_ADDR],ebx

; Get video-card data:
	xor	ax,ax
	xor	bx,bx
	mov	ah,0x0f
	int	0x10
	mov	[DIS_PAGE],bx	      ; bh = display page
	mov	[VIDEO_MODE],al		 ; al = video mode, ah = window width
	mov	[WINDOW_WIDTH],ah

; check for EGA/VGA and some config parameters

	xor	ax,ax
	xor	bx,bx
	xor	cx,cx
	mov	ah,0x12
	mov	bl,0x10
	int	0x10
	;mov	 [WINDEO_WIDTH + 1],ax	;??
	mov	[VIDEO_MEM],bl
	mov	[DIS_STATUS],bh
	mov	[GCARD_CHR],cx	   ;Grephic card characteristics

;Get hd0 data

	xor	ax,ax
	mov	ds,ax
	mov	es,ax
	mov	si,[4*0x41]	;interrupt vector 0x41 stores the address of the data on the hd
	mov	di,HD0_DATA
	mov	cx,0x10
	cld
	rep	movsb

;check whether hd1 exists
	mov	ah,0x15
	mov	dl,0x81
	int 0x13
	jc	.no_hd1
	cmp	ah,3
	je	.is_hd1

.no_hd1:
	xor	ax,ax
	mov	di,HD1_DATA
	mov	cx,0x10
	cld
	rep	stosb
	jmp	.start_protect
.is_hd1:
	xor	ax,ax
	mov	ds,ax
	mov	es,ax
	mov	si,[4*0x46]	;interrupt vector 0x46 stores the address of the data on the hd1
	mov	di,HD1_DATA
	mov	cx,0x10
	cld
	rep	movsb

.start_protect:
	cli
	lidt	[idt_ptr]
	lgdt	[gdt_ptr]
	call	empty_8042 ;wait for the input buffer to the empty
	mov	al,0xD1   ;command write  ;0xD1 write p2 post
	out	0x64,al  
	call	empty_8042 ;wait until the input buffer is empty to see if the aommad accepted
	mov	al,0xDF    ;A20 on  ; 1 bit is A20
	call	empty_8042 ;if the input buffer is empty, A20 is on


	mov	eax,cr0
	or	eax,0x001   ;protected mode bit on
	mov	cr0,eax

.fin:
	hlt
	jmp	.fin
;----------------------------------------------function-----------------------------------
get_mem:	  ;uint32_t* get_mem()
		  ;return ax
.get_mem_e820_loop:
	mov	eax,0xe820
	mov	ecx,20 ;大小

	int	0x15
	jc	.e820_error_try_e801
	add	di,cx
	inc	word [ards_nr] ;ards数量增加

	cmp ebx, 0
	jnz	.get_mem_e820_loop
	
	mov	edx,0
	mov	ebp,ards_buf
	mov	cx,[ards_nr]
.find_max_mem_area:
	mov	eax,[ebp] ;基址
	add	eax,[ebp+0x8] ;大小
	add	ebp,20
	cmp	edx,eax
	jge	.next_mem_area
	mov	edx,eax

    .next_mem_area:
	loop	 .find_max_mem_area
	push	 edx
	call	 .mem_get_ok
	add	 esp,4
	mov	 ax,total_mem_bytes
	ret


.e820_error_try_e801:
	mov	ax,0xe801
	int	0x15
	jc	.e801_error_try_0x88

	;将15MB以下的转换成字节
	mov	cx,0x400
	mul	cx
	and	eax,0x0000ffff 
	shl	edx,16	     
	or	edx,eax       
	mov	esi,edx

	;将16MB以上的转化成字节
	xor	eax,eax
	mov	bx,ax
	mov	ecx,0x10000
	mul	ecx
	mov	edx,esi  
	add	edx,eax
	push	edx
	call	.mem_get_ok
	add	esp,4
	mov	 ax,total_mem_bytes
	ret

.e801_error_try_0x88:
	mov	ah,0x88
	int	0x15
	jc	.error_hlt

	mov	cx,0x400
	mul	cx
	and	eax,0x0000ffff 
	shl	edx,16	       
	or	edx,eax        
	push	edx
	call	.mem_get_ok
	add	esp,4
	mov	 ax,total_mem_bytes
	ret
.error_hlt:	;void  .error_hlt(void)
	hlt
	jmp .error_hlt
.mem_get_ok:	;void .mem_get_ok(DWORD TotalBytes)
	push    ebp
	mov     ebp,esp
	push    eax
	mov     eax,[ebp+6]
	mov     [total_mem_bytes],eax
	pop     eax
	mov     esp,ebp
	pop     ebp
	ret
empty_8042:           ;void empty_8042();
	dw 0x00eb,0x00eb
	in	al,0x64
	test	al,2
	jnz	empty_8042
	ret
