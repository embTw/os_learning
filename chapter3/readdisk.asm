[org 0x7c00]

mov [BOOT_DRIVER], dl   ; remember dl for later

; set stack out of the way
mov bp, 0x8000
mov sp, bp

mov bx, 0x9000
mov dh, 1
mov dl, [BOOT_DRIVER]
call disk_load

mov dx, [0x9000]
call print_hex

jmp $


%include "print_string.asm"
%include "print_hex.asm"
%include "disk_load.asm"

BOOT_DRIVER:
    db 0

times 510 - ($ - $$) db 0
dw 0xaa55
times 256 dw 0xdada
times 256 dw 0xface