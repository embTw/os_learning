mov ah, 0x0e

mov bx, 4
cmp bx, 4
jg a1
    mov al, 'A'
    jmp out
a1:
    cmp bx, 40
    jge a2
    mov al, 'B'
    jmp out
a2:
    mov al, 'C'
out:
int 0x10

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
