LOOP:
    cmp         rsi,rdx
    jae         137
    cmp         rax,rdx
    jae         146
    mov         rdi,QWORD PTR [rbx]
    vmovss      xmm2,DWORD PTR [rdi+rsi*4]
    vaddss      xmm2,xmm2,DWORD PTR [rdi+rax*4]
    vminss      xmm3,xmm2,xmm1
    vcmpunordss xmm1,xmm1,xmm1
    vblendvps   xmm1,xmm3,xmm2,xmm1
    add         rax,r8
    inc         rsi
    dec         rbp
    jne         LOOP
