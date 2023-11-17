%include	'../util.asm'

section		.text
global		_start

; Escrever uma função em assembly equivalente à seguinte função C
; int64_t fatorial(int64_t n) 
; {
;    int64_t fat=1 ;
;    for (int i=2; i <= n; i++)
;       fat *= i ;

;    return fat;
; }

fatorial:
    mov     rax, 1
    mov     rcx, rdi

    inicio_loop:
        imul rax, rcx
        dec  rcx
        jnz  inicio_loop
    ret

; main()
_start:
    ; print first string
    lea     rdi, [msg1]
    call    printstr
            
    ; r15 = fatorial(readint())
    call    readint
    mov     rdi, rax
    call    fatorial
    mov     r15, rax

    ; print 2nd string
    lea     rdi, [msg2]
    call    printstr

    ; print result (saved in r15) and exit 
    mov     rdi, r15
    call    printint
    call    endl
    call    exit0 

; Dados em memória
section     .data
msg1:       db 'Digite um número: ', 0
msg2:       db 'Fatorial: ', 0



