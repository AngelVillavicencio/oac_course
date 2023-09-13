section .data
    entrada db "Escribe un texto",10,0
    len equ $ - entrada

section .bss
    name resb 16

section .text
    global _start

_start:
    
    ; imprimir

    mov rax,1
    mov rdi,1
    mov rsi,entrada
    mov rdx, len
    syscall


    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall

    ; imprimir

    mov rax,1
    mov rdi,1
    mov rsi, name
    mov rdx, len
    syscall

    ; cantidad de letras

    mov rax, name
    mov rbx, 0 
_cadaLetra: 

    mov cl, [rax]
    inc rbx
    inc rax
    cmp cl, 0
    jne _cadaLetra

    inc rbx
    inc rbx


    mov rax, name
    add rax, rbx

    mov r9, rax
    mov r10, rbx
_write_cada_letra:
    
    dec r9
    dec r10
    mov cl, [r9]

    mov rax,1
    mov rdi,1
    mov [rsi], cl
    mov rdx, 1
    syscall

    
    cmp r10, -1
    jne _write_cada_letra


    mov rax,1
    mov rdi,1
    mov [rsi], byte 10
    mov rdx, 1
    syscall




    mov rax, 60
    mov rdi,0
    syscall
    
