[bits 16]
switch_to_pm:

    cli         ; 关中断
    lgdt [gdt_descriptor]   ; 加载全局描述符表gdt

    mov eax, cr0        ; 为了切换到保护模式，将cro的第一位设置为1
    or eax, 0x1
    mov cr0, eax

    jmp CODE_SEG:init_pm

[bits 32]
init_pm:
    mov ax, DATA_SEG
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov ebp, 0x90000 
    mov esp, ebp

    call BEGIN_PM