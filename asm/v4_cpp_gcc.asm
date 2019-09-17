LOOP:
    vmovaps ymm2,YMMWORD PTR [rdx]
    vmovaps ymm14,YMMWORD PTR [rax]
    lea     rcx,[rdx+r8*1]
    add     rdx,0x20
    vmovaps ymm1,YMMWORD PTR [rcx+r11*1]
    vmovaps ymm0,YMMWORD PTR [rcx+rdi*1]
    lea     rcx,[rbx+rax*1]
    add     rax,0x20
    vaddps  ymm15,ymm2,ymm14
    vmovaps ymm3,YMMWORD PTR [rcx+r15*1]
    vmovaps ymm13,YMMWORD PTR [rcx+r14*1]
    vminps  ymm4,ymm4,ymm15
    vaddps  ymm15,ymm1,ymm14
    vaddps  ymm14,ymm0,ymm14
    vminps  ymm5,ymm5,ymm15
    vmovaps YMMWORD PTR [rbp-0x170],ymm4
    vminps  ymm6,ymm6,ymm14
    vaddps  ymm14,ymm2,ymm3
    vaddps  ymm2,ymm2,ymm13
    vmovaps YMMWORD PTR [rbp-0x150],ymm5
    vminps  ymm7,ymm7,ymm14
    vaddps  ymm14,ymm1,ymm3
    vmovaps YMMWORD PTR [rbp-0x130],ymm6
    vaddps  ymm3,ymm0,ymm3
    vaddps  ymm1,ymm1,ymm13
    vaddps  ymm0,ymm0,ymm13
    vminps  ymm10,ymm10,ymm2
    vminps  ymm8,ymm8,ymm14
    vmovaps YMMWORD PTR [rbp-0x110],ymm7
    vminps  ymm9,ymm9,ymm3
    vminps  ymm11,ymm11,ymm1
    vminps  ymm12,ymm12,ymm0
    vmovaps YMMWORD PTR [rbp-0xb0],ymm10
    vmovaps YMMWORD PTR [rbp-0xf0],ymm8
    vmovaps YMMWORD PTR [rbp-0xd0],ymm9
    vmovaps YMMWORD PTR [rbp-0x90],ymm11
    vmovaps YMMWORD PTR [rbp-0x70],ymm12
    cmp     rax,rsi
    jne     LOOP
