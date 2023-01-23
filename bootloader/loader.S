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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;-------------------------------- 已经打开保护模式 ---------------------------------------
    jmp dword SELECTOR_CODE:p_mode_start                       ;刷新流水线
 
 [bits 32]
 p_mode_start: 
    mov ax,SELECTOR_DATA
    mov ds,ax
    mov es,ax
    mov ss,ax
    mov esp,LOADER_STACK_TOP
    
;------------------------------- 加载内核到缓冲区 -------------------------------------------------

	push	200
	push	KERNEL_BIN_BASE_ADDR
	push	KERNEL_BIN_SECTOR
	call	rd_disk_m_32
	add	esp,0xc

;------------------------------- 启动分页 ---------------------------------------------------
    
    call setup_page
    							         ;这里我再把gdtr的格式写一下 0-15位界限 16-47位起始地址
    sgdt [gdt_ptr]                                             ;将gdt寄存器中的指 还是放到gdt_ptr内存中 我们修改相对应的 段描述符
    mov ebx,[gdt_ptr+2]                                        ;32位内存先倒出来 为的就是先把显存区域描述法的值改了 可以点开boot.inc 和 翻翻之前的段描述符
                                                               ;段基址的最高位在高4字节 故
    or dword [ebx+0x18+4],0xc0000000
    add dword [gdt_ptr+2],0xc0000000                            ;gdt起始地址增加 分页机制开启的前奏
    
    add esp,0xc0000000                                         ;栈指针也进入高1GB虚拟内存区
    
    mov eax,PAGE_DIR_TABLE_POS
    mov cr3,eax
    
    mov eax,cr0
    or eax,0x80000000
    mov cr0,eax
    
    lgdt [gdt_ptr]
    

    
    jmp SELECTOR_CODE:enter_kernel
    
;------------------------------ 跳转到内核区    

enter_kernel:
    call kernel_init					          ;根据我们的1M以下的内存分布区 综合考虑出的数据
    mov  esp,0xc009f000
    jmp  KERNEL_ENTER_ADDR

;------------------------------- 创建页表 ------------------------------------------------    

setup_page:	 ;void setup_page(void)
	mov	ecx,0x1000
	mov	eax,PAGE_DIR_TABLE_POS
	mov	esi,0

	.loop_clear_page_dir:
		mov byte [eax + esi],0
		inc esi
		loop .loop_clear_page_dir
	
;创建页目录表的项
	.create_pde:
		mov	eax,PAGE_DIR_TABLE_POS
		add	eax,0x1000 ;第一个页表的物理位置
		mov	ebx,eax    ;为创建页表项做准备
		or	eax,PG_P | PG_RW_W |PG_US_U ;设置属性，未来会在内核空间运行3环代码，故设置PG_US_U

		;设置开始的1MB和系统1GB中开始的1MB映射内核
		mov	[PAGE_DIR_TABLE_POS + 0x0],eax ;最开始的1MB
		mov	[PAGE_DIR_TABLE_POS + 0xc00],eax ;第768项，此项往上都是系统空间 范围：0xc0000000~0xc03fffff 

		;最后一个目录项指向自己
		sub	eax,0x1000
		mov	[PAGE_DIR_TABLE_POS + 0xFFC],eax

	;初始化第一个页表
	mov	eax,PAGE_DIR_TABLE_POS
	add	eax,0x1000
	mov	ecx,0x100
	mov	esi,0
	mov	 edx,PG_P | PG_RW_W | PG_US_U
	.create_kernel_pte:
		mov	[eax+esi*4],edx
		add	edx,0x1000
		inc	esi
		loop .create_kernel_pte
	
	;创建内核其他页目录项
	mov	eax,PAGE_DIR_TABLE_POS
	add	eax,0x2000
	or	eax,PG_P | PG_RW_W | PG_US_U
	mov	ebx,PAGE_DIR_TABLE_POS
	mov	ecx,0xFE ;从第769项到1022项初始化
	mov	esi,0x301
	.create_kernel_pde:
		mov	[ebx+esi*4],eax
		add	eax,0x1000
		inc	esi
		loop .create_kernel_pde
	ret
            
    
;---------------------------内核加载器------------------------------------------------
;将ELF格式的文件加载到内存中
kernel_init:
	xor	eax,eax
	xor	ebx,ebx ;存放程序头表位置
	xor	ecx,ecx ;cx存放程序头的数量
	xor	edx,edx ;dx存放程序头的大小


	mov	ebx,[KERNEL_BIN_BASE_ADDR + 0x1c] ;偏移0x1c处是 e_phoff
	mov	cx,[KERNEL_BIN_BASE_ADDR + 0x2c]  ;偏移0x2c处是 e_phnum
	mov	dx,[KERNEL_BIN_BASE_ADDR + 0x2A]  ;偏移0x2A处是 e_phentsize
	
	add	ebx,KERNEL_BIN_BASE_ADDR	  ;程序头表在内存中的位置

	.load_segment:
		cmp	DWORD [ebx],PT_NULL
		je	.next_segment
		
		push	DWORD [ebx + 0x10];压入该段的大小，偏移0x10处是 p_filesz
		mov	eax,[ebx + 0x4];p_offset   段在文件中的偏移
		add	eax,KERNEL_BIN_BASE_ADDR ;段在内存中存放的位置
		push	eax
		push	DWORD [ebx + 0x8] ;段的加载地址，p_vaddr
		call	mem_cpy
		add	esp,0x0c
		.next_segment:
			add	ebx,edx
			loop	.load_segment
	ret


mem_cpy:   ;void mem_cpy(char* dst,char* src,int size)
	   ;src 源地址	dst目的地址   size 要复制的字节数

	push	ebp
	mov	ebp,esp
	push	ecx
	push	edi
	push	esi

	mov	edi,[ebp + 0x08]
	mov	esi,[ebp + 0x0c]
	mov	ecx,[ebp + 0x10]
	cld
	rep	movsb

	pop	esi
	pop	edi
	pop	ecx
	mov	esp,ebp
	pop	ebp
	ret
;-------------------------读取硬盘----------------------------------
rd_disk_m_32:	;void rd_disk_m_32(int START_SECTOR,int BASE_ADDR,int sector_count)
		;START_SECTOR开始读取的扇区，BASE_ADDR读取到的位置，sector_count读取的扇区总数

		;存储扇区数
		push	ebp
		mov	ebp,esp
		push	eax

		mov		ax,[ebp+0x10]
		mov		dx,0x1f2
		out		dx,al
		;存储24位LBA地址，即扇区号
		mov		eax,[ebp+0x08]
		mov		dx,0x1f3
		out		dx,al ;低8位
		
		mov		dx,0x1f4
		shr		eax,8
		out		dx,al;中8位
		
		mov		dx,0x1f5
		shr		eax,8
		out		dx,al;高8位

		mov		dx,0x1f6
		shr		eax,8
		and		al,0x0f
		or		al,0xe0
		out		dx,al;属性

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
		mov		eax,[ebp+0x10]	 ;求要读多少次，一次读一个字，(扇区数*512/2)
		mov		ebx,256
		mul		ebx
		mov		ecx,eax

		mov		ebx,[ebp+0x0c] ;要把loader加载到的内存地址
		mov		dx,0x1f0
	.go_read_disk:
		in		ax,dx
		mov		[ebx],ax
		add		ebx,2
		loop	.go_read_disk
		pop		eax
		pop		ebp
		ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------bits 16 function-----------------------------------
[bits 16]
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
