[org 0x7c00]
; 也可以用这个代替，但要注意不是0x7c00，因为段基址寄存器的值在计算时要×16
; mov bx, 0x7c0
; mov ds, bx
mov ah, 0x0e

; print
mov bx, HELLO_MESSAGE
call print_string
mov bx, GOODBYE_MESSAGE
call print_string


jmp $
%include "print_string.asm"
; string to be printed
HELLO_MESSAGE:
    db "hello, world!", 0dh, 0ah, 0
GOODBYE_MESSAGE:
    db "goodbye, world!", 0dh, 0ah, 0

; fill remaining byte with 0
times 510 - ($ - $$) db 0
dw 0xaa55