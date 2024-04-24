global fibonacci

fibonacci:
push ebp
mov ebp, esp


mov ebx, [ebp + 8]
cmp ebx, 2
jl .end
mov ecx, ebx
mov edx, ebx
sub ebx, 1
push ecx
call fibonacci



.end 
leave
ret