060a6cac: sub      sp, sp, #0x120
060a6cb0: stp      d9, d8, [sp, #0xe0]
060a6cb4: str      x29, [sp, #0xf0]
060a6cb8: stp      x30, x21, [sp, #0x100]
060a6cbc: stp      x20, x19, [sp, #0x110]
060a6cc0: mov      w19, w1
060a6cc4: mov      x20, x0
060a6cc8: mov      w0, #0x1980
060a6ccc: mov      x1, xzr
060a6cd0: mov      w21, w2
060a6cd4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
060a6cd8: tbz      w0, #0, #0x60a6d14
060a6cdc: mov      w0, #0x1980
060a6ce0: mov      x1, xzr
060a6ce4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
060a6ce8: cbz      x0, #0x60a6ed0
060a6cec: mov      x1, x20
060a6cf0: mov      w2, w19
060a6cf4: mov      w3, w21
060a6cf8: ldp      x20, x19, [sp, #0x110]
060a6cfc: ldp      x30, x21, [sp, #0x100]
060a6d00: ldr      x29, [sp, #0xf0]
060a6d04: ldp      d9, d8, [sp, #0xe0]
060a6d08: mov      x4, xzr
060a6d0c: add      sp, sp, #0x120
060a6d10: b        #0x8639014 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_745
060a6d14: ldr      x8, [x20, #0x270]
060a6d18: ldr      q0, [x20, #0x260]
060a6d1c: add      x0, sp, #0xc0
060a6d20: mov      x1, xzr
060a6d24: str      x8, [sp, #0xd0]
060a6d28: str      q0, [sp, #0xc0]
060a6d2c: bl       #0x3ac5138
060a6d30: fcmp     s0, #0.0
060a6d34: b.le     #0x60a6d5c
060a6d38: add      x8, x20, #0x260
060a6d3c: ldr      x9, [x8, #0x10]
060a6d40: ldr      q0, [x8]
060a6d44: add      x0, sp, #0xa0
060a6d48: mov      x1, xzr
060a6d4c: str      x9, [sp, #0xb0]
060a6d50: str      q0, [sp, #0xa0]
060a6d54: bl       #0x3ac5138
060a6d58: b        #0x60a6eb8
060a6d5c: mov      x0, x20
060a6d60: bl       #0x60a58cc ; Oak.CharacterSpec.get_EvolveSpec
060a6d64: cbz      x0, #0x60a6df8
060a6d68: mov      x0, x20
060a6d6c: bl       #0x60a5770 ; Oak.CharacterSpec.get_MaxUpgrade
060a6d70: cbz      w0, #0x60a6df8
060a6d74: ldr      x8, [x20, #0x60]
060a6d78: ldr      q0, [x20, #0x50]
060a6d7c: add      x0, sp, #0x60
060a6d80: mov      x1, xzr
060a6d84: str      x8, [sp, #0x70]
060a6d88: str      q0, [sp, #0x60]
060a6d8c: bl       #0x3ac5138
060a6d90: mov      x0, x20
060a6d94: mov      v8.16b, v0.16b
060a6d98: bl       #0x60a58cc ; Oak.CharacterSpec.get_EvolveSpec
060a6d9c: cbz      x0, #0x60a6ed0
060a6da0: ldr      x8, [x0, #0x60]
060a6da4: ldr      q0, [x0, #0x50]
060a6da8: add      x0, sp, #0x40
060a6dac: mov      x1, xzr
060a6db0: str      x8, [sp, #0x50]
060a6db4: str      q0, [sp, #0x40]
060a6db8: bl       #0x3ac5138
060a6dbc: mov      x0, x20
060a6dc0: mov      v9.16b, v0.16b
060a6dc4: bl       #0x60a5770 ; Oak.CharacterSpec.get_MaxUpgrade
060a6dc8: scvtf    s0, w21
060a6dcc: scvtf    s1, w0
060a6dd0: fmov     s2, #1.00000000
060a6dd4: fdiv     s0, s0, s1
060a6dd8: fmov     s3, wzr
060a6ddc: fmin     s1, s0, s2
060a6de0: fcmp     s0, #0.0
060a6de4: fcsel    s0, s1, s3, pl
060a6de8: fsub     s1, s9, s8
060a6dec: fmul     s0, s1, s0
060a6df0: fadd     s8, s8, s0
060a6df4: b        #0x60a6e18
060a6df8: ldr      x8, [x20, #0x60]
060a6dfc: ldr      q0, [x20, #0x50]
060a6e00: add      x0, sp, #0x80
060a6e04: mov      x1, xzr
060a6e08: str      x8, [sp, #0x90]
060a6e0c: str      q0, [sp, #0x80]
060a6e10: bl       #0x3ac5138
060a6e14: mov      v8.16b, v0.16b
060a6e18: add      x8, x20, #0x20c
060a6e1c: ldr      x0, [x8]
060a6e20: ldr      w1, [x8, #8]
060a6e24: mov      x2, xzr
060a6e28: bl       #0x3ac38e8
060a6e2c: add      x8, x20, #0x80
060a6e30: tbz      w0, #0, #0x60a6e90
060a6e34: ldr      x9, [x8, #0x10]
060a6e38: ldr      q0, [x8]
060a6e3c: mov      x0, sp
060a6e40: mov      x1, xzr
060a6e44: str      x9, [sp, #0x10]
060a6e48: str      q0, [sp]
060a6e4c: bl       #0x3ac5138
060a6e50: mov      x0, xzr
060a6e54: mov      v9.16b, v0.16b
060a6e58: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
060a6e5c: cbz      x0, #0x60a6ed0
060a6e60: ldr      x20, [x0, #0x750]
060a6e64: mov      x0, xzr
060a6e68: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
060a6e6c: cbz      x0, #0x60a6ed0
060a6e70: ldr      x2, [x0, #0x768]
060a6e74: mov      v0.16b, v8.16b
060a6e78: mov      w0, w19
060a6e7c: mov      v1.16b, v9.16b
060a6e80: mov      x1, x20
060a6e84: mov      x3, xzr
060a6e88: bl       #0x759cc80 ; Oak.StatCalculator.AlterStatCalculate
060a6e8c: b        #0x60a6eb8
060a6e90: ldr      x9, [x8, #0x10]
060a6e94: ldr      q0, [x8]
060a6e98: add      x0, sp, #0x20
060a6e9c: mov      x1, xzr
060a6ea0: str      x9, [sp, #0x30]
060a6ea4: str      q0, [sp, #0x20]
060a6ea8: bl       #0x3ac5138
060a6eac: scvtf    s1, w19
060a6eb0: bl       #0x9749b10
060a6eb4: fmul     s0, s8, s0
060a6eb8: ldp      x20, x19, [sp, #0x110]
060a6ebc: ldp      x30, x21, [sp, #0x100]
060a6ec0: ldr      x29, [sp, #0xf0]
060a6ec4: ldp      d9, d8, [sp, #0xe0]
060a6ec8: add      sp, sp, #0x120
060a6ecc: ret      
060a6ed0: bl       #0x39d36e4