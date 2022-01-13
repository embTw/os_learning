[bits 32]
; define some constants
VIDEO_MEMORY equ 0xb8000
WHITE_ON_BLACK equ 0x0f

; 打印函数print_string_pm
; 将ebx所指向字符串写入从0xb8000开始的显存
print_string_pm:
pusha
mov edx, VIDEO_MEMORY   

print_string_pm_loop:
    mov al, [ebx]   ; 读取ebx所指字符到al
    mov ah, WHITE_ON_BLACK  ; 设置字符属性

    cmp al, 0       ; 查看是否到达字符串结尾
    je done

    mov [edx], ax   ; 将两字节字符数据写入显存

    add edx, 2
    add ebx, 1

    jmp print_string_pm_loop ; 循环

done:
    popa
    ret

