LOOP:
    cmp    r10,rsi
    je     194
    vmovss xmm2,DWORD PTR [rdx+rsi*4]
    vaddss xmm2,xmm2,DWORD PTR [rax+rsi*4]
    inc    rsi
    vminss xmm1,xmm1,xmm2
    cmp    rcx,rsi
    jne    LOOP
