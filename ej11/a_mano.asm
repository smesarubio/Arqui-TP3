section .text
global fibo

fibo:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx

    mov ebx, [ebp+8]    ; me guardo el n en ebx
    cmp ebx, 2          ; me fijo si es menor a 2
    jl .end

    mov ecx, ebx  ; me copio mi n en ecx
    sub ecx, 1  ; n-1
    sub ebx, 2  ; n-2
    
    push ebx    ; en ebx tengo n-2
    call fibo
    add esp, 4      ; limpio arg
    mov edx, eax    ; guardo el primer fibo en edx
    
    push ecx    ; en ecx tengo n-1
    call fibo
    add esp, 4      ; limpio arg
    add edx, eax    ; sumo mi nuevo fibo en el registro anterior (edx)
    mov ebx, edx    ; copio el resultado de la suma de los fibos en ebx asi despues salta al .end

    .end:
    mov eax, ebx    ; guardo en la direccion de retorno el resultado del fibonacci
    pop edx
    pop ecx
    pop ebx
    leave
    ret