nasm -f elf64 suma_cuadrados.asm -o suma_cuadrados.o
ld suma_cuadrados.o -o suma_cuadrados
./suma_cuadrados