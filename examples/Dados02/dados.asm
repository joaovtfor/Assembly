%include	'../util.asm'

section		.text
global		_start

_start:
    xor         rbx, rbx
loop:
    call        readint
    mov         [vet+rbx*8], rax
    add         r12, rax
    inc         rbx
    cmp         rbx, 10
    jl          loop
    mov         rdi, r12
    call        printint
    call        endl
    call        exit0

section     .bss
vet:        resq 10