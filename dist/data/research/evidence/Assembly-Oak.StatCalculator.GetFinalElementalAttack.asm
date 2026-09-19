0759e900: sub      sp, sp, #0x130
0759e904: str      d12, [sp, #0xa0]
0759e908: stp      d11, d10, [sp, #0xb0]
0759e90c: stp      d9, d8, [sp, #0xc0]
0759e910: stp      x29, x30, [sp, #0xd0]
0759e914: stp      x28, x27, [sp, #0xe0]
0759e918: stp      x26, x25, [sp, #0xf0]
0759e91c: stp      x24, x23, [sp, #0x100]
0759e920: stp      x22, x21, [sp, #0x110]
0759e924: stp      x20, x19, [sp, #0x120]
0759e928: adrp     x19, #0xa26e000
0759e92c: ldrb     w8, [x19, #0x536]
0759e930: mov      x25, x7
0759e934: mov      x24, x5
0759e938: mov      w20, w4
0759e93c: mov      x22, x3
0759e940: mov      w26, w2
0759e944: mov      v8.16b, v0.16b
0759e948: mov      w27, w1
0759e94c: str      x6, [sp, #0xa8]
0759e950: str      x0, [sp, #0x48]
0759e954: tbnz     w8, #0, #0x759e978
0759e958: adrp     x0, #0x9b46000
0759e95c: ldr      x0, [x0, #0x140]
0759e960: bl       #0x39d34bc
0759e964: adrp     x0, #0x9b78000
0759e968: ldr      x0, [x0, #0x8f8]
0759e96c: bl       #0x39d34bc
0759e970: mov      w8, #1
0759e974: strb     w8, [x19, #0x536]
0759e978: ldr      w23, [sp, #0x150]
0759e97c: ldp      x29, x28, [sp, #0x140]
0759e980: ldp      x21, x19, [sp, #0x130]
0759e984: mov      w0, #0x999
0759e988: mov      x1, xzr
0759e98c: stp      xzr, xzr, [sp, #0x50]
0759e990: str      xzr, [sp, #0x60]
0759e994: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0759e998: tbz      w0, #0, #0x759e9e8
0759e99c: mov      w0, #0x999
0759e9a0: mov      x1, xzr
0759e9a4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0759e9a8: cbz      x0, #0x759eb3c
0759e9ac: ldr      x1, [sp, #0x48]
0759e9b0: ldr      x7, [sp, #0xa8]
0759e9b4: mov      v0.16b, v8.16b
0759e9b8: mov      w2, w27
0759e9bc: mov      w3, w26
0759e9c0: mov      x4, x22
0759e9c4: mov      w5, w20
0759e9c8: mov      x6, x24
0759e9cc: str      xzr, [sp, #0x30]
0759e9d0: str      w23, [sp, #0x28]
0759e9d4: stp      x29, x28, [sp, #0x18]
0759e9d8: stp      x21, x19, [sp, #8]
0759e9dc: str      x25, [sp]
0759e9e0: bl       #0x863550c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_687
0759e9e4: b        #0x759eb10
0759e9e8: ldr      x8, [sp, #0xa8]
0759e9ec: add      x0, sp, #0x50
0759e9f0: str      x24, [sp, #0x50]
0759e9f4: stp      w20, w26, [sp, #0x58]
0759e9f8: str      w27, [sp, #0x60]
0759e9fc: stp      x22, x8, [sp, #0x68]
0759ea00: stp      x25, x21, [sp, #0x78]
0759ea04: stp      x19, x29, [sp, #0x88]
0759ea08: str      x28, [sp, #0x98]
0759ea0c: bl       #0x759eb40 ; Oak.StatCalculator.<GetFinalElementalAttack>g__GetEquipAtk|17_0
0759ea10: add      x0, sp, #0x50
0759ea14: mov      v9.16b, v0.16b
0759ea18: bl       #0x759ed0c ; Oak.StatCalculator.<GetFinalElementalAttack>g__GetAtkScale|17_1
0759ea1c: mov      v10.16b, v0.16b
0759ea20: cbz      x22, #0x759eabc
0759ea24: mov      x0, x22
0759ea28: mov      w1, w20
0759ea2c: mov      x2, xzr
0759ea30: bl       #0x69d9528 ; Oak.CharacterOptionStats.GetElementalAttackScale
0759ea34: adrp     x19, #0x9b46000
0759ea38: ldr      x19, [x19, #0x140]
0759ea3c: mov      v11.16b, v0.16b
0759ea40: ldr      x0, [x19]
0759ea44: ldr      w8, [x0, #0xe0]
0759ea48: cbnz     w8, #0x759ea54
0759ea4c: bl       #0x39d35c4
0759ea50: ldr      x0, [x19]
0759ea54: ldr      x8, [x0, #0xb8]
0759ea58: mov      x0, x22
0759ea5c: mov      w1, w20
0759ea60: mov      w3, w23
0759ea64: ldr      x2, [x8, #0x220]
0759ea68: bl       #0x759eecc ; Oak.StatCalculator.GetAccountAttackScale
0759ea6c: mov      x0, x22
0759ea70: mov      w1, w20
0759ea74: mov      w2, w23
0759ea78: mov      v12.16b, v0.16b
0759ea7c: bl       #0x759f1d4 ; Oak.StatCalculator.GetBlessAttackScale
0759ea80: ldr      x8, [x19]
0759ea84: fadd     s1, s11, s12
0759ea88: fadd     s0, s1, s0
0759ea8c: mov      x0, x22
0759ea90: ldr      x8, [x8, #0xb8]
0759ea94: mov      w1, w20
0759ea98: mov      w3, w23
0759ea9c: fadd     s10, s10, s0
0759eaa0: ldr      x2, [x8, #0x228]
0759eaa4: bl       #0x759eecc ; Oak.StatCalculator.GetAccountAttackScale
0759eaa8: fmov     s1, wzr
0759eaac: fadd     s0, s0, s1
0759eab0: fmov     s1, #1.00000000
0759eab4: fadd     s11, s0, s1
0759eab8: b        #0x759eac0
0759eabc: fmov     s11, #1.00000000
0759eac0: adrp     x8, #0x9b78000
0759eac4: ldr      x8, [x8, #0x8f8]
0759eac8: ldr      x0, [x8]
0759eacc: ldr      w8, [x0, #0xe0]
0759ead0: cbnz     w8, #0x759ead8
0759ead4: bl       #0x39d35c4
0759ead8: mov      w0, w23
0759eadc: mov      x1, xzr
0759eae0: bl       #0x619e3fc ; Oak.CoopSystem.GetBalanceModifier
0759eae4: cbz      x0, #0x759eb3c
0759eae8: ldr      x8, [x0]
0759eaec: ldr      x1, [sp, #0x48]
0759eaf0: ldp      x9, x2, [x8, #0x178]
0759eaf4: blr      x9
0759eaf8: fmov     s2, #1.00000000
0759eafc: fmul     s1, s9, s8
0759eb00: fadd     s2, s10, s2
0759eb04: fmul     s1, s1, s2
0759eb08: fmul     s1, s11, s1
0759eb0c: fmul     s0, s1, s0
0759eb10: ldp      x20, x19, [sp, #0x120]
0759eb14: ldp      x22, x21, [sp, #0x110]
0759eb18: ldp      x24, x23, [sp, #0x100]
0759eb1c: ldp      x26, x25, [sp, #0xf0]
0759eb20: ldp      x28, x27, [sp, #0xe0]
0759eb24: ldp      x29, x30, [sp, #0xd0]
0759eb28: ldp      d9, d8, [sp, #0xc0]
0759eb2c: ldp      d11, d10, [sp, #0xb0]
0759eb30: ldr      d12, [sp, #0xa0]
0759eb34: add      sp, sp, #0x130
0759eb38: ret      
0759eb3c: bl       #0x39d36e4