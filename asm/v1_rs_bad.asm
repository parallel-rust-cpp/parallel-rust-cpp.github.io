LOOP:
    cmp         rax,rdx
    jae         13e
    mov         rcx,QWORD PTR [rbx+0x10]
    cmp         rcx,rsi
    jbe         150
    mov         rcx,QWORD PTR [rbx]
    mov         r10,QWORD PTR [r15]
    vmovss      xmm2,DWORD PTR [r10+rax*4]
    vaddss      xmm2,xmm2,DWORD PTR [rcx+rsi*4]
    vminss      xmm3,xmm2,xmm1
    vcmpunordss xmm1,xmm1,xmm1
    vblendvps   xmm1,xmm3,xmm2,xmm1
    inc         rsi
    inc         rax
    dec         rdi
    jne         LOOP
