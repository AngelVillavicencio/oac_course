section .data
    MENSAJE db "Hola me llamo angel", 10
    CANT equ $ - MENSAJE

section .text
    global _start

_start:

    mov rax, 1
    mov rdi, 1
    mov rsi, MENSAJE
    mov rdx, CANT
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
