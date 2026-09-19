08c873cc: str      d8, [sp, #-0x20]!
08c873d0: str      x30, [sp, #8]
08c873d4: stp      x20, x19, [sp, #0x10]
08c873d8: adrp     x20, #0xa279000
08c873dc: ldrb     w8, [x20, #0x93c]
08c873e0: mov      x19, x0
08c873e4: tbnz     w8, #0, #0x8c87408
08c873e8: adrp     x0, #0x9b45000
08c873ec: ldr      x0, [x0, #0x3f8]
08c873f0: bl       #0x39d34bc
08c873f4: adrp     x0, #0x9b3f000
08c873f8: ldr      x0, [x0, #0x810]
08c873fc: bl       #0x39d34bc
08c87400: mov      w8, #1
08c87404: strb     w8, [x20, #0x93c]
08c87408: mov      w0, #0x113b
08c8740c: mov      x1, xzr
08c87410: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c87414: tbz      w0, #0, #0x8c87440
08c87418: mov      w0, #0x113b
08c8741c: mov      x1, xzr
08c87420: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c87424: cbz      x0, #0x8c874e8
08c87428: mov      x1, x19
08c8742c: ldp      x20, x19, [sp, #0x10]
08c87430: ldr      x30, [sp, #8]
08c87434: mov      x2, xzr
08c87438: ldr      d8, [sp], #0x20
08c8743c: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08c87440: add      x0, x19, #0x98
08c87444: mov      x1, xzr
08c87448: bl       #0x66af504 ; Oak.BuffStats.get_SuperSkillDamageMult
08c8744c: ldr      x8, [x19, #0x4c0]
08c87450: mov      v8.16b, v0.16b
08c87454: cbz      x8, #0x8c87478
08c87458: adrp     x9, #0x9b45000
08c8745c: ldr      x9, [x9, #0x3f8]
08c87460: ldr      x10, [x8]
08c87464: ldr      x9, [x9]
08c87468: ldrb     w12, [x10, #0x130]
08c8746c: ldrb     w11, [x9, #0x130]
08c87470: cmp      w12, w11
08c87474: b.hs     #0x8c87480
08c87478: mov      x19, xzr
08c8747c: b        #0x8c87494
08c87480: ldr      x10, [x10, #0xc8]
08c87484: add      x10, x10, x11, lsl #3
08c87488: ldur     x10, [x10, #-8]
08c8748c: cmp      x10, x9
08c87490: csel     x19, x8, xzr, eq
08c87494: adrp     x8, #0x9b3f000
08c87498: ldr      x8, [x8, #0x810]
08c8749c: ldr      x0, [x8]
08c874a0: ldr      w8, [x0, #0xe0]
08c874a4: cbnz     w8, #0x8c874ac
08c874a8: bl       #0x39d35c4
08c874ac: mov      x0, x19
08c874b0: mov      x1, xzr
08c874b4: mov      x2, xzr
08c874b8: bl       #0x94bbcc8
08c874bc: tbz      w0, #0, #0x8c874d0
08c874c0: mov      x0, x19
08c874c4: mov      x1, xzr
08c874c8: bl       #0x75a28a8 ; Oak.StatCalculator.GetSuperSkillScale
08c874cc: fadd     s8, s8, s0
08c874d0: ldp      x20, x19, [sp, #0x10]
08c874d4: ldr      x30, [sp, #8]
08c874d8: fmov     s0, wzr
08c874dc: fmaxnm   s0, s8, s0
08c874e0: ldr      d8, [sp], #0x20
08c874e4: ret      
08c874e8: bl       #0x39d36e4