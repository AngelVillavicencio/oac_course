nasm -f elf64 inversa.asm -o inversa.o
ld inversa.o -o inversa
./inversa