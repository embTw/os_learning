[org 0x7c00]
%include "print_string.asm"
mov ah, 0x0e

; print
mov bx, HELLO_MESSAGE
call print_string
mov bx, GOODBYE_MESSAGE
call print_string


jmp $
; string to be printed
HELLO_MESSAGE:
    db "hello, world!", 0dh, 0ah, 0
GOODBYE_MESSAGE:
    db "goodbye, world!", 0dh, 0ah, 0

; fill remaining byte with 0
times 510 - ($ - $$) db 0
dw 0xaa55