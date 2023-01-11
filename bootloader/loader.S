%include "boot.inc"
SECTION MBR vstart=LOADER_BASE_ADDR
LOADER_STACK_TOP equ LOADER_BASE_ADDR
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
            
ards_buf    times 244 db 0 ;存放读取到ards的位置
ards_nr     dw 0 ;读取的ards的数量

loader_start:

    mov sp,LOADER_BASE_ADDR					;初始化栈
        ;只需初始化一次的输入参数
        xor     ebx,ebx
        mov     di,ards_buf
        mov     edx,0x534d4150

.e820_mem_get_loop:
        ;每次都要初始化
        mov     eax,0xe820
        mov     ecx,20 ;大小

        int     0x15
        jc      .e820_error_try_e801
        add     di,cx
        inc     word [ards_nr] ;ards数量增加

        cmp ebx, 0
; 若 ebx 为 0 旦 cf 不为 1 ，这说明 ards 全部返回
        jnz     .e820_mem_get_loop
        
        ;查找最大内存的准备
        mov     edx,0
        mov     ebp,ards_buf
        mov     cx,[ards_nr]
.find_max_mem_area:
        mov     eax,[ebp] ;基址
        add     eax,[ebp+0x8] ;大小
        add     ebp,20
        cmp     edx,eax
        jge     .next_mem_area
        mov     edx,eax

    .next_mem_area:
        loop     .find_max_mem_area
        push     edx
        call     .mem_get_ok
        add      esp,4
        jmp     loader_start_main



.e820_error_try_e801:
        mov     ax,0xe801
        int     0x15
        jc      .e801_error_try_0x88

        ;将15MB以下的转换成字节
        mov     cx,0x400
        mul     cx
        and     eax,0x0000ffff ;eax高位置0，乘积低位在ax里，高位在dx里
        shl     edx,16         ;将高位乘积移到edx高位里
        or      edx,eax        ;将低位乘积移到edx里
        mov     esi,edx

        ;将16MB以上的转化成字节
        xor     eax,eax
        mov     bx,ax
        mov     ecx,0x10000
        mul     ecx
        mov     edx,esi  ;高32位为0 因为低32位即有4GB 故只用加eax
        add     edx,eax
        push    edx
        call    .mem_get_ok
        add     esp,4
        jmp     loader_start_main

.e801_error_try_0x88:
        mov     ah,0x88
        int     0x15
        jc      .error_hlt

        mov     cx,0x400
        mul     cx
        and     eax,0x0000ffff ;eax高位置0，乘积低位在ax里，高位在dx里
        shl     edx,16         ;将高位乘积移到edx高位里
        or      edx,eax        ;将低位乘积移到edx里
        push    edx
        call    .mem_get_ok
        add     esp,4
        jmp     loader_start_main
.error_hlt:     ;void  .error_hlt(void)
        hlt
        jmp .error_hlt
.mem_get_ok:    ;void .mem_get_ok(DWORD TotalBytes)
            push    ebp
            mov     ebp,esp
            push    eax
            mov     eax,[ebp+6]
            mov     [total_mem_bytes],eax
            pop     eax
            mov     esp,ebp
            pop     ebp
            ret

loader_start_main:
;----------------------准备进入保护模式-------------------------------
; 1 打开 A20
;2 加载 gdt
; 3 将 cr0的 pe 位置 1
        in      al,0x92
        or      al,0000_0010b
        out     0x92,al


        lgdt    [gdt_ptr]

      
        mov     eax,cr0
        or      eax,0x00000001
        mov     cr0,eax


        jmp     DWORD SELECTOR_CODE:p_mode_start ;刷新流水线，更新段描述缓存寄存器，防止按照16位方式去译码32位指令
;---------------------------------32位代码区-------------------------------------------------
[bits 32]
p_mode_start:


mov ax, SELECTOR_DATA
mov ds, ax
mov es, ax
mov ss, ax
mov esp, LOADER_STACK_TOP

;------------------------加载内核文件-------------------------------------
        push    200
        push    KERNEL_BIN_BASE_ADDR
        push    KERNEL_BIN_SECTOR
        call    rd_disk_m_32
        add     esp,0xc


