set VAR=test
nasm -f bin .\%VAR%.asm -o %VAR%
qemu-system-x86_64 .\%VAR%