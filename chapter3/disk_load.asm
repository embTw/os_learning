disk_load:
pusha
push dx
; read sector
mov ah, 0x02 ; BIOS read sector function

; mov dl, 0   ; read drive 0
; mov ch, 3   ; select cylinder 3
; mov dh, 1   ; select 2nd side of floppy
; mov cl, 4   ; select the 4th sector 
; mov al, 5   ; read 5 sectors
mov ah, 0x02
mov al, dh
mov ch, 0x00
mov dh, 0x00
mov cl, 0x02

; set address which we'd like BIOS to read the sectors to, [0xa000 : 0x1234] = 0xa1234
; mov bx, 0xa000
; mov es, bx
; mov bx, 0x1234
; issue the BIOS interrupt
int 0x13


jc disk_error   ; jump if the carry flag(CF) was set, which signal a general fault

pop dx
cmp dh, al       
jne disk_error  ; jump if the number of sectors which has been readed is not equal to 5

popa
ret

disk_error:
    mov bx, DISK_ERROR_MSG
    call print_string
    jmp $

; global variables
DISK_ERROR_MSG: 
    db "Disk read error!", 0x0e, 0x0a, 0
