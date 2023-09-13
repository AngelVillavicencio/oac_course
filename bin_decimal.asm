; calculo de un numero string de 8bits a decimal almacenado en memoria

section .data

    binstr db "10101010" ; numero a evaluar
    res db 0

section .text
    global _start

_start:
    mov rax, binstr
    mov rbx, 0
    mov r11, 8 

    mov r8, 0 ; acumulador sumatoria

_while:   
    
    mov cl, [rax]
    inc rbx
    inc rax
    dec r11

    cmp r11, 0
    je _ultimo_digito

    cmp cl, "1"
    je _es_1

    cmp cl, "0"
    je _es_0

_es_1:

    mov r10, rax ; auxiliar
    mov rax, 1
    mov r12, 0
    mov r14, 2 ; constante

    _for_mul:

        mul r14
        inc r12

        cmp r12,r11
        jne _for_mul
    
    mov r13, [rax]
    mov rax, r10
    add r8, r13

_es_0:

    jmp _while


_ultimo_digito:

    add r8, 1
    

    mov rax, 1
    mov rdi, 1
    mov rsi, r8
    mov rdx, 12
    syscall

    mov rax, 60
    mov rdi, 0
    syscall









