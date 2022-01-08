set VAR=readdisk
nasm -f bin .\%VAR%.asm -o ..\bin\%VAR%
qemu-system-x86_64 ..\bin\%VAR% 