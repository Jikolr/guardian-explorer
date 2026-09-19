Oak.EugeneCwpAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
069f9a1c: sub      sp, sp, #0x50
069f9a20: str      d8, [sp, #0x20]
069f9a24: str      x30, [sp, #0x28]
069f9a28: stp      x22, x21, [sp, #0x30]
069f9a2c: stp      x20, x19, [sp, #0x40]
069f9a30: adrp     x22, #0xa26a000
069f9a34: ldrb     w8, [x22, #0xace]
069f9a38: mov      x21, x2
069f9a3c: mov      x20, x1
069f9a40: mov      x19, x0
069f9a44: tbnz     w8, #0, #0x69f9a68
069f9a48: adrp     x0, #0x9b45000
069f9a4c: ldr      x0, [x0, #0x740]
069f9a50: bl       #0x39d34bc ; unmapped
069f9a54: adrp     x0, #0x9b44000
069f9a58: ldr      x0, [x0, #0xdb0]
069f9a5c: bl       #0x39d34bc ; unmapped
069f9a60: mov      w8, #1
069f9a64: strb     w8, [x22, #0xace]
069f9a68: mov      w0, #0xdcf4
069f9a6c: mov      x1, xzr
069f9a70: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069f9a74: tbz      w0, #0, #0x69f9ab0
069f9a78: mov      w0, #0xdcf4
069f9a7c: mov      x1, xzr
069f9a80: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069f9a84: cbz      x0, #0x69f9bd0
069f9a88: and      x3, x21, #0xffffffff
069f9a8c: mov      x1, x19
069f9a90: mov      x2, x20
069f9a94: ldp      x20, x19, [sp, #0x40]
069f9a98: ldp      x22, x21, [sp, #0x30]
069f9a9c: ldr      x30, [sp, #0x28]
069f9aa0: ldr      d8, [sp, #0x20]
069f9aa4: mov      x4, xzr
069f9aa8: add      sp, sp, #0x50
069f9aac: b        #0x8638698
069f9ab0: adrp     x21, #0xa25e000
069f9ab4: ldrb     w8, [x21, #0x1bb]
069f9ab8: cbnz     w8, #0x69f9ad0
069f9abc: adrp     x0, #0x9b45000
069f9ac0: ldr      x0, [x0, #0x6c8]
069f9ac4: bl       #0x39d34bc ; unmapped
069f9ac8: mov      w8, #1
069f9acc: strb     w8, [x21, #0x1bb]
069f9ad0: adrp     x8, #0x9b45000
069f9ad4: ldr      x8, [x8, #0x6c8]
069f9ad8: ldr      x8, [x8]
069f9adc: ldr      x8, [x8, #0xb8]
069f9ae0: ldr      x8, [x8]
069f9ae4: cbz      x8, #0x69f9bd0
069f9ae8: ldr      x0, [x8, #0xe8]
069f9aec: fmov     s8, #1.00000000
069f9af0: cbz      x0, #0x69f9bb4
069f9af4: ldr      x1, [x19, #0x18]
069f9af8: mov      w2, wzr
069f9afc: mov      x3, xzr
069f9b00: bl       #0x8b72950 ; Oak.BattleManager.GetBattleFor
069f9b04: cbz      x0, #0x69f9bb4
069f9b08: cbz      x20, #0x69f9bd0
069f9b0c: adrp     x10, #0x9b44000
069f9b10: ldr      x8, [x20]
069f9b14: ldr      x10, [x10, #0xdb0]
069f9b18: ldrh     w9, [x8, #0x12e]
069f9b1c: ldr      x1, [x10]
069f9b20: cbz      x9, #0x69f9b44
069f9b24: ldr      x10, [x8, #0xb0]
069f9b28: add      x10, x10, #8
069f9b2c: ldur     x11, [x10, #-8]
069f9b30: cmp      x11, x1
069f9b34: b.eq     #0x69f9b54
069f9b38: subs     x9, x9, #1
069f9b3c: add      x10, x10, #0x10
069f9b40: b.ne     #0x69f9b2c
069f9b44: mov      w2, #0x13
069f9b48: mov      x0, x20
069f9b4c: bl       #0x39a94f0 ; unmapped
069f9b50: b        #0x69f9b64
069f9b54: ldr      w9, [x10]
069f9b58: add      w9, w9, #0x13
069f9b5c: add      x8, x8, w9, sxtw #4
069f9b60: add      x0, x8, #0x138
069f9b64: ldp      x8, x1, [x0]
069f9b68: mov      x0, x20
069f9b6c: blr      x8
069f9b70: cbz      x0, #0x69f9bd0
069f9b74: adrp     x8, #0x9b45000
069f9b78: ldr      x8, [x8, #0x740]
069f9b7c: mov      w1, #1
069f9b80: mov      w2, wzr
069f9b84: ldr      x3, [x8]
069f9b88: bl       #0x4055878 ; unmapped
069f9b8c: tbz      w0, #0, #0x69f9bb4
069f9b90: ldr      x8, [x19, #0x50]
069f9b94: ldr      q0, [x19, #0x40]
069f9b98: mov      x0, sp
069f9b9c: mov      x1, xzr
069f9ba0: str      x8, [sp, #0x10]
069f9ba4: str      q0, [sp]
069f9ba8: bl       #0x3ac5138 ; unmapped
069f9bac: fmov     s1, #1.00000000
069f9bb0: fadd     s8, s0, s1
069f9bb4: mov      v0.16b, v8.16b
069f9bb8: ldp      x20, x19, [sp, #0x40]
069f9bbc: ldp      x22, x21, [sp, #0x30]
069f9bc0: ldr      x30, [sp, #0x28]
069f9bc4: ldr      d8, [sp, #0x20]
069f9bc8: add      sp, sp, #0x50
069f9bcc: ret      
069f9bd0: bl       #0x39d36e4 ; unmapped