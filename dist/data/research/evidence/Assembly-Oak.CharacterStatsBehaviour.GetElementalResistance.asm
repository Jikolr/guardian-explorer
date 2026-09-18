08c89b94: str      d8, [sp, #-0x30]!
08c89b98: str      x30, [sp, #8]
08c89b9c: stp      x22, x21, [sp, #0x10]
08c89ba0: stp      x20, x19, [sp, #0x20]
08c89ba4: adrp     x21, #0xa279000
08c89ba8: ldrb     w8, [x21, #0x947]
08c89bac: mov      w19, w1
08c89bb0: mov      x20, x0
08c89bb4: tbnz     w8, #0, #0x8c89bd8
08c89bb8: adrp     x0, #0x9b45000
08c89bbc: ldr      x0, [x0, #0x3f8]
08c89bc0: bl       #0x39d34bc
08c89bc4: adrp     x0, #0x9b7c000
08c89bc8: ldr      x0, [x0, #0x320]
08c89bcc: bl       #0x39d34bc
08c89bd0: mov      w8, #1
08c89bd4: strb     w8, [x21, #0x947]
08c89bd8: mov      w0, #0xa7a
08c89bdc: mov      x1, xzr
08c89be0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c89be4: tbz      w0, #0, #0x8c89c18
08c89be8: mov      w0, #0xa7a
08c89bec: mov      x1, xzr
08c89bf0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c89bf4: cbz      x0, #0x8c89d0c
08c89bf8: mov      x1, x20
08c89bfc: mov      w2, w19
08c89c00: ldp      x20, x19, [sp, #0x20]
08c89c04: ldp      x22, x21, [sp, #0x10]
08c89c08: ldr      x30, [sp, #8]
08c89c0c: mov      x3, xzr
08c89c10: ldr      d8, [sp], #0x30
08c89c14: b        #0x86357e0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_689
08c89c18: ldr      x8, [x20, #0x4c8]
08c89c1c: cbz      x8, #0x8c89d0c
08c89c20: adrp     x22, #0x9b7c000
08c89c24: ldr      x22, [x22, #0x320]
08c89c28: ldr      w21, [x8, #0x178]
08c89c2c: ldr      x0, [x22]
08c89c30: ldr      w9, [x0, #0xe0]
08c89c34: cbnz     w9, #0x8c89c3c
08c89c38: bl       #0x39d35c4
08c89c3c: mov      w0, w21
08c89c40: mov      w1, w19
08c89c44: mov      x2, xzr
08c89c48: bl       #0x66bca40 ; Oak.ElementalTypeExtensions.GetDefaultResistanceFor
08c89c4c: ldr      x0, [x20, #0x4c0]
08c89c50: mov      v8.16b, v0.16b
08c89c54: cbz      x0, #0x8c89ca8
08c89c58: adrp     x8, #0x9b45000
08c89c5c: ldr      x8, [x8, #0x3f8]
08c89c60: ldr      x9, [x0]
08c89c64: ldr      x8, [x8]
08c89c68: ldrb     w11, [x9, #0x130]
08c89c6c: ldrb     w10, [x8, #0x130]
08c89c70: cmp      w11, w10
08c89c74: b.lo     #0x8c89ca8
08c89c78: ldr      x9, [x9, #0xc8]
08c89c7c: add      x9, x9, x10, lsl #3
08c89c80: ldur     x9, [x9, #-8]
08c89c84: cmp      x9, x8
08c89c88: b.ne     #0x8c89ca8
08c89c8c: mov      w1, w19
08c89c90: mov      x2, xzr
08c89c94: bl       #0x75a0cb4 ; Oak.StatCalculator.GetFinalElementalResistance
08c89c98: mov      w8, #0x42c80000
08c89c9c: fmov     s1, w8
08c89ca0: fsub     s0, s1, s0
08c89ca4: fdiv     s8, s0, s1
08c89ca8: ldr      x0, [x22]
08c89cac: ldr      x20, [x20, #0x258]
08c89cb0: ldr      w8, [x0, #0xe0]
08c89cb4: cbnz     w8, #0x8c89cbc
08c89cb8: bl       #0x39d35c4
08c89cbc: mov      w0, w19
08c89cc0: mov      x1, xzr
08c89cc4: bl       #0x66bc970 ; Oak.ElementalTypeExtensions.ToIndex
08c89cc8: cbz      x20, #0x8c89d0c
08c89ccc: mov      w1, w0
08c89cd0: mov      x0, x20
08c89cd4: mov      x2, xzr
08c89cd8: bl       #0x66b1d64 ; ObscuredFloatContainer.get_Item
08c89cdc: mov      w8, #0x42c80000
08c89ce0: fmov     s1, w8
08c89ce4: fsub     s0, s1, s0
08c89ce8: fdiv     s0, s0, s1
08c89cec: ldp      x20, x19, [sp, #0x20]
08c89cf0: ldp      x22, x21, [sp, #0x10]
08c89cf4: ldr      x30, [sp, #8]
08c89cf8: fmul     s0, s8, s0
08c89cfc: fmul     s0, s0, s1
08c89d00: fsub     s0, s1, s0
08c89d04: ldr      d8, [sp], #0x30
08c89d08: ret      
08c89d0c: bl       #0x39d36e4