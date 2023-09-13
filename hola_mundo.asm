section .data

    mensaje db "Hola mundo",10
    lon equ $ - mensaje

section .bss


section .text
    global _start

_start:
    ; quiero imprimir
    mov rax, 1
    mov rdi, 1
    mov rsi, mensaje
    mov rdx, lon
    syscall

; comando de salida
    mov rax, 60
    mov rdi, 0
    syscall 
