

global exit
global read
global print_cpuid
extern printf

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

print_cpuid:
push ebp
mov ebp, esp
push ebx
push ecx
push edx
mov eax, 0
cpuid
push ecx
push edx
push ebx
lea ecx, [esp ]
mov edx, 12
mov eax, 4
mov ebx, 1
int 80h

add esp, 12
pop edx
pop ecx
pop ebx

leave 
ret

section .data
fmt db "%s%s%s",10,0

section .bss
placeholder resb 128