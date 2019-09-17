LOOP:
    vmovaps ymm10,YMMWORD PTR [rdx+rbx*1]
    vmovaps ymm11,YMMWORD PTR [rcx+rbx*1]
    vmovaps ymm12,YMMWORD PTR [rax+rbx*1]
    vmovaps ymm13,YMMWORD PTR [rbp+rbx*1+0x0]
    vmovaps ymm14,YMMWORD PTR [rsi+rbx*1]
    vmovaps ymm15,YMMWORD PTR [r8+rbx*1]
    vaddps  ymm0,ymm10,ymm13
    vminps  ymm9,ymm9,ymm0
    vaddps  ymm0,ymm11,ymm13
    vminps  ymm8,ymm8,ymm0
    vaddps  ymm0,ymm12,ymm13
    vminps  ymm7,ymm7,ymm0
    vaddps  ymm0,ymm10,ymm14
    vminps  ymm6,ymm6,ymm0
    vaddps  ymm0,ymm11,ymm14
    vminps  ymm5,ymm5,ymm0
    vaddps  ymm0,ymm12,ymm14
    vminps  ymm4,ymm4,ymm0
    vaddps  ymm0,ymm10,ymm15
    vminps  ymm3,ymm3,ymm0
    vaddps  ymm0,ymm11,ymm15
    vminps  ymm2,ymm2,ymm0
    vaddps  ymm0,ymm12,ymm15
    vminps  ymm1,ymm1,ymm0
    add     rdi,0x1
    add     rbx,0x20
    cmp     rdi,r10
    jl      LOOP
