nasm -f elf64 -g bin_decimal.asm -o bin_decimal.o
ld bin_decimal.o -o bin_decimal
./bin_decimal