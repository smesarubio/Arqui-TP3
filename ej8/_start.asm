
section .text
global _start


extern exit
extern  main

_start: 
push ebp 
mov ebp, esp

push dword [esp + 12]
push dword [esp + 8]
call main

mov ebx, eax
mov eax, 1
int 80h

