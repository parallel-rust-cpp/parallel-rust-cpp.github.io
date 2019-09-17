LOOP:
    mov       rbp,r14
    add       rbp,rbx
    je        1f0 ; about 20 lines above LOOP
    inc       rcx
    vmovups   xmm3,XMMWORD PTR [r14+rbx*1]
    vaddps    xmm3,xmm3,XMMWORD PTR [r10+rbx*1]
    vpermilps xmm3,xmm3,0x1b
    vminps    xmm2,xmm2,xmm3
    add       rbx,0x10
    cmp       rcx,rax
    jb        LOOP
