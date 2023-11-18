%include	'../util.asm'

section		.text
global		_start

_start:
    xor         rbx, rbx
loop:
    mov         rdi, [vet + rbx*8]
    call        printint
    call        endl
    inc         rbx
    cmp         rbx, 5
    jl          loop
    call        exit0

section     .data
vet:       dq 11, 20, 30, 40, 50