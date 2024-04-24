;libasm.asm
global puts
extern strlen

ALIGN 4

puts:
    push ebp
    mov ebp, esp ; armo stackframe
    push ebx    ;preservo ebx
    mov ecx, [ebp + 8]  ; me guardo la cadena en ecx
    push ecx    ; la pusheo como argumento del strlen
    call strlen ; me devuelve en eax la longitud
    pop ecx     ; borro el argumento del stack y de paso me aseguro de
                ; que ecx siga igual a antes de llamar a strlen
                ; xq a veces estas funciones modifican los registros
    
    ;imprimo
    mov edx, eax
    mov eax, 4
    mov ebx, 1
    int 80h
    pop ebx   ; devuelvo ebx a su estado original
    leave 
    ret