;-----------------------------分页--------------------------------------------
  ;调用函数创建页目录表
        call    setup_page
        ;显存地址和GDT表基址都要改成虚拟地址
        sgdt    [gdt_ptr] ;将GDT表的地址和偏移量再放到gdt_ptr中
        mov     ebx,[gdt_ptr + 0x2] ;将基址存到ebx中
        or     DWORD [ebx+0x18 + 0x4],0xc0000000 ;修改视频段的基址为虚拟地址，视频段为第3段
        add     DWORD [gdt_ptr + 0x2],0xc0000000 ;修改GDT表基址
        ;修改栈地址，同样在内核中
        add     esp,0xc0000000

        ;将页目录表地址付给cr3
        mov     eax,PAGE_DIR_TABLE_POS
        mov     cr3,eax
        
        ;打开cr0的pg位
        mov     eax,cr0
        or      eax,0x80000000
        mov     cr0,eax

        ;重新加载GDT表
        lgdt    [gdt_ptr]
    

;--------------------------------------加载内核-----------------------------------------------------
        jmp     SELECTOR_CODE:enter_kernel ;重新加载GDT表，刷新流水线
enter_kernel:
        call    kernel_init
        mov     esp,0x9f00 ;更换栈，接近最大可用地址0x9FBFF且以4KB对齐(PCB)
        jmp     0x1500
        



        call    kernel_init
        mov     esp,0xc009f00 ;更换栈，接近最大可用地址0x9FBFF且以4KB对齐(PCB)
        jmp     KERNEL_ENTER_ADDR





;------------------------------------开启页表----------------------------------------------------
setup_page:      ;void setup_page(void)
        mov     ecx,0x1000
        mov     eax,PAGE_DIR_TABLE_POS
        mov     esi,0

        .loop_clear_page_dir:
                mov byte [eax + esi],0
                inc esi
                loop .loop_clear_page_dir
        
;创建页目录表的项
        .create_pde:
                mov     eax,PAGE_DIR_TABLE_POS
                add     eax,0x1000 ;第一个页表的物理位置
                mov     ebx,eax    ;为创建页表项做准备
                or      eax,PG_P | PG_RW_W |PG_US_U ;设置属性，未来会在内核空间运行3环代码，故设置PG_US_U

                ;设置开始的1MB和系统1GB中开始的1MB映射内核
                mov     [PAGE_DIR_TABLE_POS + 0x0],eax ;最开始的1MB
                mov     [PAGE_DIR_TABLE_POS + 0xc00],eax ;第768项，此项往上都是系统空间 范围：0xc0000000~0xc03fffff 

                ;最后一个目录项指向自己
                sub     eax,0x1000
                mov     [PAGE_DIR_TABLE_POS + 0xFFC],eax

        ;初始化第一个页表
        mov     eax,PAGE_DIR_TABLE_POS
        add     eax,0x1000
        mov     ecx,0x100
        mov     esi,0
        mov      edx,PG_P | PG_RW_W | PG_US_U
        .create_kernel_pte:
                mov     [eax+esi*4],edx
                add     edx,0x1000
                inc     esi
                loop .create_kernel_pte
        
        ;创建内核其他页目录项
        mov     eax,PAGE_DIR_TABLE_POS
        add     eax,0x2000
        or      eax,PG_P | PG_RW_W | PG_US_U
        mov     ebx,PAGE_DIR_TABLE_POS
        mov     ecx,0xFE ;从第769项到1022项初始化
        mov     esi,0x301
        .create_kernel_pde:
                mov     [ebx+esi*4],eax
                add     eax,0x1000
                inc     esi
                loop .create_kernel_pde
        ret
