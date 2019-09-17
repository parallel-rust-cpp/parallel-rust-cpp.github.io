LOOP:
    ; other half with similar lines omitted
    lea       edx,[rax+r14*1+0x2]
    movsxd    rdx,edx
    lea       esi,[r15+r14*1+0x2]
    movsxd    rsi,esi
    lea       edi,[rax+r14*1+0x3]
    movsxd    rdi,edi
    lea       ebx,[r15+r14*1+0x3]
    movsxd    rbx,ebx
    vmovss    xmm0,DWORD PTR [r8+rdi*4]
    vinsertps xmm0,xmm0,DWORD PTR [r8+rdx*4],0x10
    vmovss    xmm3,DWORD PTR [rbp+rbx*4+0x0]
    vinsertps xmm3,xmm3,DWORD PTR [rbp+rsi*4+0x0],0x10
    vaddps    xmm0,xmm0,xmm3
    vpmovzxdq xmm3,xmm0
    vcmpltps  xmm0,xmm0,xmm4
    vunpcklps xmm0,xmm2,xmm0
    vblendvpd xmm6,xmm6,xmm3,xmm0
    vpermilps xmm7,xmm5,0xe8
    vpermilps xmm4,xmm6,0xe8
    add       r14d,0x4
    add       rcx,0xffffffffffffffff
    jne       LOOP
