LOOP:
    vmovss xmm2,DWORD PTR [r9+r15*4-0x1c]
    vmovss xmm3,DWORD PTR [r9+r15*4-0x18]
    vaddss xmm2,xmm2,DWORD PTR [r13+r15*4-0x1c]
    vminss xmm1,xmm1,xmm2
    vaddss xmm2,xmm3,DWORD PTR [r13+r15*4-0x18]
    vmovss xmm3,DWORD PTR [r9+r15*4-0x14]
    vaddss xmm3,xmm3,DWORD PTR [r13+r15*4-0x14]
    vminss xmm1,xmm1,xmm2
    vminss xmm1,xmm1,xmm3
    vmovss xmm2,DWORD PTR [r9+r15*4-0x10]
    vaddss xmm2,xmm2,DWORD PTR [r13+r15*4-0x10]
    vminss xmm1,xmm1,xmm2
    vmovss xmm2,DWORD PTR [r9+r15*4-0xc]
    vaddss xmm2,xmm2,DWORD PTR [r13+r15*4-0xc]
    vmovss xmm3,DWORD PTR [r9+r15*4-0x8]
    vaddss xmm3,xmm3,DWORD PTR [r13+r15*4-0x8]
    vminss xmm1,xmm1,xmm2
    vminss xmm1,xmm1,xmm3
    vmovss xmm2,DWORD PTR [r9+r15*4-0x4]
    vaddss xmm2,xmm2,DWORD PTR [r13+r15*4-0x4]
    vminss xmm1,xmm1,xmm2
    vmovss xmm2,DWORD PTR [r9+r15*4]
    vaddss xmm2,xmm2,DWORD PTR [r13+r15*4+0x0]
    add    r15,0x8
    vminss xmm1,xmm1,xmm2
    cmp    rax,r15
    jne    LOOP
