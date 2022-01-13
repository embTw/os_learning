gdt_start:

gdt_null:
    dd 0x0
    dd 0x0

gdt_code:   ; 代码段描述符
    dw 0xffff   ; Limit(bits 0-15)
    dw 0x0      ; base (bits 0-15)
    db 0x0      ; base (bits 16-23)
    db 10011010b    ; 1st flags, type flags
    db 11001111b    ; 2nd flags, Limit (bits 16-19)
    db 0x0      ; base (bits 24-31)

gdt_data: ; 数据段描述符
    dw 0xffff   ; Limit(bits 0-15)
    dw 0x0      ; base (bits 0-15)
    db 0x0      ; base (bits 16-23)
    db 10010010b    ; 1st flags, type flags
    db 11001111b    ; 2nd flags, Limit (bits 16-19)
    db 0x0      ; base (bits 24-31) 

gdt_end:
; GDT描述符
gdt_descriptor:
    dw gdt_end - gdt_start - 1

    dd gdt_start

CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start