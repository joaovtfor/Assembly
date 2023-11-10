; media.asm
; Ler 4 valores e exibir a média aritmética

%include	'../util.asm'

section		.text
global		_start

_start: 
    ; lê quatro valores, totalizando no rbx
    call    readint
    mov     rbx, rax
    call    readint
    add     rbx, rax
    call    readint
    add     rbx, rax
    call    readint
    add     rbx, rax
    ; divide por 4, deslocando 2 bits à direita
    shr     rbx, 2
    ; printa resultado
    mov     rdi, rbx
    call    printint
    call    endl
    ; encerra o programa
    call    exit0

