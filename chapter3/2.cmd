set VAR=readdisk
set VAR1=disboot
ndisasm -o 0x7C00 ..\bin\%VAR% > %VAR1%.asm