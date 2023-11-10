%include	'../util.asm'

section		.text
global		_start

_start: 
    xor     r12, r12    ; r12=0
inicio:
    mov     rdi, r12    ; rdi=r12
    call    printint    ; print(rdi)
    call    endl
    inc     r12         ; r12++
    cmp     r12, 100    ; if(r12<=100)
    jle     inicio      ;    ir p/ inicio
    call    exit0
