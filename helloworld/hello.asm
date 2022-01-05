the_secret:
    ; ASCII code 0x58 ('X') is stored just before the zero-padding.
    ; On this code that is at byte 0x2d (check it out using 'xxd file.bin')
    db "Hello"
mov ah, 0x0e

; attempt 1
; Fails because it tries to print the memory address (i.e. pointer)
; not its actual contents
mov al, [the_secret+0x7c00]
int 0x10
mov al, [the_secret+0x7c00+1]
int 0x10
mov al, [the_secret+0x7c00+2]
int 0x10
mov al, [the_secret+0x7c00+3]
int 0x10
mov al, [the_secret+0x7c00+4]
int 0x10



jmp $ ; infinite loop



; zero padding and magic bios number
times 510-($-$$) db 0
dw 0xaa55