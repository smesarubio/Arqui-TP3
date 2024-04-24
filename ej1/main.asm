;main.asm 
GLOBAL main 
extern printf
extern puts

section .rodata 
fmt db "Cantidad de argumentos: %d",10 , 0 
 
section .text 
main: 
  push ebp     ;Armado de stack frame 
  mov ebp, esp  ; 
 
  push dword [ebp+8] 
  push fmt 
  call printf 
  add esp, 2*4 



  mov eax, [ebp + 12]
  mov ebx,0 
  .loop:
  cmp dword [eax], 0
  je .fin
  mov ecx, [eax]
  push eax
  push ecx
  call puts
  add esp, 4
  pop eax
  add eax, 4
  jmp .loop

  .fin:
  mov esp, ebp  ;Desarmado de stack frame 
  pop ebp     ; 
  ret