set VAR=switch_to_32
nasm -f bin .\%VAR%.asm -o ..\bin\%VAR%
qemu-system-x86_64 ..\bin\%VAR% 