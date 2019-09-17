LOOP:
    vmovss xmm0,DWORD PTR [rdx+rax*1]
    vaddss xmm0,xmm0,DWORD PTR [rcx+rax*1]
    add    rax,0x4
    vminss xmm1,xmm0,xmm1
    cmp    rax,rsi
    jne    LOOP
