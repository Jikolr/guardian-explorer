075a096c: sub      sp, sp, #0x1a0
075a0970: stp      d15, d14, [sp, #0x100]
075a0974: stp      d13, d12, [sp, #0x110]
075a0978: stp      d11, d10, [sp, #0x120]
075a097c: stp      d9, d8, [sp, #0x130]
075a0980: stp      x29, x30, [sp, #0x140]
075a0984: stp      x28, x27, [sp, #0x150]
075a0988: stp      x26, x25, [sp, #0x160]
075a098c: stp      x24, x23, [sp, #0x170]
075a0990: stp      x22, x21, [sp, #0x180]
075a0994: stp      x20, x19, [sp, #0x190]
075a0998: adrp     x20, #0xa26e000
075a099c: ldrb     w8, [x20, #0x53e]
075a09a0: mov      x19, x0
075a09a4: tbnz     w8, #0, #0x75a09bc
075a09a8: adrp     x0, #0x9b78000
075a09ac: ldr      x0, [x0, #0x8f8]
075a09b0: bl       #0x39d34bc
075a09b4: mov      w8, #1
075a09b8: strb     w8, [x20, #0x53e]
075a09bc: mov      w0, #0xa4e
075a09c0: mov      x1, xzr
075a09c4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a09c8: tbz      w0, #0, #0x75a0a14
075a09cc: mov      w0, #0xa4e
075a09d0: mov      x1, xzr
075a09d4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a09d8: mov      x20, x0
075a09dc: add      x0, sp, #0x80
075a09e0: mov      w2, #0x80
075a09e4: mov      x1, x19
075a09e8: bl       #0x9749b40
075a09ec: cbz      x20, #0x75a0cb0
075a09f0: mov      x0, sp
075a09f4: add      x1, sp, #0x80
075a09f8: mov      w2, #0x80
075a09fc: bl       #0x9749b40
075a0a00: mov      x1, sp
075a0a04: mov      x0, x20
075a0a08: mov      x2, xzr
075a0a0c: bl       #0x86356ec ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_688
075a0a10: b        #0x75a0c80
075a0a14: ldr      w20, [x19, #0x28]
075a0a18: ldp      x26, x25, [x19, #0x40]
075a0a1c: ldp      x24, x23, [x19, #0x50]
075a0a20: ldp      x0, x27, [x19, #0x30]
075a0a24: ldp      x22, x21, [x19, #0x60]
075a0a28: fmov     s9, wzr
075a0a2c: fmov     s8, wzr
075a0a30: cbz      x0, #0x75a0a40
075a0a34: mov      x1, xzr
075a0a38: bl       #0x69d93a8 ; Oak.CharacterOptionStats.get_CriticalMultiplierScale
075a0a3c: mov      v8.16b, v0.16b
075a0a40: cbz      x27, #0x75a0a7c
075a0a44: mov      x0, x27
075a0a48: mov      x1, xzr
075a0a4c: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0a50: mov      w28, w0
075a0a54: mov      x0, x27
075a0a58: mov      x1, xzr
075a0a5c: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0a60: mov      w2, w0
075a0a64: mov      x0, x27
075a0a68: mov      w1, w28
075a0a6c: mov      w3, w20
075a0a70: mov      x4, xzr
075a0a74: bl       #0x77340dc ; Oak.Weapon.GetCriticalMultiplier
075a0a78: mov      v9.16b, v0.16b
075a0a7c: fmov     s11, wzr
075a0a80: fmov     s10, wzr
075a0a84: cbz      x26, #0x75a0ac0
075a0a88: mov      x0, x26
075a0a8c: mov      x1, xzr
075a0a90: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0a94: mov      w27, w0
075a0a98: mov      x0, x26
075a0a9c: mov      x1, xzr
075a0aa0: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0aa4: mov      w2, w0
075a0aa8: mov      x0, x26
075a0aac: mov      w1, w27
075a0ab0: mov      w3, w20
075a0ab4: mov      x4, xzr
075a0ab8: bl       #0x77340dc ; Oak.Weapon.GetCriticalMultiplier
075a0abc: mov      v10.16b, v0.16b
075a0ac0: cbz      x25, #0x75a0b04
075a0ac4: mov      x0, x25
075a0ac8: mov      x1, xzr
075a0acc: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0ad0: mov      w26, w0
075a0ad4: mov      x0, x25
075a0ad8: mov      x1, xzr
075a0adc: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0ae0: ldr      x8, [x25]
075a0ae4: mov      w2, w0
075a0ae8: mov      x0, x25
075a0aec: mov      w1, w26
075a0af0: ldr      x9, [x8, #0x288]
075a0af4: ldr      x4, [x8, #0x290]
075a0af8: mov      w3, w20
075a0afc: blr      x9
075a0b00: mov      v11.16b, v0.16b
075a0b04: fmov     s12, wzr
075a0b08: fmov     s13, wzr
075a0b0c: cbz      x24, #0x75a0b50
075a0b10: mov      x0, x24
075a0b14: mov      x1, xzr
075a0b18: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0b1c: mov      w25, w0
075a0b20: mov      x0, x24
075a0b24: mov      x1, xzr
075a0b28: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0b2c: ldr      x8, [x24]
075a0b30: mov      w2, w0
075a0b34: mov      x0, x24
075a0b38: mov      w1, w25
075a0b3c: ldr      x9, [x8, #0x288]
075a0b40: ldr      x4, [x8, #0x290]
075a0b44: mov      w3, w20
075a0b48: blr      x9
075a0b4c: mov      v13.16b, v0.16b
075a0b50: cbz      x23, #0x75a0b94
075a0b54: mov      x0, x23
075a0b58: mov      x1, xzr
075a0b5c: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0b60: mov      w24, w0
075a0b64: mov      x0, x23
075a0b68: mov      x1, xzr
075a0b6c: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0b70: ldr      x8, [x23]
075a0b74: mov      w2, w0
075a0b78: mov      x0, x23
075a0b7c: mov      w1, w24
075a0b80: ldr      x9, [x8, #0x288]
075a0b84: ldr      x4, [x8, #0x290]
075a0b88: mov      w3, w20
075a0b8c: blr      x9
075a0b90: mov      v12.16b, v0.16b
075a0b94: fmov     s14, wzr
075a0b98: fmov     s15, wzr
075a0b9c: cbz      x22, #0x75a0be0
075a0ba0: mov      x0, x22
075a0ba4: mov      x1, xzr
075a0ba8: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0bac: mov      w23, w0
075a0bb0: mov      x0, x22
075a0bb4: mov      x1, xzr
075a0bb8: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0bbc: ldr      x8, [x22]
075a0bc0: mov      w2, w0
075a0bc4: mov      x0, x22
075a0bc8: mov      w1, w23
075a0bcc: ldr      x9, [x8, #0x288]
075a0bd0: ldr      x4, [x8, #0x290]
075a0bd4: mov      w3, w20
075a0bd8: blr      x9
075a0bdc: mov      v15.16b, v0.16b
075a0be0: cbz      x21, #0x75a0c24
075a0be4: mov      x0, x21
075a0be8: mov      x1, xzr
075a0bec: bl       #0x66ec4fc ; Oak.Item.get_Level
075a0bf0: mov      w22, w0
075a0bf4: mov      x0, x21
075a0bf8: mov      x1, xzr
075a0bfc: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
075a0c00: ldr      x8, [x21]
075a0c04: mov      w2, w0
075a0c08: mov      x0, x21
075a0c0c: mov      w1, w22
075a0c10: ldr      x9, [x8, #0x288]
075a0c14: ldr      x4, [x8, #0x290]
075a0c18: mov      w3, w20
075a0c1c: blr      x9
075a0c20: mov      v14.16b, v0.16b
075a0c24: adrp     x8, #0x9b78000
075a0c28: ldr      x8, [x8, #0x8f8]
075a0c2c: ldr      w20, [x19, #0x78]
075a0c30: ldr      x0, [x8]
075a0c34: ldr      w8, [x0, #0xe0]
075a0c38: cbnz     w8, #0x75a0c40
075a0c3c: bl       #0x39d35c4
075a0c40: mov      w0, w20
075a0c44: mov      x1, xzr
075a0c48: bl       #0x619e3fc ; Oak.CoopSystem.GetBalanceModifier
075a0c4c: cbz      x0, #0x75a0cb0
075a0c50: ldr      x8, [x0]
075a0c54: fadd     s0, s8, s9
075a0c58: ldr      x1, [x19, #0x20]
075a0c5c: fadd     s0, s0, s10
075a0c60: ldp      x9, x2, [x8, #0x1c8]
075a0c64: fadd     s0, s0, s11
075a0c68: fadd     s0, s0, s13
075a0c6c: fadd     s0, s0, s12
075a0c70: fadd     s8, s0, s15
075a0c74: blr      x9
075a0c78: fadd     s1, s8, s14
075a0c7c: fadd     s0, s1, s0
075a0c80: ldp      x20, x19, [sp, #0x190]
075a0c84: ldp      x22, x21, [sp, #0x180]
075a0c88: ldp      x24, x23, [sp, #0x170]
075a0c8c: ldp      x26, x25, [sp, #0x160]
075a0c90: ldp      x28, x27, [sp, #0x150]
075a0c94: ldp      x29, x30, [sp, #0x140]
075a0c98: ldp      d9, d8, [sp, #0x130]
075a0c9c: ldp      d11, d10, [sp, #0x120]
075a0ca0: ldp      d13, d12, [sp, #0x110]
075a0ca4: ldp      d15, d14, [sp, #0x100]
075a0ca8: add      sp, sp, #0x1a0
075a0cac: ret      
075a0cb0: bl       #0x39d36e4