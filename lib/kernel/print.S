RPL0    equ 00b
TI_GDT  equ 000b
SELECTOR_VIDEO       equ (0X0003<<3) + TI_GDT + RPL0 
SELECTOR_DATA	  equ (0X0002<<3) + TI_GDT + RPL0
[bits 32]
section .data
        put_int_buffer dq 0x0
section .text
global put_char

put_char:       ;void put_char(uint8_t char_asci);
        push    ebp
        mov     ebp,esp
        pushad               ;所有通用寄存器入栈
        mov     ax,SELECTOR_VIDEO
        mov     gs,ax         ;重新赋值gs，防止请求的是用户进程，(RPL)权限不足
;;;;;;;;获取当前光标位置;;;;;;;;;;;
        ;先获取高8位
        mov     dx,0x3D4   ;CRT寄存器索引
        mov     al,0x0e    ;提供光标位置的高8位，这里用al 不用ax 是因为 此处索引寄存器是一个8字节的寄存器
        out     dx,al      
        mov     dx,0x03d5  ;通过读写数据端口来得到或设置光标位置
        in      al,dx      ;得到光标位置的高8位
        shl     ax,0x8     ;将高8位存到ah上
        ;获取低8位
        mov     dx,0x3d4
        mov     al,0x0f    ;提供光标位置的高8位
        out     dx,al
        mov     dx,0x03d5
        in      al,dx

        mov    bx,ax      ;将光标位置存到bx里
        mov     eax,[ebp + 0x08]

        ;判断是否是特殊字符
        cmp     al,0xd      ;CR  回车符
        jz      .is_carriage_return 
        cmp     al,0xa      ;LF  换行符
        je      .is_line_feed 
        cmp     al,0x8      ;BS  退格键
        je      .is_backspace 
        jmp     .put_other


.is_backspace:
        cmp     bx,0x0      ;光标在最开始的位置
        je      .set_cursor

        dec     bx          ;光标前移1位
        shl     bx,1          ;左移1位，等于乘2，求光标在显存的偏移量

        mov     byte [gs:bx],0x20 ;将待删除的字符转为空
        mov     byte [gs:bx + 1],0x07
        shr     bx,1          ;恢复成光标位置

        jmp     .set_cursor ;处理完成，将光标位置读入端口

.put_other:

        shl     bx,1          ;左移1位，等于乘2，求光标在显存的偏移量

        mov     byte [gs:bx],al ;写入字符
        mov     byte [gs:bx + 1],0x07
        shr     bx,1         ;恢复成光标位置
        inc     bx          ;光标后移1位

        cmp     bx,2000
        jl      .set_cursor ;如果光标未超出显存大小，读入光标位置，超出滚屏
        jmp     .flash_screen
.is_carriage_return:


        xor     dx,dx
        mov     ax,bx
        mov     cx,80    ;bx为16位寄存器，故用cx作为除数
        div     cx
        sub     bx,dx    ;减去余数，即光标的横坐标    光标回到一行的开头
        jmp     .set_cursor

.is_line_feed:
        xor     dx,dx
        mov     ax,bx
        mov     cx,80    ;bx为16位寄存器，故用cx作为除数
        div     cx
        sub     bx,dx    ;减去余数，即光标的横坐标    光标回到一行的开头


        ;光标加80，到达下一行
        add     bx,80
        cmp     bx,2000
.is_line_feed_end:
        jl      .set_cursor ;如果光标未超出显存大小，读入光标位置，超出滚屏
.flash_screen:      ;滚屏
       

        mov     edi,0xc00b8000
        mov     esi,0xc00b80a0
        ;将1~24的行的内容复制到0~23行
        mov     ecx,0x0f00
        cld
        rep     movsb


         ;  最后一行清0       
        mov     ebx,0x0f00  ;最后一行的偏移
        mov     ecx,80
        mov     esi,0
        .clean_last_row:   
            mov     word [0xc00b8000+ebx+esi*2],0x0720 ;空格   黑底白字
            inc     esi
            loop .clean_last_row

        mov     ebx,0x780   ;将光标移到最后一行的开始

.set_cursor:
        ;传输光标的高8位
        mov     dx,0x3d4
        mov     al,0x0e
        out     dx,al
        mov     dx,0x3d5
        mov     al,bh
        out     dx,al
        ;传输低8位
        mov     dx,0x3d4
        mov     al,0x0f
        out     dx,al
        mov     dx,0x3d5
        mov     al,bl
        out     dx,al

.put_char_end:
        popad
        mov     esp,ebp
        pop     ebp
        ret

global put_str
put_str:   ;void put_str(int8_t* string)
        push    ebp
        mov     ebp,esp
        pushad               ;所有通用寄存器入栈
        mov     esi,[ebp+0x8]
        xor     eax,eax
        .goon:
                mov     al,[esi]
                cmp     al,0
                jz      .str_end
                push    eax
                call    put_char
                add     esp,4
                inc     esi
                jmp     .goon
        .str_end:
                popad
                mov     esp,ebp
                pop     ebp
                ret

global put_int
put_int:        ;void put_int(uint32_t num)
                ;以16进制形式输出
        push    ebp
        mov     ebp,esp
        pushad               ;所有通用寄存器入栈
        mov     eax,[ebp +0x8]
        mov     edx,eax
        mov     edi,7             ;缓冲区偏移
        mov     ecx,8
        mov     ebx,put_int_buffer ;缓冲区地址
        .int_print:
                and     edx,0xf
                cmp     dl,0xa
                jge     .is_A2F    ;大于0xa，跳转到专门的处理程序
                add     edx,'0'
                jmp     .store
        .is_A2F:
                sub     edx,0xa
                add     edx,'A'
        .store:
                mov     [ebx + edi],dl
                dec     edi
                shr     eax,4
                mov     edx,eax
                loop    .int_print

        inc     edi      ;减1使edi为0
        .skip_prefix_zero:
                cmp     edi,9      ;若全部是0，跳转到专门的处理程序，否则，继续处理
                jge     .full_zero
        ;判断是否全部是0
        .go_on_skip:
                mov     al,[ebx + edi]
                inc     edi
                cmp     al,'0'      ;判断当前字符是否为0
                je      .skip_prefix_zero
                dec     edi        ;使edi重新指向当前不为0的字符
                jmp     .put_num   ;不为0，跳转到输出程序
        .full_zero:
                mov     cl,'0'
        .put_num:
                push    eax
                call    put_char
                add     esp,0x04
                cmp     edi,7
                jge     .int_end
                inc     edi
                mov     al,[ebx+edi]
                jmp     .put_num
        .int_end:
                popad
                mov     esp,ebp
                pop     ebp
                ret
