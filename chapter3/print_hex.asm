print_hex:
pusha
    mov cx, 4       ; loop 4
    hex_loop:
        mov ax, dx      ; handle in ax
        and ax, 0x000f  
        cmp ax, 0xa     ; 判断ax是否大于10
        jl step       
        add ax, 0x57    ; >= 10
        jmp out1
    step:
        add ax, 0x30    ; < 10
    out1:
        mov bx, HEX_OUT
        add bx, cx
        mov [bx+1], al
        ror dx, 4       ; 不带进位循环右移 
        loop hex_loop
    mov bx, HEX_OUT
    call print_string
popa
ret
HEX_OUT: db '0x0000', 0