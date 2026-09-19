0759cc80: sub      sp, sp, #0xe0
0759cc84: stp      d9, d8, [sp, #0x80]
0759cc88: str      x30, [sp, #0x90]
0759cc8c: stp      x26, x25, [sp, #0xa0]
0759cc90: stp      x24, x23, [sp, #0xb0]
0759cc94: stp      x22, x21, [sp, #0xc0]
0759cc98: stp      x20, x19, [sp, #0xd0]
0759cc9c: adrp     x22, #0xa26e000
0759cca0: ldrb     w8, [x22, #0x52c]
0759cca4: mov      x19, x2
0759cca8: mov      x20, x1
0759ccac: mov      v9.16b, v1.16b
0759ccb0: mov      w21, w0
0759ccb4: mov      v8.16b, v0.16b
0759ccb8: tbnz     w8, #0, #0x759ccdc
0759ccbc: adrp     x0, #0x9b99000
0759ccc0: ldr      x0, [x0, #0x7e8]
0759ccc4: bl       #0x39d34bc
0759ccc8: adrp     x0, #0x9b81000
0759cccc: ldr      x0, [x0, #0x190]
0759ccd0: bl       #0x39d34bc
0759ccd4: mov      w8, #1
0759ccd8: strb     w8, [x22, #0x52c]
0759ccdc: mov      w0, #0xfc9
0759cce0: mov      x1, xzr
0759cce4: stp      xzr, xzr, [sp, #0x70]
0759cce8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0759ccec: tbz      w0, #0, #0x759cd24
0759ccf0: mov      w0, #0xfc9
0759ccf4: mov      x1, xzr
0759ccf8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0759ccfc: cbz      x0, #0x759ce74
0759cd00: mov      v0.16b, v8.16b
0759cd04: mov      w1, w21
0759cd08: mov      v1.16b, v9.16b
0759cd0c: mov      x2, x20
0759cd10: mov      x3, x19
0759cd14: mov      x4, xzr
0759cd18: bl       #0x8649084 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_992
0759cd1c: mov      v8.16b, v0.16b
0759cd20: b        #0x759ce50
0759cd24: add      x1, sp, #0x70
0759cd28: mov      w0, wzr
0759cd2c: str      x20, [sp, #0x70]
0759cd30: str      w21, [sp, #0x78]
0759cd34: bl       #0x759ce78 ; Oak.StatCalculator.<AlterStatCalculate>g__CanApplyAlterStep|0_0
0759cd38: tbz      w0, #0, #0x759ce40
0759cd3c: cbz      x20, #0x759ce74
0759cd40: adrp     x23, #0x9b81000
0759cd44: ldr      x23, [x23, #0x190]
0759cd48: add      x8, sp, #0x18
0759cd4c: mov      x0, x20
0759cd50: mov      w1, wzr
0759cd54: ldr      x2, [x23]
0759cd58: bl       #0x474e8d0
0759cd5c: ldur     q0, [sp, #0x18]
0759cd60: ldr      w8, [sp, #0x28]
0759cd64: add      x0, sp, #0x50
0759cd68: mov      x1, xzr
0759cd6c: str      q0, [sp, #0x50]
0759cd70: str      w8, [sp, #0x60]
0759cd74: bl       #0x3ac6fb0
0759cd78: sub      w25, w0, #1
0759cd7c: scvtf    s1, w25
0759cd80: mov      v0.16b, v9.16b
0759cd84: bl       #0x9749b10
0759cd88: adrp     x24, #0x9b99000
0759cd8c: ldr      x24, [x24, #0x7e8]
0759cd90: fmul     s8, s0, s8
0759cd94: mov      w22, #1
0759cd98: add      x1, sp, #0x70
0759cd9c: mov      w0, w22
0759cda0: bl       #0x759ce78 ; Oak.StatCalculator.<AlterStatCalculate>g__CanApplyAlterStep|0_0
0759cda4: mov      w26, w21
0759cda8: tbz      w0, #0, #0x759cde0
0759cdac: ldr      x2, [x23]
0759cdb0: add      x8, sp, #0x18
0759cdb4: mov      x0, x20
0759cdb8: mov      w1, w22
0759cdbc: bl       #0x474e8d0
0759cdc0: ldur     q0, [sp, #0x18]
0759cdc4: ldr      w8, [sp, #0x28]
0759cdc8: add      x0, sp, #0x30
0759cdcc: mov      x1, xzr
0759cdd0: str      q0, [sp, #0x30]
0759cdd4: str      w8, [sp, #0x40]
0759cdd8: bl       #0x3ac6fb0
0759cddc: sub      w26, w0, #1
0759cde0: cbz      x19, #0x759ce74
0759cde4: ldr      x2, [x24]
0759cde8: sub      w1, w22, #1
0759cdec: add      x8, sp, #0x18
0759cdf0: mov      x0, x19
0759cdf4: sub      w25, w26, w25
0759cdf8: bl       #0x474b6a0
0759cdfc: ldur     q0, [sp, #0x18]
0759ce00: ldr      x8, [sp, #0x28]
0759ce04: mov      x0, sp
0759ce08: mov      x1, xzr
0759ce0c: str      q0, [sp]
0759ce10: str      x8, [sp, #0x10]
0759ce14: bl       #0x3ac5138
0759ce18: scvtf    s1, w25
0759ce1c: bl       #0x9749b10
0759ce20: add      x1, sp, #0x70
0759ce24: mov      w0, w22
0759ce28: fmul     s8, s8, s0
0759ce2c: bl       #0x759ce78 ; Oak.StatCalculator.<AlterStatCalculate>g__CanApplyAlterStep|0_0
0759ce30: add      w22, w22, #1
0759ce34: mov      w25, w26
0759ce38: tbnz     w0, #0, #0x759cd98
0759ce3c: b        #0x759ce50
0759ce40: scvtf    s1, w21
0759ce44: mov      v0.16b, v9.16b
0759ce48: bl       #0x9749b10
0759ce4c: fmul     s8, s0, s8
0759ce50: mov      v0.16b, v8.16b
0759ce54: ldp      x20, x19, [sp, #0xd0]
0759ce58: ldp      x22, x21, [sp, #0xc0]
0759ce5c: ldp      x24, x23, [sp, #0xb0]
0759ce60: ldp      x26, x25, [sp, #0xa0]
0759ce64: ldr      x30, [sp, #0x90]
0759ce68: ldp      d9, d8, [sp, #0x80]
0759ce6c: add      sp, sp, #0xe0
0759ce70: ret      
0759ce74: bl       #0x39d36e4