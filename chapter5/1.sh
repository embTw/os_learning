gcc -fno-pie -m32 -ffreestanding -c kernel.c -o ../bin/kernel.o
ld -m elf_i386 -o ../bin/kernel.bin -Ttext 0x1000 ../bin/kernel.o --oformat binary --entry main