;-------------------------读取硬盘----------------------------------
rd_disk_m_32:   ;void rd_disk_m_32(int START_SECTOR,int BASE_ADDR,int sector_count)
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
		mov             dx,0x1f7
		mov             al,0x20
		out             dx,al
	;检测硬盘状态
	.not_ready:
		nop
		in              al,dx
		and             al,0x88  ;第4位为1表示未准备好
                                              ;第七位为1表示硬盘忙
		cmp		al,0x08
		jnz		.not_ready
	;从0x1f0读数据
		mov		eax,[ebp+0x10]   ;求要读多少次，一次读一个字，(扇区数*512/2)
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;实验加载器;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
kernel_init_demo:
    xor eax,eax   ;全部清零
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx
    
    ;这里稍微解释一下 因为0x70000 为64kb*7=448kb 而我们的内核映射区域是4MB 而在虚拟地址4MB以内的都可以当作1:1映射
    mov ebx,[KERNEL_BIN_BASE_ADDR+28]
    add ebx,KERNEL_BIN_BASE_ADDR                               ;ebx当前位置为程序段表
    mov dx,[KERNEL_BIN_BASE_ADDR+42]		         ;获取程序段表每个条目描述符字节大小
    mov cx,[KERNEL_BIN_BASE_ADDR+44]                         ;一共有几个段
    
     
 .get_each_segment:
    cmp dword [ebx+0],PT_NULL
    je .PTNULL                                                 ;空即跳转即可 不进行mem_cpy
    
    mov eax,[ebx+8]
    cmp eax,0xc0001500
    jb .PTNULL
    
        
    push dword [ebx+16]                                        ;ebx+16在存储的数是filesz  可以翻到Loader刚开始
                                                               
    mov eax,[ebx+4]                                            
    add eax,KERNEL_BIN_BASE_ADDR
    push eax                                                   ;p_offset 在文件中的偏移位置    源位置         
    push dword [ebx+8]                                         ;目标位置
     
    call mem_cpy_demo
    add esp,12                                                 ;把三个参数把栈扔出去 等于恢复栈指针
    
 .PTNULL:
    add  ebx,edx                                               ;edx是一个描述符字节大小
    loop .get_each_segment                                     ;继续进行外层循环    
    ret
                                        
mem_cpy_demo:
    cld                                                        ;向高地址自动加数字 cld std 向低地址自动移动
    push ebp                                                   ;保存ebp 因为访问的时候通过ebp 良好的编程习惯保存相关寄存器
    mov  ebp,esp 
    push ecx                                                   ;外层循环还要用 必须保存 外层eax存储着还有几个段
    
                                                               ;分析一下为什么是 8 因为进入的时候又重新push了ebp 所以相对应的都需要+4
                                                               ;并且进入函数时 还Push了函数返回地址 所以就那么多了
    mov edi,[ebp+8]                                            ;目的指针 edi存储的是目的位置 4+4
    mov esi,[ebp+12]                                           ;源指针   源位置             8+4
    mov ecx,[ebp+16]                                           ;与Movsb好兄弟 互相搭配      12+4
    
    
    rep movsb                                                  ;一个一个字节复制
       
    pop ecx 
    pop ebp
    ret
;---------------------------内核加载器------------------------------------------------
;将ELF格式的文件加载到内存中
kernel_init:
        xor     eax,eax
        xor     ebx,ebx ;存放程序头表位置
        xor     ecx,ecx ;cx存放程序头的数量
        xor     edx,edx ;dx存放程序头的大小


        mov     ebx,[KERNEL_BIN_BASE_ADDR + 0x1c] ;偏移0x1c处是 e_phoff
        mov     cx,[KERNEL_BIN_BASE_ADDR + 0x2c]  ;偏移0x2c处是 e_phnum
        mov     dx,[KERNEL_BIN_BASE_ADDR + 0x2A]  ;偏移0x2A处是 e_phentsize
        
        add     ebx,KERNEL_BIN_BASE_ADDR          ;程序头表在内存中的位置

        .load_segment:
                cmp     DWORD [ebx],PT_NULL
                je      .next_segment
                
                push    DWORD [ebx + 0x10];压入该段的大小，偏移0x10处是 p_filesz
                mov     eax,[ebx + 0x4];p_offset   段在文件中的偏移
                add     eax,KERNEL_BIN_BASE_ADDR ;段在内存中存放的位置
                push    eax
                push    DWORD [ebx + 0x8] ;段的加载地址，p_vaddr
                call    mem_cpy
                add     esp,0x0c
                .next_segment:
                        add     ebx,edx
                        loop    .load_segment
        ret


mem_cpy:   ;void mem_cpy(char* dst,char* src,int size)
           ;src 源地址  dst目的地址   size 要复制的字节数

        push    ebp
        mov     ebp,esp
        push    ecx
        push    edi
        push    esi

        mov     edi,[ebp + 0x08]
        mov     esi,[ebp + 0x0c]
        mov     ecx,[ebp + 0x10]
        cld
        rep     movsb

        pop     esi
        pop     edi
        pop     ecx
        mov     esp,ebp
        pop     ebp
        ret
