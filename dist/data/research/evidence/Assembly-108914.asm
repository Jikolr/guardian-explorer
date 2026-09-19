075a28a8: stp      d9, d8, [sp, #-0x30]!
075a28ac: str      x30, [sp, #0x10]
075a28b0: stp      x20, x19, [sp, #0x20]
075a28b4: adrp     x20, #0xa26e000
075a28b8: ldrb     w8, [x20, #0x549]
075a28bc: mov      x19, x0
075a28c0: tbnz     w8, #0, #0x75a28f0
075a28c4: adrp     x0, #0x9b46000
075a28c8: ldr      x0, [x0, #0x140]
075a28cc: bl       #0x39d34bc
075a28d0: adrp     x0, #0x9b47000
075a28d4: ldr      x0, [x0, #0x78]
075a28d8: bl       #0x39d34bc
075a28dc: adrp     x0, #0x9b46000
075a28e0: ldr      x0, [x0, #0x18]
075a28e4: bl       #0x39d34bc
075a28e8: mov      w8, #1
075a28ec: strb     w8, [x20, #0x549]
075a28f0: mov      w0, #0x113d
075a28f4: mov      x1, xzr
075a28f8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a28fc: tbz      w0, #0, #0x75a2928
075a2900: mov      w0, #0x113d
075a2904: mov      x1, xzr
075a2908: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a290c: cbz      x0, #0x75a2afc
075a2910: mov      x1, x19
075a2914: ldp      x20, x19, [sp, #0x20]
075a2918: ldr      x30, [sp, #0x10]
075a291c: mov      x2, xzr
075a2920: ldp      d9, d8, [sp], #0x30
075a2924: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
075a2928: cbz      x19, #0x75a2afc
075a292c: mov      x0, x19
075a2930: mov      x1, xzr
075a2934: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
075a2938: cbz      x0, #0x75a2afc
075a293c: mov      x1, xzr
075a2940: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
075a2944: cbz      x0, #0x75a2afc
075a2948: ldr      w20, [x0, #0xa4]
075a294c: mov      x0, x19
075a2950: mov      x1, xzr
075a2954: bl       #0x8c2f688 ; Oak.Character.get_CharacterInfo
075a2958: fmov     s8, wzr
075a295c: fmov     s9, wzr
075a2960: cbz      x0, #0x75a2998
075a2964: mov      x1, xzr
075a2968: bl       #0x60977b4 ; Oak.CharacterInfo.get_OptionStats
075a296c: fmov     s9, wzr
075a2970: cbz      x0, #0x75a2998
075a2974: mov      x1, xzr
075a2978: bl       #0x69d96b0 ; Oak.CharacterOptionStats.get_SuperSkillScale
075a297c: adrp     x8, #0x9b46000
075a2980: ldr      x8, [x8, #0x18]
075a2984: add      x0, sp, #0x18
075a2988: str      xzr, [sp, #0x18]
075a298c: ldr      x1, [x8]
075a2990: bl       #0x4b43f40
075a2994: ldr      s9, [sp, #0x1c]
075a2998: ldr      x0, [x19, #0x188]
075a299c: cbz      x0, #0x75a29b0
075a29a0: mov      w1, w20
075a29a4: mov      x2, xzr
075a29a8: bl       #0x7735c04 ; Oak.Weapon.GetSuperSkillScale
075a29ac: mov      v8.16b, v0.16b
075a29b0: ldr      x0, [x19, #0x190]
075a29b4: fadd     s9, s9, s8
075a29b8: fmov     s8, wzr
075a29bc: fmov     s0, wzr
075a29c0: cbz      x0, #0x75a29d0
075a29c4: mov      w1, w20
075a29c8: mov      x2, xzr
075a29cc: bl       #0x7735c04 ; Oak.Weapon.GetSuperSkillScale
075a29d0: ldr      x0, [x19, #0x198]
075a29d4: fadd     s9, s9, s0
075a29d8: cbz      x0, #0x75a29f0
075a29dc: ldr      x8, [x0]
075a29e0: ldr      x9, [x8, #0x2f8]
075a29e4: ldr      x1, [x8, #0x300]
075a29e8: blr      x9
075a29ec: mov      v8.16b, v0.16b
075a29f0: ldr      x0, [x19, #0x1a0]
075a29f4: fadd     s9, s9, s8
075a29f8: fmov     s8, wzr
075a29fc: fmov     s0, wzr
075a2a00: cbz      x0, #0x75a2a14
075a2a04: ldr      x8, [x0]
075a2a08: ldr      x9, [x8, #0x258]
075a2a0c: ldr      x1, [x8, #0x260]
075a2a10: blr      x9
075a2a14: ldr      x0, [x19, #0x1a8]
075a2a18: fadd     s9, s9, s0
075a2a1c: cbz      x0, #0x75a2a34
075a2a20: ldr      x8, [x0]
075a2a24: ldr      x9, [x8, #0x258]
075a2a28: ldr      x1, [x8, #0x260]
075a2a2c: blr      x9
075a2a30: mov      v8.16b, v0.16b
075a2a34: ldr      x0, [x19, #0x1b0]
075a2a38: fadd     s9, s9, s8
075a2a3c: fmov     s8, wzr
075a2a40: fmov     s0, wzr
075a2a44: cbz      x0, #0x75a2a58
075a2a48: ldr      x8, [x0]
075a2a4c: ldr      x9, [x8, #0x258]
075a2a50: ldr      x1, [x8, #0x260]
075a2a54: blr      x9
075a2a58: ldr      x0, [x19, #0x1b8]
075a2a5c: fadd     s9, s9, s0
075a2a60: cbz      x0, #0x75a2a78
075a2a64: ldr      x8, [x0]
075a2a68: ldr      x9, [x8, #0x258]
075a2a6c: ldr      x1, [x8, #0x260]
075a2a70: blr      x9
075a2a74: mov      v8.16b, v0.16b
075a2a78: mov      x0, x19
075a2a7c: mov      x1, xzr
075a2a80: fadd     s8, s9, s8
075a2a84: bl       #0x8c2f688 ; Oak.Character.get_CharacterInfo
075a2a88: cbz      x0, #0x75a2ae8
075a2a8c: mov      x1, xzr
075a2a90: bl       #0x60977b4 ; Oak.CharacterInfo.get_OptionStats
075a2a94: cbz      x0, #0x75a2ae8
075a2a98: adrp     x20, #0x9b46000
075a2a9c: ldr      x20, [x20, #0x140]
075a2aa0: mov      x19, x0
075a2aa4: ldr      x0, [x20]
075a2aa8: ldr      w8, [x0, #0xe0]
075a2aac: cbnz     w8, #0x75a2ab8
075a2ab0: bl       #0x39d35c4
075a2ab4: ldr      x0, [x20]
075a2ab8: ldr      x8, [x0, #0xb8]
075a2abc: mov      x0, x19
075a2ac0: ldr      x1, [x8, #0x220]
075a2ac4: bl       #0x75a2b00 ; Oak.StatCalculator.GetAccountSuperSkillScale
075a2ac8: ldr      x8, [x20]
075a2acc: mov      x0, x19
075a2ad0: mov      v9.16b, v0.16b
075a2ad4: ldr      x8, [x8, #0xb8]
075a2ad8: ldr      x1, [x8, #0x228]
075a2adc: bl       #0x75a2b00 ; Oak.StatCalculator.GetAccountSuperSkillScale
075a2ae0: fadd     s0, s9, s0
075a2ae4: fadd     s8, s8, s0
075a2ae8: ldp      x20, x19, [sp, #0x20]
075a2aec: ldr      x30, [sp, #0x10]
075a2af0: mov      v0.16b, v8.16b
075a2af4: ldp      d9, d8, [sp], #0x30
075a2af8: ret      
075a2afc: bl       #0x39d36e4