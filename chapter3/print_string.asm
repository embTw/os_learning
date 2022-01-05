print_string:
pusha
mov ah, 0x0e

; if(al ! = 0) int 0x10, inc bx
; else jmp end
start:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp start
end:
popa
ret