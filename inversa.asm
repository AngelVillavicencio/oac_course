section .data
    frase db "Soy una frase",10,0

section .bss
    inversa resb 20

section .text
    global _start

_start:

    mov rax, frase
    mov rbx, 0

_loop:
    mov cl, [rax]
    inc rax
    inc rbx
    
    cmp cl, 0
    jne _loop

    mov r9, inversa

_loop_reverte:

    dec rax
    mov r10, [rax]
    mov [r9], r10
    inc r9
    cmp rax,frase
    jne _loop_reverte

    mov [r9], byte 10
    inc rbx



    ; IMPRIMIR LA FRASE
    mov rax, 1
    mov rdi,1
    mov rsi, inversa
    mov rdx, rbx
    syscall



    mov rax, 60
    mov rdi, 0
    syscall