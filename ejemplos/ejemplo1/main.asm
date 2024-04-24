global main
extern hola_mundo


section .text

main:
call hola_mundo

mov eax, 1
mov ebx, 0
int 80h



