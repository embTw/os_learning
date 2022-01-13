set VAR=kernel
gcc -ffreestanding -m32 -c %VAR%.c -o ..\bin\%VAR%.o
@REM objdump -d ..\bin\%VAR%.o