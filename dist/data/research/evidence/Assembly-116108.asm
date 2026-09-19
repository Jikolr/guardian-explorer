0777cb30: sub      sp, sp, #0x60
0777cb34: str      d12, [sp, #0x20]
0777cb38: stp      d11, d10, [sp, #0x28]
0777cb3c: stp      d9, d8, [sp, #0x38]
0777cb40: str      x30, [sp, #0x48]
0777cb44: stp      x20, x19, [sp, #0x50]
0777cb48: adrp     x20, #0xa26f000
0777cb4c: ldrb     w8, [x20, #0x235]
0777cb50: mov      v8.16b, v2.16b
0777cb54: mov      v9.16b, v1.16b
0777cb58: mov      v10.16b, v0.16b
0777cb5c: mov      x19, x0
0777cb60: tbnz     w8, #0, #0x777cb78
0777cb64: adrp     x0, #0x9b44000
0777cb68: ldr      x0, [x0, #0xda8]
0777cb6c: bl       #0x39d34bc
0777cb70: mov      w8, #1
0777cb74: strb     w8, [x20, #0x235]
0777cb78: mov      w0, #0x5bb3
0777cb7c: movk     w0, #1, lsl #16
0777cb80: mov      x1, xzr
0777cb84: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0777cb88: tbz      w0, #0, #0x777cbd0
0777cb8c: mov      w0, #0x5bb3
0777cb90: movk     w0, #1, lsl #16
0777cb94: mov      x1, xzr
0777cb98: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0777cb9c: cbz      x0, #0x777cd84
0777cba0: mov      x1, x19
0777cba4: mov      v0.16b, v10.16b
0777cba8: mov      v1.16b, v9.16b
0777cbac: mov      v2.16b, v8.16b
0777cbb0: ldp      x20, x19, [sp, #0x50]
0777cbb4: ldr      x30, [sp, #0x48]
0777cbb8: ldp      d9, d8, [sp, #0x38]
0777cbbc: ldp      d11, d10, [sp, #0x28]
0777cbc0: ldr      d12, [sp, #0x20]
0777cbc4: mov      x2, xzr
0777cbc8: add      sp, sp, #0x60
0777cbcc: b        #0x869fc94 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_2333
0777cbd0: cbz      x19, #0x777cd84
0777cbd4: adrp     x10, #0x9b44000
0777cbd8: ldr      x8, [x19]
0777cbdc: ldr      x10, [x10, #0xda8]
0777cbe0: ldrh     w9, [x8, #0x12e]
0777cbe4: ldr      x1, [x10]
0777cbe8: cbz      x9, #0x777cc0c
0777cbec: ldr      x10, [x8, #0xb0]
0777cbf0: add      x10, x10, #8
0777cbf4: ldur     x11, [x10, #-8]
0777cbf8: cmp      x11, x1
0777cbfc: b.eq     #0x777cc1c
0777cc00: subs     x9, x9, #1
0777cc04: add      x10, x10, #0x10
0777cc08: b.ne     #0x777cbf4
0777cc0c: mov      x0, x19
0777cc10: mov      w2, wzr
0777cc14: bl       #0x39a94f0
0777cc18: b        #0x777cc28
0777cc1c: ldrsw    x9, [x10]
0777cc20: add      x8, x8, x9, lsl #4
0777cc24: add      x0, x8, #0x138
0777cc28: ldp      x8, x1, [x0]
0777cc2c: mov      x0, x19
0777cc30: blr      x8
0777cc34: cbz      x0, #0x777cd84
0777cc38: mov      x1, xzr
0777cc3c: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
0777cc40: cbz      x0, #0x777cd84
0777cc44: mov      x1, xzr
0777cc48: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
0777cc4c: cbz      x0, #0x777cd84
0777cc50: add      x8, x0, #0x1f4
0777cc54: ldr      x9, [x8, #0x10]
0777cc58: ldr      q0, [x8]
0777cc5c: mov      x0, sp
0777cc60: mov      x1, xzr
0777cc64: str      x9, [sp, #0x10]
0777cc68: str      q0, [sp]
0777cc6c: bl       #0x3ac5138
0777cc70: adrp     x20, #0xa25d000
0777cc74: ldrb     w8, [x20, #0xc90]
0777cc78: mov      v11.16b, v0.16b
0777cc7c: cbnz     w8, #0x777cc94
0777cc80: adrp     x0, #0x9b3f000
0777cc84: ldr      x0, [x0, #0xac0]
0777cc88: bl       #0x39d34bc
0777cc8c: mov      w8, #1
0777cc90: strb     w8, [x20, #0xc90]
0777cc94: adrp     x8, #0x9b3f000
0777cc98: ldr      x8, [x8, #0xac0]
0777cc9c: fdiv     s12, s11, s9
0777cca0: ldr      x0, [x8]
0777cca4: ldr      w8, [x0, #0xe0]
0777cca8: cbnz     w8, #0x777ccb0
0777ccac: bl       #0x39d35c4
0777ccb0: fcvt     d11, s12
0777ccb4: add      x0, sp, #0x18
0777ccb8: mov      v0.16b, v11.16b
0777ccbc: bl       #0x9749b00
0777ccc0: fcmp     s12, #0.0
0777ccc4: b.ge     #0x777cce0
0777ccc8: fmov     d1, #-0.50000000
0777cccc: fcmp     d0, d1
0777ccd0: b.ne     #0x777cd08
0777ccd4: ldr      d0, [sp, #0x18]
0777ccd8: fmov     d1, #-1.00000000
0777ccdc: b        #0x777ccf4
0777cce0: fmov     d1, #0.50000000
0777cce4: fcmp     d0, d1
0777cce8: b.ne     #0x777cd14
0777ccec: ldr      d0, [sp, #0x18]
0777ccf0: fmov     d1, #1.00000000
0777ccf4: fcvtzs   x8, d0
0777ccf8: fadd     d1, d0, d1
0777ccfc: tst      x8, #1
0777cd00: fcsel    d11, d0, d1, eq
0777cd04: b        #0x777cd1c
0777cd08: fadd     d0, d11, d1
0777cd0c: frintp   d11, d0
0777cd10: b        #0x777cd1c
0777cd14: fadd     d0, d11, d1
0777cd18: frintm   d11, d0
0777cd1c: mov      x0, x19
0777cd20: mov      v0.16b, v10.16b
0777cd24: mov      v1.16b, v9.16b
0777cd28: mov      x1, xzr
0777cd2c: fcvtzs   w20, d11
0777cd30: bl       #0x66e90d8 ; Oak.StaminaBattleActionExtensions.GetTotalDuration
0777cd34: mov      x8, #0x7ff0000000000000
0777cd38: mov      w9, #-0x31000000
0777cd3c: fmov     d2, x8
0777cd40: scvtf    s1, w20
0777cd44: fcmp     d11, d2
0777cd48: fmov     s2, w9
0777cd4c: fcsel    s1, s2, s1, eq
0777cd50: fadd     s1, s1, s8
0777cd54: fdiv     s1, s1, s0
0777cd58: fmov     s0, #1.00000000
0777cd5c: mov      x0, x19
0777cd60: mov      x1, xzr
0777cd64: bl       #0x669d0bc ; Oak.IBattleActionExtensions.CalculateAttackModifierFromDps
0777cd68: ldp      x20, x19, [sp, #0x50]
0777cd6c: ldr      x30, [sp, #0x48]
0777cd70: ldp      d9, d8, [sp, #0x38]
0777cd74: ldp      d11, d10, [sp, #0x28]
0777cd78: ldr      d12, [sp, #0x20]
0777cd7c: add      sp, sp, #0x60
0777cd80: ret      
0777cd84: bl       #0x39d36e4