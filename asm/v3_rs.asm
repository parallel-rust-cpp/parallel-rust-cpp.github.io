LOOP:
    vmovaps ymm3,YMMWORD PTR [rbx+rbp*1-0x60]
    vmovaps ymm4,YMMWORD PTR [rbx+rbp*1-0x40]
    vmovaps ymm5,YMMWORD PTR [rbx+rbp*1-0x20]
    vmovaps ymm6,YMMWORD PTR [rbx+rbp*1]
    vaddps  ymm3,ymm3,YMMWORD PTR [r11+rbp*1-0x60]
    vminps  ymm2,ymm2,ymm3
    vaddps  ymm3,ymm4,YMMWORD PTR [r11+rbp*1-0x40]
    vminps  ymm2,ymm2,ymm3
    vaddps  ymm3,ymm5,YMMWORD PTR [r11+rbp*1-0x20]
    vminps  ymm2,ymm2,ymm3
    add     r12,0x4
    vaddps  ymm3,ymm6,YMMWORD PTR [r11+rbp*1]
    vminps  ymm2,ymm2,ymm3
    sub     rbp,0xffffffffffffff80
    cmp     r13,r12
    jne     LOOP
