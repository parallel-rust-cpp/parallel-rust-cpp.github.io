LOOP:
    vmovss xmm2,DWORD PTR [rdi+r8*4-0xc]
    vmovss xmm3,DWORD PTR [rdi+r8*4-0x8]
    vaddss xmm2,xmm2,DWORD PTR [r15+r8*4-0xc]
    vaddss xmm3,xmm3,DWORD PTR [r15+r8*4-0x8]
    vminss xmm1,xmm2,xmm1
    vminss xmm1,xmm3,xmm1
    vmovss xmm2,DWORD PTR [rdi+r8*4-0x4]
    vaddss xmm2,xmm2,DWORD PTR [r15+r8*4-0x4]
    vminss xmm1,xmm2,xmm1
    vmovss xmm2,DWORD PTR [rdi+r8*4]
    vaddss xmm2,xmm2,DWORD PTR [r15+r8*4]
    vminss xmm1,xmm2,xmm1
    add    r8,0x4
    cmp    rbp,r8
    jne    LOOP
