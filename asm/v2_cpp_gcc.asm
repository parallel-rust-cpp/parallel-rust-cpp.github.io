LOOP:
    lea    rcx,[r10+rcx*4]
    lea    r8,[r8+r9*1+0x10]
    nop    WORD PTR cs:[rax+rax*1+0x0]
    vmovss xmm0,DWORD PTR [rcx]
    vaddss xmm0,xmm0,DWORD PTR [rax]
    add    rax,0x10
    add    rcx,0x10
    vminss xmm1,xmm0,xmm1
    vmovss xmm0,DWORD PTR [rcx-0xc]
    vaddss xmm0,xmm0,DWORD PTR [rax-0xc]
    vminss xmm4,xmm0,xmm4
    vmovss xmm0,DWORD PTR [rcx-0x8]
    vaddss xmm0,xmm0,DWORD PTR [rax-0x8]
    vminss xmm3,xmm0,xmm3
    vmovss xmm0,DWORD PTR [rcx-0x4]
    vaddss xmm0,xmm0,DWORD PTR [rax-0x4]
    vminss xmm2,xmm0,xmm2
    cmp    r8,rax
    jne    LOOP
