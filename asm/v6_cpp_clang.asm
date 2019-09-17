LOOP:
    prefetcht0 BYTE PTR [rcx+rdi*1]
    prefetcht0 BYTE PTR [rax+rdi*1]
    vmovapd    ymm9,YMMWORD PTR [rcx+rdi*1-0x280]
    vmovaps    ymm10,YMMWORD PTR [rax+rdi*1-0x280]
    vpermpd    ymm11,ymm9,0x4e
    vpermilpd  ymm12,ymm9,0x5
    vpermilpd  ymm13,ymm11,0x5
    vpermilps  ymm14,ymm10,0xb1
    vaddps     ymm15,ymm9,ymm10
    vminps     ymm8,ymm8,ymm15
    vaddps     ymm9,ymm9,ymm14
    vminps     ymm4,ymm4,ymm9
    vaddps     ymm9,ymm12,ymm10
    vminps     ymm7,ymm7,ymm9
    vaddps     ymm9,ymm12,ymm14
    vminps     ymm3,ymm3,ymm9
    vaddps     ymm9,ymm11,ymm10
    vminps     ymm6,ymm6,ymm9
    vaddps     ymm9,ymm11,ymm14
    vminps     ymm2,ymm2,ymm9
    vaddps     ymm9,ymm10,ymm13
    vminps     ymm5,ymm5,ymm9
    vaddps     ymm9,ymm13,ymm14
    vminps     ymm1,ymm1,ymm9
    add        rdi,0x20
    add        rdx,0xffffffffffffffff
    jne        LOOP
