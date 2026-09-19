07732c0c: stp      d9, d8, [sp, #-0x60]!
07732c10: stp      x30, x27, [sp, #0x10]
07732c14: stp      x26, x25, [sp, #0x20]
07732c18: stp      x24, x23, [sp, #0x30]
07732c1c: stp      x22, x21, [sp, #0x40]
07732c20: stp      x20, x19, [sp, #0x50]
07732c24: adrp     x23, #0xa26f000
07732c28: ldrb     w8, [x23, #0x77]
07732c2c: mov      x21, x3
07732c30: mov      w22, w2
07732c34: mov      w19, w1
07732c38: mov      x20, x0
07732c3c: tbnz     w8, #0, #0x7732c54
07732c40: adrp     x0, #0x9b7c000
07732c44: ldr      x0, [x0, #0x320]
07732c48: bl       #0x39d34bc
07732c4c: mov      w8, #1
07732c50: strb     w8, [x23, #0x77]
07732c54: mov      w0, #0x193b
07732c58: mov      x1, xzr
07732c5c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07732c60: tbz      w0, #0, #0x7732ca4
07732c64: mov      w0, #0x193b
07732c68: mov      x1, xzr
07732c6c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07732c70: cbz      x0, #0x7732ddc
07732c74: mov      x1, x20
07732c78: mov      w2, w19
07732c7c: mov      w3, w22
07732c80: mov      x4, x21
07732c84: ldp      x20, x19, [sp, #0x50]
07732c88: ldp      x22, x21, [sp, #0x40]
07732c8c: ldp      x24, x23, [sp, #0x30]
07732c90: ldp      x26, x25, [sp, #0x20]
07732c94: ldp      x30, x27, [sp, #0x10]
07732c98: mov      x5, xzr
07732c9c: ldp      d9, d8, [sp], #0x60
07732ca0: b        #0x8661814 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1392
07732ca4: adrp     x8, #0x9b7c000
07732ca8: ldr      x8, [x8, #0x320]
07732cac: ldr      x0, [x8]
07732cb0: ldr      w8, [x0, #0xe0]
07732cb4: cbnz     w8, #0x7732cbc
07732cb8: bl       #0x39d35c4
07732cbc: mov      x0, xzr
07732cc0: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
07732cc4: cbz      x0, #0x7732ddc
07732cc8: ldr      x8, [x0, #0x18]
07732ccc: mov      x23, x0
07732cd0: cmp      w8, #1
07732cd4: b.lt     #0x7732d48
07732cd8: mov      x26, xzr
07732cdc: and      x8, x8, #0xffffffff
07732ce0: add      x27, x23, #0x20
07732ce4: fmov     s9, wzr
07732ce8: cmp      x26, w8, uxtw
07732cec: b.hs     #0x7732dd8
07732cf0: ldr      w24, [x27, x26, lsl #2]
07732cf4: mov      x0, x20
07732cf8: mov      x1, xzr
07732cfc: bl       #0x66ec4fc ; Oak.Item.get_Level
07732d00: mov      w25, w0
07732d04: mov      x0, x20
07732d08: mov      x1, xzr
07732d0c: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
07732d10: mov      w3, w0
07732d14: mov      x0, x20
07732d18: mov      w1, w24
07732d1c: mov      w2, w25
07732d20: mov      w4, w22
07732d24: mov      w5, w19
07732d28: mov      x6, x21
07732d2c: bl       #0x7732188 ; Oak.Weapon.GetElementalAttack
07732d30: ldr      w8, [x23, #0x18]
07732d34: add      x26, x26, #1
07732d38: fadd     s9, s9, s0
07732d3c: cmp      x26, w8, sxtw
07732d40: b.lt     #0x7732ce8
07732d44: b        #0x7732d4c
07732d48: fmov     s9, wzr
07732d4c: mov      x0, x20
07732d50: bl       #0x77310e8 ; Oak.Weapon.get_WeaponSpec
07732d54: cbz      x0, #0x7732ddc
07732d58: mov      x1, xzr
07732d5c: bl       #0x67113fc ; Oak.WeaponSpec.get_Atk2Dps
07732d60: mov      x0, x20
07732d64: mov      x1, xzr
07732d68: mov      v8.16b, v0.16b
07732d6c: bl       #0x66ec4fc ; Oak.Item.get_Level
07732d70: mov      w21, w0
07732d74: mov      x0, x20
07732d78: mov      x1, xzr
07732d7c: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
07732d80: mov      w2, w0
07732d84: mov      x0, x20
07732d88: mov      w1, w21
07732d8c: mov      w3, w19
07732d90: bl       #0x773330c ; Oak.Weapon.GetCriticalChance
07732d94: mov      w8, #0x42c80000
07732d98: fmov     s2, w8
07732d9c: fmov     s1, #1.00000000
07732da0: fdiv     s0, s0, s2
07732da4: fmin     s2, s0, s1
07732da8: ldp      x20, x19, [sp, #0x50]
07732dac: ldp      x22, x21, [sp, #0x40]
07732db0: ldp      x24, x23, [sp, #0x30]
07732db4: ldp      x26, x25, [sp, #0x20]
07732db8: ldp      x30, x27, [sp, #0x10]
07732dbc: fcmp     s0, #0.0
07732dc0: fadd     s0, s2, s1
07732dc4: fcsel    s0, s0, s1, pl
07732dc8: fmul     s1, s9, s8
07732dcc: fmul     s0, s1, s0
07732dd0: ldp      d9, d8, [sp], #0x60
07732dd4: ret      
07732dd8: bl       #0x39d36ec
07732ddc: bl       #0x39d36e4