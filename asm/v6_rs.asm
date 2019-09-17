LOOP:
    inc        rbx
    vmovapd    ymm9,YMMWORD PTR [r11+rsi*1-0x280]
    vmovaps    ymm10,YMMWORD PTR [rcx+rsi*1]
    prefetcht0 BYTE PTR [r11+rsi*1]
    prefetcht0 BYTE PTR [rdx+rsi*1]
    vpermilpd  ymm11,ymm9,0x5
    vpermpd    ymm12,ymm9,0x4e
    vpermpd    ymm13,ymm9,0x1b
    vpermilps  ymm14,ymm10,0xb1
    vaddps     ymm15,ymm9,ymm10
    vminps     ymm4,ymm4,ymm15
    vaddps     ymm9,ymm9,ymm14
    vminps     ymm8,ymm8,ymm9
    vaddps     ymm9,ymm11,ymm10
    vminps     ymm3,ymm3,ymm9
    vaddps     ymm9,ymm11,ymm14
    vminps     ymm7,ymm7,ymm9
    vaddps     ymm9,ymm12,ymm10
    vminps     ymm2,ymm2,ymm9
    vaddps     ymm9,ymm12,ymm14
    vminps     ymm6,ymm6,ymm9
    vaddps     ymm9,ymm10,ymm13
    vminps     ymm1,ymm1,ymm9
    vaddps     ymm9,ymm13,ymm14
    vminps     ymm5,ymm5,ymm9
    add        rsi,0x20
    cmp        rbx,rax
    jb         LOOP
