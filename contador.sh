nasm -f elf64 contador.asm -o contador.o
ld contador.o -o contador
./contador