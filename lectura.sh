nasm -f elf64 lectura.asm -o lectura.o
ld lectura.o -o lectura
./lectura