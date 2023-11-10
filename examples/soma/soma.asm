%include	'../util.asm'

section		.text
global		_start

_start:
    call    readint
    mov     rbx, rax
    call    readint
    add     rax, rbx
    mov     rdi, rax
    call    printint
    call    endl
    call    exit0