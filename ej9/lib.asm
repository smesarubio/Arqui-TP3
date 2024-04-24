

global exit
global read

section .text

exit:
push ebp
mov ebp, esp

mov ebx, [ebp + 8]
mov eax, 1
int 80h


read:
push ebp
mov ebp, esp
push ebx
push ecx
push edx

mov eax, 3
mov ebx, [ebp + 8]      ; file descriptor
mov ecx, [ebp + 12]     ; buffer
mov edx, [ebp + 16]     ; count 
int  80h

pop edx
pop ecx
pop ebx
leave
ret

write:
push ebp
mov ebp, esp
push ebx
push ecx
push edx

mov eax, 4
mov ebx, [ebp + 8]      ; file descriptor
mov ecx, [ebp + 12]     ; buffer
mov edx, [ebp + 16]     ; count 
int  80h

pop edx
pop ecx
pop ebx
leave
ret

open:
push ebp
mov ebp, esp
push ebx
push ecx
push edx

mov eax, 5
mov ebx, [ebp + 8]
mov ecx, [ebp + 12]
mov edx, [ebp + 16]
int 80h

pop edx
pop ecx
pop ebx
leave
ret

