08c8691c: sub      sp, sp, #0xb0
08c86920: str      d10, [sp, #0x70]
08c86924: stp      d9, d8, [sp, #0x78]
08c86928: str      x30, [sp, #0x88]
08c8692c: stp      x22, x21, [sp, #0x90]
08c86930: stp      x20, x19, [sp, #0xa0]
08c86934: adrp     x21, #0xa279000
08c86938: ldrb     w8, [x21, #0x938]
08c8693c: mov      w20, w1
08c86940: mov      x19, x0
08c86944: tbnz     w8, #0, #0x8c86974
08c86948: adrp     x0, #0x9b45000
08c8694c: ldr      x0, [x0, #0x3f8]
08c86950: bl       #0x39d34bc
08c86954: adrp     x0, #0x9b7c000
08c86958: ldr      x0, [x0, #0x320]
08c8695c: bl       #0x39d34bc
08c86960: adrp     x0, #0x9b3f000
08c86964: ldr      x0, [x0, #0x810]
08c86968: bl       #0x39d34bc
08c8696c: mov      w8, #1
08c86970: strb     w8, [x21, #0x938]
08c86974: mov      w0, #0x994
08c86978: mov      x1, xzr
08c8697c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c86980: tbz      w0, #0, #0x8c869bc
08c86984: mov      w0, #0x994
08c86988: mov      x1, xzr
08c8698c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c86990: cbz      x0, #0x8c86b6c
08c86994: mov      x1, x19
08c86998: mov      w2, w20
08c8699c: ldp      x20, x19, [sp, #0xa0]
08c869a0: ldp      x22, x21, [sp, #0x90]
08c869a4: ldr      x30, [sp, #0x88]
08c869a8: ldp      d9, d8, [sp, #0x78]
08c869ac: ldr      d10, [sp, #0x70]
08c869b0: mov      x3, xzr
08c869b4: add      sp, sp, #0xb0
08c869b8: b        #0x86357e0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_689
08c869bc: adrp     x8, #0x9b3f000
08c869c0: ldr      x9, [x19, #0x4c0]
08c869c4: ldr      x8, [x8, #0x810]
08c869c8: cbz      x9, #0x8c869ec
08c869cc: adrp     x10, #0x9b45000
08c869d0: ldr      x10, [x10, #0x3f8]
08c869d4: ldr      x11, [x9]
08c869d8: ldr      x10, [x10]
08c869dc: ldrb     w13, [x11, #0x130]
08c869e0: ldrb     w12, [x10, #0x130]
08c869e4: cmp      w13, w12
08c869e8: b.hs     #0x8c869f4
08c869ec: mov      x21, xzr
08c869f0: b        #0x8c86a08
08c869f4: ldr      x11, [x11, #0xc8]
08c869f8: add      x11, x11, x12, lsl #3
08c869fc: ldur     x11, [x11, #-8]
08c86a00: cmp      x11, x10
08c86a04: csel     x21, x9, xzr, eq
08c86a08: ldr      x0, [x8]
08c86a0c: ldr      w8, [x0, #0xe0]
08c86a10: cbnz     w8, #0x8c86a18
08c86a14: bl       #0x39d35c4
08c86a18: adrp     x22, #0x9b7c000
08c86a1c: ldr      x22, [x22, #0x320]
08c86a20: mov      x0, x21
08c86a24: mov      x1, xzr
08c86a28: mov      x2, xzr
08c86a2c: bl       #0x94bbcc8
08c86a30: fmov     s8, wzr
08c86a34: tbz      w0, #0, #0x8c86a4c
08c86a38: mov      x0, x21
08c86a3c: mov      w1, w20
08c86a40: mov      x2, xzr
08c86a44: bl       #0x759e764 ; Oak.StatCalculator.GetFinalElementalAttack
08c86a48: mov      v8.16b, v0.16b
08c86a4c: add      x21, x19, #0x98
08c86a50: mov      x0, x21
08c86a54: mov      x1, xzr
08c86a58: bl       #0x66af214 ; Oak.BuffStats.get_AiAttackMult
08c86a5c: ldr      x0, [x22]
08c86a60: mov      v9.16b, v0.16b
08c86a64: ldr      w8, [x0, #0xe0]
08c86a68: cbnz     w8, #0x8c86a70
08c86a6c: bl       #0x39d35c4
08c86a70: mov      w0, w20
08c86a74: mov      x1, xzr
08c86a78: bl       #0x66bc970 ; Oak.ElementalTypeExtensions.ToIndex
08c86a7c: ldr      x8, [x19, #0x168]
08c86a80: cbz      x8, #0x8c86b6c
08c86a84: mov      w20, w0
08c86a88: mov      x0, x8
08c86a8c: mov      w1, w20
08c86a90: mov      x2, xzr
08c86a94: bl       #0x66b1d64 ; ObscuredFloatContainer.get_Item
08c86a98: mov      x0, xzr
08c86a9c: mov      v10.16b, v0.16b
08c86aa0: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
08c86aa4: cbz      x0, #0x8c86b6c
08c86aa8: add      x8, x0, #0x704
08c86aac: ldr      x9, [x8, #0x10]
08c86ab0: ldr      q0, [x8]
08c86ab4: add      x0, sp, #0x50
08c86ab8: mov      x1, xzr
08c86abc: str      x9, [sp, #0x60]
08c86ac0: str      q0, [sp, #0x50]
08c86ac4: bl       #0x3ac5138
08c86ac8: ldr      x0, [x19, #0x160]
08c86acc: cbz      x0, #0x8c86b6c
08c86ad0: fcmp     s10, s0
08c86ad4: mov      w1, w20
08c86ad8: mov      x2, xzr
08c86adc: fmul     s8, s8, s9
08c86ae0: fcsel    s9, s10, s0, gt
08c86ae4: bl       #0x66b1d64 ; ObscuredFloatContainer.get_Item
08c86ae8: fadd     s0, s9, s0
08c86aec: fmov     s9, wzr
08c86af0: fmax     s0, s0, s9
08c86af4: fmul     s0, s8, s0
08c86af8: add      x8, sp, #0x38
08c86afc: mov      x0, x21
08c86b00: mov      x1, xzr
08c86b04: fmaxnm   s10, s0, s9
08c86b08: bl       #0x66b0c2c ; Oak.BuffStats.get_FinalAttackScale
08c86b0c: ldur     q0, [sp, #0x38]
08c86b10: ldr      x8, [sp, #0x48]
08c86b14: add      x0, sp, #0x20
08c86b18: mov      x1, xzr
08c86b1c: str      q0, [sp, #0x20]
08c86b20: str      x8, [sp, #0x30]
08c86b24: bl       #0x3ac5138
08c86b28: add      x8, sp, #8
08c86b2c: mov      x0, x19
08c86b30: mov      v8.16b, v0.16b
08c86b34: bl       #0x8c86b70 ; Oak.CharacterStatsBehaviour.get_AttackDamageMultiplier
08c86b38: add      x0, sp, #8
08c86b3c: mov      x1, xzr
08c86b40: bl       #0x3ac5138
08c86b44: fmul     s1, s10, s8
08c86b48: fmul     s0, s1, s0
08c86b4c: fmaxnm   s0, s0, s9
08c86b50: ldp      x20, x19, [sp, #0xa0]
08c86b54: ldp      x22, x21, [sp, #0x90]
08c86b58: ldr      x30, [sp, #0x88]
08c86b5c: ldp      d9, d8, [sp, #0x78]
08c86b60: ldr      d10, [sp, #0x70]
08c86b64: add      sp, sp, #0xb0
08c86b68: ret      
08c86b6c: bl       #0x39d36e4