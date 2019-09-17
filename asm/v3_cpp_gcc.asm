LOOP:
    vmovaps ymm0,YMMWORD PTR [rcx+rax*1]
    vaddps  ymm0,ymm0,YMMWORD PTR [rdx+rax*1]
    add     rax,0x20
    vminps  ymm1,ymm1,ymm0
    cmp     rsi,rax
    jne     LOOP
