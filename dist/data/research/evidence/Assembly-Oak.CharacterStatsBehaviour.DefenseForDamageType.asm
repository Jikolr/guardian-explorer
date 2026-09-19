08c87ad4: sub      sp, sp, #0x150
08c87ad8: str      d12, [sp, #0xf0]
08c87adc: stp      d11, d10, [sp, #0x100]
08c87ae0: stp      d9, d8, [sp, #0x110]
08c87ae4: stp      x29, x30, [sp, #0x120]
08c87ae8: stp      x22, x21, [sp, #0x130]
08c87aec: stp      x20, x19, [sp, #0x140]
08c87af0: adrp     x20, #0xa279000
08c87af4: ldrb     w8, [x20, #0x93f]
08c87af8: mov      w21, w1
08c87afc: mov      x19, x0
08c87b00: tbnz     w8, #0, #0x8c87b30
08c87b04: adrp     x0, #0x9b45000
08c87b08: ldr      x0, [x0, #0x3f8]
08c87b0c: bl       #0x39d34bc
08c87b10: adrp     x0, #0x9b79000
08c87b14: ldr      x0, [x0, #0x6a8]
08c87b18: bl       #0x39d34bc
08c87b1c: adrp     x0, #0x9b83000
08c87b20: ldr      x0, [x0, #0x6c8]
08c87b24: bl       #0x39d34bc
08c87b28: mov      w8, #1
08c87b2c: strb     w8, [x20, #0x93f]
08c87b30: mov      w0, #0x4fed
08c87b34: mov      x1, xzr
08c87b38: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c87b3c: tbz      w0, #0, #0x8c87b64
08c87b40: mov      w0, #0x4fed
08c87b44: mov      x1, xzr
08c87b48: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c87b4c: cbz      x0, #0x8c87e34
08c87b50: mov      x1, x19
08c87b54: mov      w2, w21
08c87b58: mov      x3, xzr
08c87b5c: bl       #0x8638c08 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_740
08c87b60: b        #0x8c87e08
08c87b64: ldr      x0, [x19, #0x4c0]
08c87b68: cbz      x0, #0x8c87ba0
08c87b6c: adrp     x8, #0x9b45000
08c87b70: ldr      x8, [x8, #0x3f8]
08c87b74: ldr      x9, [x0]
08c87b78: ldr      x8, [x8]
08c87b7c: ldrb     w11, [x9, #0x130]
08c87b80: ldrb     w10, [x8, #0x130]
08c87b84: cmp      w11, w10
08c87b88: b.lo     #0x8c87ba0
08c87b8c: ldr      x9, [x9, #0xc8]
08c87b90: add      x9, x9, x10, lsl #3
08c87b94: ldur     x9, [x9, #-8]
08c87b98: cmp      x9, x8
08c87b9c: b.eq     #0x8c87e28
08c87ba0: ldr      w8, [x19, #0x30]
08c87ba4: ldr      q0, [x19, #0x20]
08c87ba8: ldr      x20, [x19, #0x4c8]
08c87bac: add      x0, sp, #0xb0
08c87bb0: mov      x1, xzr
08c87bb4: str      w8, [sp, #0xc0]
08c87bb8: str      q0, [sp, #0xb0]
08c87bbc: bl       #0x3ac6fb0
08c87bc0: ldur     q0, [x19, #0x34]
08c87bc4: ldr      w8, [x19, #0x44]
08c87bc8: mov      w22, w0
08c87bcc: add      x0, sp, #0x90
08c87bd0: mov      x1, xzr
08c87bd4: str      q0, [sp, #0x90]
08c87bd8: str      w8, [sp, #0xa0]
08c87bdc: bl       #0x3ac6fb0
08c87be0: cbz      x20, #0x8c87e34
08c87be4: mov      w2, w0
08c87be8: mov      x0, x20
08c87bec: mov      w1, w22
08c87bf0: mov      x3, xzr
08c87bf4: bl       #0x60a6cac ; Oak.CharacterSpec.Defense
08c87bf8: add      x20, x19, #0x98
08c87bfc: mov      x0, x20
08c87c00: mov      x1, xzr
08c87c04: mov      v8.16b, v0.16b
08c87c08: bl       #0x66af8f4 ; Oak.BuffStats.get_LimitedDefenseMult
08c87c0c: mov      x0, x20
08c87c10: mov      x1, xzr
08c87c14: mov      v10.16b, v0.16b
08c87c18: bl       #0x66af7f4 ; Oak.BuffStats.get_DefenseMult
08c87c1c: mov      v9.16b, v0.16b
08c87c20: and      w22, w21, #0xffff
08c87c24: tbz      w21, #0, #0x8c87c68
08c87c28: add      x8, sp, #0xd0
08c87c2c: mov      x0, x20
08c87c30: mov      x1, xzr
08c87c34: bl       #0x66b0920 ; Oak.BuffStats.get_LimitedMeleeDefenseMult
08c87c38: ldr      q0, [sp, #0xd0]
08c87c3c: ldr      x8, [sp, #0xe0]
08c87c40: add      x0, sp, #0x70
08c87c44: mov      x1, xzr
08c87c48: str      q0, [sp, #0x70]
08c87c4c: str      x8, [sp, #0x80]
08c87c50: bl       #0x3ac5138
08c87c54: mov      x0, x19
08c87c58: mov      x1, xzr
08c87c5c: fadd     s10, s10, s0
08c87c60: bl       #0x63ae92c ; Oak.FieldObjectStatsBehaviour.get_MeleeDefenseMultiplier
08c87c64: fadd     s9, s9, s0
08c87c68: tbz      w22, #1, #0x8c87cac
08c87c6c: add      x8, sp, #0xd0
08c87c70: mov      x0, x20
08c87c74: mov      x1, xzr
08c87c78: bl       #0x66b0b2c ; Oak.BuffStats.get_LimitedProjDefenseMult
08c87c7c: ldr      q0, [sp, #0xd0]
08c87c80: ldr      x8, [sp, #0xe0]
08c87c84: add      x0, sp, #0x50
08c87c88: mov      x1, xzr
08c87c8c: str      q0, [sp, #0x50]
08c87c90: str      x8, [sp, #0x60]
08c87c94: bl       #0x3ac5138
08c87c98: mov      x0, x19
08c87c9c: mov      x1, xzr
08c87ca0: fadd     s10, s10, s0
08c87ca4: bl       #0x63ae9a8 ; Oak.FieldObjectStatsBehaviour.get_ProjectileDefenseMultiplier
08c87ca8: fadd     s9, s9, s0
08c87cac: mov      x0, xzr
08c87cb0: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
08c87cb4: cbz      x0, #0x8c87e34
08c87cb8: add      x8, x0, #0x6ec
08c87cbc: adrp     x21, #0xa25e000
08c87cc0: ldr      q0, [x8]
08c87cc4: ldr      x8, [x8, #0x10]
08c87cc8: ldrb     w9, [x21, #0x1bb]
08c87ccc: str      q0, [sp, #0xd0]
08c87cd0: str      x8, [sp, #0xe0]
08c87cd4: cbnz     w9, #0x8c87cec
08c87cd8: adrp     x0, #0x9b45000
08c87cdc: ldr      x0, [x0, #0x6c8]
08c87ce0: bl       #0x39d34bc
08c87ce4: mov      w8, #1
08c87ce8: strb     w8, [x21, #0x1bb]
08c87cec: adrp     x8, #0x9b45000
08c87cf0: ldr      x8, [x8, #0x6c8]
08c87cf4: ldr      x8, [x8]
08c87cf8: ldr      x8, [x8, #0xb8]
08c87cfc: ldr      x0, [x8]
08c87d00: cbz      x0, #0x8c87e34
08c87d04: mov      x1, xzr
08c87d08: bl       #0x6bafa9c ; Oak.Stage.get_Spec
08c87d0c: cbz      x0, #0x8c87d58
08c87d10: adrp     x8, #0x9b79000
08c87d14: ldr      x8, [x8, #0x6a8]
08c87d18: ldr      x9, [x0]
08c87d1c: ldr      x8, [x8]
08c87d20: ldrb     w11, [x9, #0x130]
08c87d24: ldrb     w10, [x8, #0x130]
08c87d28: cmp      w11, w10
08c87d2c: b.lo     #0x8c87d58
08c87d30: ldr      x9, [x9, #0xc8]
08c87d34: add      x9, x9, x10, lsl #3
08c87d38: ldur     x9, [x9, #-8]
08c87d3c: cmp      x9, x8
08c87d40: b.ne     #0x8c87d58
08c87d44: add      x8, x0, #0x228
08c87d48: ldr      x9, [x0, #0x238]
08c87d4c: ldr      q0, [x8]
08c87d50: str      x9, [sp, #0xe0]
08c87d54: str      q0, [sp, #0xd0]
08c87d58: ldr      q0, [sp, #0xd0]
08c87d5c: ldr      x8, [sp, #0xe0]
08c87d60: add      x0, sp, #0x30
08c87d64: mov      x1, xzr
08c87d68: str      q0, [sp, #0x30]
08c87d6c: str      x8, [sp, #0x40]
08c87d70: bl       #0x3ac5138
08c87d74: fcmp     s10, s0
08c87d78: mov      x0, x20
08c87d7c: mov      x1, xzr
08c87d80: fcsel    s12, s10, s0, gt
08c87d84: bl       #0x66af6fc ; Oak.BuffStats.get_DefenseAdd
08c87d88: add      x8, sp, #0x18
08c87d8c: mov      x0, x20
08c87d90: mov      x1, xzr
08c87d94: mov      v10.16b, v0.16b
08c87d98: bl       #0x66b0d38 ; Oak.BuffStats.get_FinalDefenseScale
08c87d9c: ldur     q0, [sp, #0x18]
08c87da0: ldr      x8, [sp, #0x28]
08c87da4: mov      x0, sp
08c87da8: mov      x1, xzr
08c87dac: str      q0, [sp]
08c87db0: str      x8, [sp, #0x10]
08c87db4: bl       #0x3ac5138
08c87db8: ldr      x8, [x19, #0x4c8]
08c87dbc: cbz      x8, #0x8c87e34
08c87dc0: adrp     x9, #0x9b83000
08c87dc4: ldr      x9, [x9, #0x6c8]
08c87dc8: ldr      w19, [x8, #0xa4]
08c87dcc: mov      v11.16b, v0.16b
08c87dd0: fadd     s0, s9, s12
08c87dd4: ldr      x0, [x9]
08c87dd8: fmov     s1, wzr
08c87ddc: fmaxnm   s9, s0, s1
08c87de0: ldr      w9, [x0, #0xe0]
08c87de4: cbnz     w9, #0x8c87dec
08c87de8: bl       #0x39d35c4
08c87dec: mov      w0, w19
08c87df0: mov      x1, xzr
08c87df4: bl       #0x622e95c ; Oak.GlobalBalanceModifier.DefenceModifier
08c87df8: fadd     s1, s8, s10
08c87dfc: fmul     s1, s1, s9
08c87e00: fmul     s1, s1, s11
08c87e04: fmul     s0, s1, s0
08c87e08: ldp      x20, x19, [sp, #0x140]
08c87e0c: ldp      x22, x21, [sp, #0x130]
08c87e10: ldp      x29, x30, [sp, #0x120]
08c87e14: ldp      d9, d8, [sp, #0x110]
08c87e18: ldp      d11, d10, [sp, #0x100]
08c87e1c: ldr      d12, [sp, #0xf0]
08c87e20: add      sp, sp, #0x150
08c87e24: ret      
08c87e28: mov      x1, xzr
08c87e2c: bl       #0x759cf28 ; Oak.StatCalculator.GetFinalDefense
08c87e30: b        #0x8c87bf8
08c87e34: bl       #0x39d36e4