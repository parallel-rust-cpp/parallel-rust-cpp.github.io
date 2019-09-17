LOOP:
    vmovaps ymm2,YMMWORD PTR [r15+r9*1]
    vaddps  ymm2,ymm2,YMMWORD PTR [r8+r9*1]
    vminps  ymm1,ymm1,ymm2
    add     r10,0x1
    add     r9,0x20
    cmp     r10,rdi
    jl      LOOP
