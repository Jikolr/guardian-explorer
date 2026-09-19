08bb9ed4: str      x30, [sp, #-0x30]!
08bb9ed8: stp      x22, x21, [sp, #0x10]
08bb9edc: stp      x20, x19, [sp, #0x20]
08bb9ee0: adrp     x21, #0xa279000
08bb9ee4: ldrb     w8, [x21, #0x392]
08bb9ee8: mov      w20, w1
08bb9eec: mov      x19, x0
08bb9ef0: tbnz     w8, #0, #0x8bb9f44
08bb9ef4: adrp     x0, #0x9b44000
08bb9ef8: ldr      x0, [x0, #0xf68]
08bb9efc: bl       #0x39d34bc
08bb9f00: adrp     x0, #0x9b3f000
08bb9f04: ldr      x0, [x0, #0xee0]
08bb9f08: bl       #0x39d34bc
08bb9f0c: adrp     x0, #0x9b5d000
08bb9f10: ldr      x0, [x0, #0x1c8]
08bb9f14: bl       #0x39d34bc
08bb9f18: adrp     x0, #0x9c43000
08bb9f1c: ldr      x0, [x0, #0x8a0]
08bb9f20: bl       #0x39d34bc
08bb9f24: adrp     x0, #0x9b6d000
08bb9f28: ldr      x0, [x0, #0x10]
08bb9f2c: bl       #0x39d34bc
08bb9f30: adrp     x0, #0x9c43000
08bb9f34: ldr      x0, [x0, #0x8a8]
08bb9f38: bl       #0x39d34bc
08bb9f3c: mov      w8, #1
08bb9f40: strb     w8, [x21, #0x392]
08bb9f44: mov      w0, #0x459f
08bb9f48: mov      x1, xzr
08bb9f4c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9f50: tbz      w0, #0, #0x8bb9f80
08bb9f54: mov      w0, #0x459f
08bb9f58: mov      x1, xzr
08bb9f5c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9f60: cbz      x0, #0x8bba060
08bb9f64: and      w2, w20, #1
08bb9f68: mov      x1, x19
08bb9f6c: ldp      x20, x19, [sp, #0x20]
08bb9f70: ldp      x22, x21, [sp, #0x10]
08bb9f74: mov      x3, xzr
08bb9f78: ldr      x30, [sp], #0x30
08bb9f7c: b        #0x861b3b8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_265
08bb9f80: adrp     x8, #0x9b44000
08bb9f84: ldr      x8, [x8, #0xf68]
08bb9f88: ldr      x0, [x8]
08bb9f8c: ldr      w8, [x0, #0xe0]
08bb9f90: cbnz     w8, #0x8bb9f98
08bb9f94: bl       #0x39d35c4
08bb9f98: mov      x0, xzr
08bb9f9c: bl       #0x6963ce8 ; GameStrings.get_Instance
08bb9fa0: adrp     x8, #0x9c43000
08bb9fa4: adrp     x9, #0x9c43000
08bb9fa8: ldr      x8, [x8, #0x8a8]
08bb9fac: ldr      x9, [x9, #0x8a0]
08bb9fb0: adrp     x10, #0x9b3f000
08bb9fb4: ldr      x10, [x10, #0xee0]
08bb9fb8: tst      w20, #1
08bb9fbc: csel     x8, x8, x9, ne
08bb9fc0: ldr      x20, [x8]
08bb9fc4: ldr      x8, [x10]
08bb9fc8: mov      x21, x0
08bb9fcc: mov      w1, #1
08bb9fd0: mov      x0, x8
08bb9fd4: bl       #0x39d3534
08bb9fd8: adrp     x8, #0x9b6d000
08bb9fdc: ldr      x8, [x8, #0x10]
08bb9fe0: mov      x22, x0
08bb9fe4: add      x0, x19, #0x3c
08bb9fe8: mov      x2, xzr
08bb9fec: ldr      x1, [x8]
08bb9ff0: bl       #0x3ac6a18
08bb9ff4: adrp     x8, #0x9b5d000
08bb9ff8: ldr      x8, [x8, #0x1c8]
08bb9ffc: mov      x1, x0
08bba000: mov      x2, xzr
08bba004: ldr      x8, [x8]
08bba008: mov      x0, x8
08bba00c: bl       #0x5ab2818
08bba010: cbz      x22, #0x8bba060
08bba014: mov      x19, x0
08bba018: cbz      x0, #0x8bba030
08bba01c: ldr      x8, [x22]
08bba020: mov      x0, x19
08bba024: ldr      x1, [x8, #0x40]
08bba028: bl       #0x39d35c8
08bba02c: cbz      x0, #0x8bba068
08bba030: ldr      w8, [x22, #0x18]
08bba034: cbz      w8, #0x8bba064
08bba038: str      x19, [x22, #0x20]
08bba03c: cbz      x21, #0x8bba060
08bba040: mov      x0, x21
08bba044: mov      x1, x20
08bba048: mov      x2, x22
08bba04c: ldp      x20, x19, [sp, #0x20]
08bba050: ldp      x22, x21, [sp, #0x10]
08bba054: mov      x3, xzr
08bba058: ldr      x30, [sp], #0x30
08bba05c: b        #0x69673dc ; GameStrings.Format
08bba060: bl       #0x39d36e4
08bba064: bl       #0x39d36ec
08bba068: bl       #0x39d3708
08bba06c: mov      x1, xzr
08bba070: bl       #0x39d35b4