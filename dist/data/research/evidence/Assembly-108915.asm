075a2b00: str      d8, [sp, #-0x40]!
075a2b04: stp      x30, x23, [sp, #0x10]
075a2b08: stp      x22, x21, [sp, #0x20]
075a2b0c: stp      x20, x19, [sp, #0x30]
075a2b10: adrp     x21, #0xa26e000
075a2b14: ldrb     w8, [x21, #0x54a]
075a2b18: mov      x19, x1
075a2b1c: mov      x20, x0
075a2b20: tbnz     w8, #0, #0x75a2b44
075a2b24: adrp     x0, #0x9be6000
075a2b28: ldr      x0, [x0, #0xc88]
075a2b2c: bl       #0x39d34bc
075a2b30: adrp     x0, #0x9be6000
075a2b34: ldr      x0, [x0, #0xc90]
075a2b38: bl       #0x39d34bc
075a2b3c: mov      w8, #1
075a2b40: strb     w8, [x21, #0x54a]
075a2b44: mov      w0, #0x1148
075a2b48: mov      x1, xzr
075a2b4c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a2b50: tbz      w0, #0, #0x75a2b84
075a2b54: mov      w0, #0x1148
075a2b58: mov      x1, xzr
075a2b5c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a2b60: cbz      x0, #0x75a2c94
075a2b64: mov      x1, x20
075a2b68: mov      x2, x19
075a2b6c: ldp      x20, x19, [sp, #0x30]
075a2b70: ldp      x22, x21, [sp, #0x20]
075a2b74: ldp      x30, x23, [sp, #0x10]
075a2b78: mov      x3, xzr
075a2b7c: ldr      d8, [sp], #0x40
075a2b80: b        #0x8637cd4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_725
075a2b84: cbz      x19, #0x75a2c94
075a2b88: adrp     x22, #0x9be6000
075a2b8c: adrp     x23, #0x9be6000
075a2b90: ldr      x22, [x22, #0xc88]
075a2b94: ldr      x23, [x23, #0xc90]
075a2b98: mov      w21, wzr
075a2b9c: fmov     s8, wzr
075a2ba0: ldr      x8, [x19]
075a2ba4: ldr      x1, [x22]
075a2ba8: ldrh     w9, [x8, #0x12e]
075a2bac: cbz      x9, #0x75a2bd0
075a2bb0: ldr      x10, [x8, #0xb0]
075a2bb4: add      x10, x10, #8
075a2bb8: ldur     x11, [x10, #-8]
075a2bbc: cmp      x11, x1
075a2bc0: b.eq     #0x75a2be0
075a2bc4: subs     x9, x9, #1
075a2bc8: add      x10, x10, #0x10
075a2bcc: b.ne     #0x75a2bb8
075a2bd0: mov      x0, x19
075a2bd4: mov      w2, wzr
075a2bd8: bl       #0x39a94f0
075a2bdc: b        #0x75a2bec
075a2be0: ldrsw    x9, [x10]
075a2be4: add      x8, x8, x9, lsl #4
075a2be8: add      x0, x8, #0x138
075a2bec: ldp      x8, x1, [x0]
075a2bf0: mov      x0, x19
075a2bf4: blr      x8
075a2bf8: cmp      w21, w0
075a2bfc: b.ge     #0x75a2c7c
075a2c00: ldr      x8, [x19]
075a2c04: ldr      x1, [x23]
075a2c08: ldrh     w9, [x8, #0x12e]
075a2c0c: cbz      x9, #0x75a2c30
075a2c10: ldr      x10, [x8, #0xb0]
075a2c14: add      x10, x10, #8
075a2c18: ldur     x11, [x10, #-8]
075a2c1c: cmp      x11, x1
075a2c20: b.eq     #0x75a2c40
075a2c24: subs     x9, x9, #1
075a2c28: add      x10, x10, #0x10
075a2c2c: b.ne     #0x75a2c18
075a2c30: mov      x0, x19
075a2c34: mov      w2, wzr
075a2c38: bl       #0x39a94f0
075a2c3c: b        #0x75a2c4c
075a2c40: ldrsw    x9, [x10]
075a2c44: add      x8, x8, x9, lsl #4
075a2c48: add      x0, x8, #0x138
075a2c4c: ldp      x8, x2, [x0]
075a2c50: mov      x0, x19
075a2c54: mov      w1, w21
075a2c58: blr      x8
075a2c5c: cbz      x20, #0x75a2c94
075a2c60: mov      w1, w0
075a2c64: mov      x0, x20
075a2c68: mov      x2, xzr
075a2c6c: bl       #0x69db2e0 ; Oak.CharacterOptionStats.GetAccountSuperSkillScale
075a2c70: fadd     s8, s8, s0
075a2c74: add      w21, w21, #1
075a2c78: b        #0x75a2ba0
075a2c7c: ldp      x20, x19, [sp, #0x30]
075a2c80: ldp      x22, x21, [sp, #0x20]
075a2c84: ldp      x30, x23, [sp, #0x10]
075a2c88: mov      v0.16b, v8.16b
075a2c8c: ldr      d8, [sp], #0x40
075a2c90: ret      
075a2c94: bl       #0x39d36e4