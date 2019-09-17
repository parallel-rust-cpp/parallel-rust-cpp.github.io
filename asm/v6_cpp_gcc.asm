LOOP:
    vmovaps    ymm2,YMMWORD PTR [rdx-0x280]
    vmovaps    ymm3,YMMWORD PTR [rax-0x280]
    prefetcht0 BYTE PTR [rax]
    add        rax,0x20
    prefetcht0 BYTE PTR [rdx]
    add        rdx,0x20
    vpermilps  ymm0,ymm2,0xb1
    vperm2f128 ymm13,ymm3,ymm3,0x1
    vpermilps  ymm14,ymm3,0x4e
    vaddps     ymm15,ymm3,ymm2
    vaddps     ymm3,ymm3,ymm0
    vpermilps  ymm1,ymm13,0x4e
    vminps     ymm7,ymm7,ymm3
    vaddps     ymm3,ymm2,ymm14
    vaddps     ymm14,ymm0,ymm14
    vminps     ymm11,ymm11,ymm15
    vminps     ymm10,ymm10,ymm3
    vaddps     ymm3,ymm2,ymm13
    vaddps     ymm13,ymm0,ymm13
    vaddps     ymm2,ymm2,ymm1
    vaddps     ymm0,ymm0,ymm1
    vminps     ymm6,ymm6,ymm14
    vminps     ymm9,ymm9,ymm3
    vminps     ymm5,ymm5,ymm13
    vminps     ymm8,ymm8,ymm2
    vminps     ymm4,ymm4,ymm0
    cmp        rax,rcx
    jne        LOOP
