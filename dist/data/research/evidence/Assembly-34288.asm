060a6a78: sub      sp, sp, #0x120
060a6a7c: stp      d9, d8, [sp, #0xe0]
060a6a80: stp      x29, x30, [sp, #0xf0]
060a6a84: stp      x22, x21, [sp, #0x100]
060a6a88: stp      x20, x19, [sp, #0x110]
060a6a8c: mov      w19, w1
060a6a90: mov      x20, x0
060a6a94: mov      w0, #0x197c
060a6a98: mov      x1, xzr
060a6a9c: mov      w21, w2
060a6aa0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
060a6aa4: tbz      w0, #0, #0x60a6ae0
060a6aa8: mov      w0, #0x197c
060a6aac: mov      x1, xzr
060a6ab0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
060a6ab4: cbz      x0, #0x60a6ca8
060a6ab8: mov      x1, x20
060a6abc: mov      w2, w19
060a6ac0: mov      w3, w21
060a6ac4: ldp      x20, x19, [sp, #0x110]
060a6ac8: ldp      x22, x21, [sp, #0x100]
060a6acc: ldp      x29, x30, [sp, #0xf0]
060a6ad0: ldp      d9, d8, [sp, #0xe0]
060a6ad4: mov      x4, xzr
060a6ad8: add      sp, sp, #0x120
060a6adc: b        #0x8639014 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_745
060a6ae0: add      x22, x20, #0x248
060a6ae4: ldr      x8, [x22, #0x10]
060a6ae8: ldr      q0, [x22]
060a6aec: add      x0, sp, #0xc0
060a6af0: mov      x1, xzr
060a6af4: str      x8, [sp, #0xd0]
060a6af8: str      q0, [sp, #0xc0]
060a6afc: bl       #0x3ac5138
060a6b00: fcmp     s0, #0.0
060a6b04: b.le     #0x60a6b28
060a6b08: ldr      x8, [x22, #0x10]
060a6b0c: ldr      q0, [x22]
060a6b10: add      x0, sp, #0xa0
060a6b14: mov      x1, xzr
060a6b18: str      x8, [sp, #0xb0]
060a6b1c: str      q0, [sp, #0xa0]
060a6b20: bl       #0x3ac5138
060a6b24: b        #0x60a6c90
060a6b28: mov      x0, x20
060a6b2c: bl       #0x60a58cc ; Oak.CharacterSpec.get_EvolveSpec
060a6b30: cbz      x0, #0x60a6bcc
060a6b34: mov      x0, x20
060a6b38: bl       #0x60a5770 ; Oak.CharacterSpec.get_MaxUpgrade
060a6b3c: cbz      w0, #0x60a6bcc
060a6b40: add      x8, x20, #0x218
060a6b44: ldr      x9, [x8, #0x10]
060a6b48: ldr      q0, [x8]
060a6b4c: add      x0, sp, #0x60
060a6b50: mov      x1, xzr
060a6b54: str      x9, [sp, #0x70]
060a6b58: str      q0, [sp, #0x60]
060a6b5c: bl       #0x3ac5138
060a6b60: mov      x0, x20
060a6b64: mov      v8.16b, v0.16b
060a6b68: bl       #0x60a58cc ; Oak.CharacterSpec.get_EvolveSpec
060a6b6c: cbz      x0, #0x60a6ca8
060a6b70: add      x8, x0, #0x218
060a6b74: ldr      x9, [x8, #0x10]
060a6b78: ldr      q0, [x8]
060a6b7c: add      x0, sp, #0x40
060a6b80: mov      x1, xzr
060a6b84: str      x9, [sp, #0x50]
060a6b88: str      q0, [sp, #0x40]
060a6b8c: bl       #0x3ac5138
060a6b90: mov      x0, x20
060a6b94: mov      v9.16b, v0.16b
060a6b98: bl       #0x60a5770 ; Oak.CharacterSpec.get_MaxUpgrade
060a6b9c: scvtf    s0, w21
060a6ba0: scvtf    s1, w0
060a6ba4: fmov     s2, #1.00000000
060a6ba8: fdiv     s0, s0, s1
060a6bac: fmov     s3, wzr
060a6bb0: fmin     s1, s0, s2
060a6bb4: fcmp     s0, #0.0
060a6bb8: fcsel    s0, s1, s3, pl
060a6bbc: fsub     s1, s9, s8
060a6bc0: fmul     s0, s1, s0
060a6bc4: fadd     s8, s8, s0
060a6bc8: b        #0x60a6bf0
060a6bcc: add      x8, x20, #0x218
060a6bd0: ldr      x9, [x8, #0x10]
060a6bd4: ldr      q0, [x8]
060a6bd8: add      x0, sp, #0x80
060a6bdc: mov      x1, xzr
060a6be0: str      x9, [sp, #0x90]
060a6be4: str      q0, [sp, #0x80]
060a6be8: bl       #0x3ac5138
060a6bec: mov      v8.16b, v0.16b
060a6bf0: add      x8, x20, #0x20c
060a6bf4: ldr      x0, [x8]
060a6bf8: ldr      w1, [x8, #8]
060a6bfc: mov      x2, xzr
060a6c00: bl       #0x3ac38e8
060a6c04: add      x8, x20, #0x80
060a6c08: tbz      w0, #0, #0x60a6c68
060a6c0c: ldr      x9, [x8, #0x10]
060a6c10: ldr      q0, [x8]
060a6c14: mov      x0, sp
060a6c18: mov      x1, xzr
060a6c1c: str      x9, [sp, #0x10]
060a6c20: str      q0, [sp]
060a6c24: bl       #0x3ac5138
060a6c28: mov      x0, xzr
060a6c2c: mov      v9.16b, v0.16b
060a6c30: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
060a6c34: cbz      x0, #0x60a6ca8
060a6c38: ldr      x20, [x0, #0x750]
060a6c3c: mov      x0, xzr
060a6c40: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
060a6c44: cbz      x0, #0x60a6ca8
060a6c48: ldr      x2, [x0, #0x758]
060a6c4c: mov      v0.16b, v8.16b
060a6c50: mov      w0, w19
060a6c54: mov      v1.16b, v9.16b
060a6c58: mov      x1, x20
060a6c5c: mov      x3, xzr
060a6c60: bl       #0x759cc80 ; Oak.StatCalculator.AlterStatCalculate
060a6c64: b        #0x60a6c90
060a6c68: ldr      x9, [x8, #0x10]
060a6c6c: ldr      q0, [x8]
060a6c70: add      x0, sp, #0x20
060a6c74: mov      x1, xzr
060a6c78: str      x9, [sp, #0x30]
060a6c7c: str      q0, [sp, #0x20]
060a6c80: bl       #0x3ac5138
060a6c84: scvtf    s1, w19
060a6c88: bl       #0x9749b10
060a6c8c: fmul     s0, s8, s0
060a6c90: ldp      x20, x19, [sp, #0x110]
060a6c94: ldp      x22, x21, [sp, #0x100]
060a6c98: ldp      x29, x30, [sp, #0xf0]
060a6c9c: ldp      d9, d8, [sp, #0xe0]
060a6ca0: add      sp, sp, #0x120
060a6ca4: ret      
060a6ca8: bl       #0x39d36e4