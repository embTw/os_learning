[org 0x7c00]
KERNEL_OFFSET equ 0x1000

mov [BOOT_DRIVER], dl

mov bp, 0x9000
mov sp, bp

mov bx, MSG_REAL_MODE
call print_string

call load_kernel

call switch_to_pm

jmp $

%include "../chapter3/print_string.asm"
%include "../chapter3/disk_load.asm"
%include "../chapter4/gdt.asm"
%include "../chapter4/print_string_pm.asm"
%include "../chapter4/switch_to_pm.asm"

[bits 16]
load_kernel:
    mov bx, MSG_LOAD_KERNEL
    call print_string
    mov bx, 1000
    mov dh, 15
    mov dl, [BOOT_DRIVER]
    call disk_load
    ret

[bits 32]
; 切换到保护模式后的开始
BEGIN_PM:
    mov ebx, MSG_PROT_MODE
    call print_string_pm
    call KERNEL_OFFSET

    jmp $

BOOT_DRIVER     db 0
MSG_REAL_MODE db "Started in 16-bit Real Mode", 0
MSG_PROT_MODE db "Successfully landed in 32-bit Protected Mode", 0
MSG_LOAD_KERNEL db "Loading kernel into memory.", 0

times 510 - ($ - $$) db 0
dw 0xaa55