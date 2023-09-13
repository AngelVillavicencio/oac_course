section .data
    cadena db "Hola mundo",10

section .text
    global _start

_start:

    mov rax, cadena
    mov rbx, 0 ; contador = 0

_loop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne _loop
    
    ; write 

    mov rax, 1
    mov rdi, 1
    mov rsi, cadena
    mov rdx, rbx 
    syscall

; EXIT

    mov rax, 60
    mov rdi, 0
    syscall