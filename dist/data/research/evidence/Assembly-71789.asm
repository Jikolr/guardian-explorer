06a39368: str      d8, [sp, #-0x40]!
06a3936c: stp      x30, x23, [sp, #0x10]
06a39370: stp      x22, x21, [sp, #0x20]
06a39374: stp      x20, x19, [sp, #0x30]
06a39378: adrp     x23, #0xa26a000
06a3937c: adrp     x22, #0x9b45000
06a39380: ldrb     w8, [x23, #0xc27]
06a39384: ldr      x22, [x22, #0x7b8]
06a39388: mov      w21, w3
06a3938c: mov      x20, x1
06a39390: mov      x19, x0
06a39394: tbnz     w8, #0, #0x6a393dc
06a39398: adrp     x0, #0x9b4f000
06a3939c: ldr      x0, [x0, #0x418]
06a393a0: bl       #0x39d34bc
06a393a4: adrp     x0, #0x9b45000
06a393a8: ldr      x0, [x0, #0x7b8]
06a393ac: bl       #0x39d34bc
06a393b0: adrp     x0, #0x9b47000
06a393b4: ldr      x0, [x0, #0xa0]
06a393b8: bl       #0x39d34bc
06a393bc: adrp     x0, #0x9bad000
06a393c0: ldr      x0, [x0, #0xbe8]
06a393c4: bl       #0x39d34bc
06a393c8: adrp     x0, #0x9bad000
06a393cc: ldr      x0, [x0, #0xbf0]
06a393d0: bl       #0x39d34bc
06a393d4: mov      w8, #1
06a393d8: strb     w8, [x23, #0xc27]
06a393dc: adrp     x23, #0x9b4f000
06a393e0: ldr      x23, [x23, #0x418]
06a393e4: mov      x0, x19
06a393e8: mov      x1, xzr
06a393ec: bl       #0x5c9bdb4
06a393f0: str      x20, [x19, #0x10]
06a393f4: str      w21, [x19, #0x18]
06a393f8: ldr      x0, [x22]
06a393fc: ldr      w8, [x0, #0xe0]
06a39400: cbnz     w8, #0x6a39408
06a39404: bl       #0x39d35c4
06a39408: ldr      x0, [x23]
06a3940c: bl       #0x4057db4
06a39410: cbz      x20, #0x6a394ac
06a39414: cbz      x0, #0x6a394ac
06a39418: ldr      w1, [x20, #0x10]
06a3941c: mov      x2, xzr
06a39420: bl       #0x6cccc90 ; Oak.OptionData.GetSpec
06a39424: cbz      x0, #0x6a394ac
06a39428: adrp     x8, #0x9b47000
06a3942c: ldr      x8, [x8, #0xa0]
06a39430: adrp     x23, #0x9bad000
06a39434: adrp     x22, #0x9bad000
06a39438: ldr      x21, [x0, #0x38]
06a3943c: ldr      x8, [x8]
06a39440: ldr      w9, [x8, #0xe0]
06a39444: ldr      x23, [x23, #0xbe8]
06a39448: ldr      x22, [x22, #0xbf0]
06a3944c: cbnz     w9, #0x6a39458
06a39450: mov      x0, x8
06a39454: bl       #0x39d35c4
06a39458: ldr      x1, [x23]
06a3945c: fmov     s0, wzr
06a39460: mov      x0, x21
06a39464: mov      x2, xzr
06a39468: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
06a3946c: ldr      x1, [x22]
06a39470: mov      v8.16b, v0.16b
06a39474: fmov     s0, wzr
06a39478: mov      x0, x21
06a3947c: mov      x2, xzr
06a39480: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
06a39484: ldr      s1, [x20, #0x14]
06a39488: ldp      x22, x21, [sp, #0x20]
06a3948c: ldp      x30, x23, [sp, #0x10]
06a39490: scvtf    s1, s1
06a39494: fmul     s0, s0, s1
06a39498: fadd     s0, s8, s0
06a3949c: str      s0, [x19, #0x1c]
06a394a0: ldp      x20, x19, [sp, #0x30]
06a394a4: ldr      d8, [sp], #0x40
06a394a8: ret      
06a394ac: bl       #0x39d36e4