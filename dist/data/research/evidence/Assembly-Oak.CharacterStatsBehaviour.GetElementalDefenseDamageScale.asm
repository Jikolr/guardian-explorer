08c87e38: sub      sp, sp, #0x80
08c87e3c: str      d10, [sp, #0x40]
08c87e40: stp      d9, d8, [sp, #0x50]
08c87e44: stp      x30, x21, [sp, #0x60]
08c87e48: stp      x20, x19, [sp, #0x70]
08c87e4c: adrp     x21, #0xa279000
08c87e50: ldrb     w8, [x21, #0x940]
08c87e54: mov      w20, w1
08c87e58: mov      x19, x0
08c87e5c: tbnz     w8, #0, #0x8c87e80
08c87e60: adrp     x0, #0x9b7c000
08c87e64: ldr      x0, [x0, #0x320]
08c87e68: bl       #0x39d34bc
08c87e6c: adrp     x0, #0x9b3f000
08c87e70: ldr      x0, [x0, #0xac0]
08c87e74: bl       #0x39d34bc
08c87e78: mov      w8, #1
08c87e7c: strb     w8, [x21, #0x940]
08c87e80: mov      w0, #0xa77
08c87e84: mov      x1, xzr
08c87e88: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c87e8c: tbz      w0, #0, #0x8c87ec4
08c87e90: mov      w0, #0xa77
08c87e94: mov      x1, xzr
08c87e98: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c87e9c: cbz      x0, #0x8c87fe8
08c87ea0: mov      x1, x19
08c87ea4: mov      w2, w20
08c87ea8: ldp      x20, x19, [sp, #0x70]
08c87eac: ldp      x30, x21, [sp, #0x60]
08c87eb0: ldp      d9, d8, [sp, #0x50]
08c87eb4: ldr      d10, [sp, #0x40]
08c87eb8: mov      x3, xzr
08c87ebc: add      sp, sp, #0x80
08c87ec0: b        #0x86357e0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_689
08c87ec4: adrp     x8, #0x9b7c000
08c87ec8: ldr      x8, [x8, #0x320]
08c87ecc: ldr      x0, [x8]
08c87ed0: ldr      w8, [x0, #0xe0]
08c87ed4: cbnz     w8, #0x8c87edc
08c87ed8: bl       #0x39d35c4
08c87edc: mov      w0, w20
08c87ee0: mov      x1, xzr
08c87ee4: bl       #0x66bc970 ; Oak.ElementalTypeExtensions.ToIndex
08c87ee8: ldr      x8, [x19, #0x178]
08c87eec: cbz      x8, #0x8c87fe8
08c87ef0: mov      w20, w0
08c87ef4: mov      x0, x8
08c87ef8: mov      w1, w20
08c87efc: mov      x2, xzr
08c87f00: bl       #0x66b1d64 ; ObscuredFloatContainer.get_Item
08c87f04: mov      x0, xzr
08c87f08: mov      v8.16b, v0.16b
08c87f0c: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
08c87f10: cbz      x0, #0x8c87fe8
08c87f14: add      x8, x0, #0x734
08c87f18: ldr      x9, [x8, #0x10]
08c87f1c: ldr      q0, [x8]
08c87f20: add      x0, sp, #0x20
08c87f24: mov      x1, xzr
08c87f28: str      x9, [sp, #0x30]
08c87f2c: str      q0, [sp, #0x20]
08c87f30: bl       #0x3ac5138
08c87f34: mov      x0, xzr
08c87f38: mov      v9.16b, v0.16b
08c87f3c: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
08c87f40: cbz      x0, #0x8c87fe8
08c87f44: add      x8, x0, #0x71c
08c87f48: ldr      x9, [x8, #0x10]
08c87f4c: ldr      q0, [x8]
08c87f50: mov      x0, sp
08c87f54: mov      x1, xzr
08c87f58: str      x9, [sp, #0x10]
08c87f5c: str      q0, [sp]
08c87f60: bl       #0x3ac5138
08c87f64: adrp     x8, #0x9b3f000
08c87f68: ldr      x8, [x8, #0xac0]
08c87f6c: mov      v10.16b, v0.16b
08c87f70: ldr      x0, [x8]
08c87f74: ldr      w8, [x0, #0xe0]
08c87f78: cbnz     w8, #0x8c87f80
08c87f7c: bl       #0x39d35c4
08c87f80: mov      v0.16b, v8.16b
08c87f84: mov      v1.16b, v10.16b
08c87f88: mov      x0, xzr
08c87f8c: bl       #0x5c5a360
08c87f90: mov      v1.16b, v0.16b
08c87f94: mov      v0.16b, v9.16b
08c87f98: mov      x0, xzr
08c87f9c: bl       #0x5c5a218
08c87fa0: ldr      x0, [x19, #0x170]
08c87fa4: cbz      x0, #0x8c87fe8
08c87fa8: mov      w1, w20
08c87fac: mov      x2, xzr
08c87fb0: mov      v8.16b, v0.16b
08c87fb4: bl       #0x66b1d64 ; ObscuredFloatContainer.get_Item
08c87fb8: fmov     s1, #1.00000000
08c87fbc: fadd     s0, s0, s1
08c87fc0: fadd     s0, s8, s0
08c87fc4: fmov     s1, wzr
08c87fc8: mov      x0, xzr
08c87fcc: bl       #0x5c5a218
08c87fd0: ldp      x20, x19, [sp, #0x70]
08c87fd4: ldp      x30, x21, [sp, #0x60]
08c87fd8: ldp      d9, d8, [sp, #0x50]
08c87fdc: ldr      d10, [sp, #0x40]
08c87fe0: add      sp, sp, #0x80
08c87fe4: ret      
08c87fe8: bl       #0x39d36e4