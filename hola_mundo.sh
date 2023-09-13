nasm -f elf64 hola_mundo.asm -o hola_mundo.o
ld hola_mundo.o -o hola_mundo
./hola_mundo