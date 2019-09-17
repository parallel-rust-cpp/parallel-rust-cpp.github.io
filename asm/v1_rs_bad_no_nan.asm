LOOP:
    cmp    rax,rdx
    jae    133
    mov    rcx,QWORD PTR [rbx+0x10]
    cmp    rcx,rsi
    jbe    145
    mov    rcx,QWORD PTR [rbx]
    mov    r10,QWORD PTR [r15]
    vmovss xmm2,DWORD PTR [r10+rax*4]
    vaddss xmm2,xmm2,DWORD PTR [rcx+rsi*4]
    vminss xmm1,xmm1,xmm2
    inc    rsi
    inc    rax
    dec    rdi
    jne    LOOP
