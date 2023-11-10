; maior.asm
; Ler dois valores e exibir o maior

%include	'../util.asm'

section		.text
global		_start

_start: 
  lea     rdi, [prompt]
  call    printstr
  call    readint
  mov     rbx, rax
  lea     rdi, [prompt]
  call    printstr
  call    readint
  mov     r13, rax
  cmp     rbx, r13
  jg      greater
  lea     rdi, [msg]
  call    printstr
  mov     rdi, r13
  call    printint
  call    endl
  call    exit0
greater:
  lea     rdi, [msg]
  call    printstr
  mov     rdi, rbx
  call    printint
  call    endl
  call    exit0

section		.data
prompt:		db 'Insira um numero: ', 0
msg:		db 'Maior: ', 0