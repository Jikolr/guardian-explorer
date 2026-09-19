0759eb40: str      d12, [sp, #-0x50]!
0759eb44: stp      d11, d10, [sp, #8]
0759eb48: stp      d9, d8, [sp, #0x18]
0759eb4c: str      x30, [sp, #0x28]
0759eb50: stp      x22, x21, [sp, #0x30]
0759eb54: stp      x20, x19, [sp, #0x40]
0759eb58: ldr      x20, [x0]
0759eb5c: mov      x19, x0
0759eb60: cbz      x20, #0x759ebb4
0759eb64: ldr      w21, [x19, #8]
0759eb68: mov      x0, x20
0759eb6c: mov      x1, xzr
0759eb70: bl       #0x66ec4fc ; Oak.Item.get_Level
0759eb74: ldr      x8, [x19]
0759eb78: cbz      x8, #0x759ed08
0759eb7c: mov      w22, w0
0759eb80: mov      x0, x8
0759eb84: mov      x1, xzr
0759eb88: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759eb8c: ldp      w4, w5, [x19, #0xc]
0759eb90: mov      w3, w0
0759eb94: mov      x0, x20
0759eb98: mov      w1, w21
0759eb9c: mov      w2, w22
0759eba0: mov      x6, xzr
0759eba4: mov      x7, xzr
0759eba8: bl       #0x7732188 ; Oak.Weapon.GetElementalAttack
0759ebac: mov      v8.16b, v0.16b
0759ebb0: b        #0x759ebb8
0759ebb4: fmov     s8, wzr
0759ebb8: ldr      x0, [x19, #0x18]
0759ebbc: cbz      x0, #0x759ebd8
0759ebc0: ldr      x1, [x19]
0759ebc4: mov      w2, #1
0759ebc8: mov      x3, xzr
0759ebcc: bl       #0x69da290 ; Oak.CharacterOptionStats.WeaponAttackStatFinalScale
0759ebd0: mov      v9.16b, v0.16b
0759ebd4: b        #0x759ebdc
0759ebd8: fmov     s9, #1.00000000
0759ebdc: ldr      x20, [x19, #0x20]
0759ebe0: cbz      x20, #0x759ec34
0759ebe4: ldr      w21, [x19, #8]
0759ebe8: mov      x0, x20
0759ebec: mov      x1, xzr
0759ebf0: bl       #0x66ec4fc ; Oak.Item.get_Level
0759ebf4: ldr      x8, [x19, #0x20]
0759ebf8: cbz      x8, #0x759ed08
0759ebfc: mov      w22, w0
0759ec00: mov      x0, x8
0759ec04: mov      x1, xzr
0759ec08: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759ec0c: ldp      w4, w5, [x19, #0xc]
0759ec10: mov      w3, w0
0759ec14: mov      x0, x20
0759ec18: mov      w1, w21
0759ec1c: mov      w2, w22
0759ec20: mov      x6, xzr
0759ec24: mov      x7, xzr
0759ec28: bl       #0x7732188 ; Oak.Weapon.GetElementalAttack
0759ec2c: mov      v10.16b, v0.16b
0759ec30: b        #0x759ec38
0759ec34: fmov     s10, wzr
0759ec38: ldr      x0, [x19, #0x18]
0759ec3c: cbz      x0, #0x759ec58
0759ec40: ldr      x1, [x19, #0x20]
0759ec44: mov      w2, #2
0759ec48: mov      x3, xzr
0759ec4c: bl       #0x69da290 ; Oak.CharacterOptionStats.WeaponAttackStatFinalScale
0759ec50: mov      v11.16b, v0.16b
0759ec54: b        #0x759ec5c
0759ec58: fmov     s11, #1.00000000
0759ec5c: ldr      x20, [x19, #0x28]
0759ec60: cbz      x20, #0x759ecb4
0759ec64: ldr      w21, [x19, #8]
0759ec68: mov      x0, x20
0759ec6c: mov      x1, xzr
0759ec70: bl       #0x66ec4fc ; Oak.Item.get_Level
0759ec74: ldr      x8, [x19, #0x28]
0759ec78: cbz      x8, #0x759ed08
0759ec7c: mov      w22, w0
0759ec80: mov      x0, x8
0759ec84: mov      x1, xzr
0759ec88: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759ec8c: ldp      w4, w5, [x19, #0xc]
0759ec90: mov      w3, w0
0759ec94: mov      x0, x20
0759ec98: mov      w1, w21
0759ec9c: mov      w2, w22
0759eca0: mov      x6, xzr
0759eca4: mov      x7, xzr
0759eca8: bl       #0x7732188 ; Oak.Weapon.GetElementalAttack
0759ecac: mov      v12.16b, v0.16b
0759ecb0: b        #0x759ecb8
0759ecb4: fmov     s12, wzr
0759ecb8: ldr      x0, [x19, #0x18]
0759ecbc: cbz      x0, #0x759ecd4
0759ecc0: ldr      x1, [x19, #0x28]
0759ecc4: mov      w2, #6
0759ecc8: mov      x3, xzr
0759eccc: bl       #0x69da290 ; Oak.CharacterOptionStats.WeaponAttackStatFinalScale
0759ecd0: b        #0x759ecd8
0759ecd4: fmov     s0, #1.00000000
0759ecd8: fmul     s1, s10, s11
0759ecdc: fmul     s2, s8, s9
0759ece0: ldp      x20, x19, [sp, #0x40]
0759ece4: ldp      x22, x21, [sp, #0x30]
0759ece8: ldr      x30, [sp, #0x28]
0759ecec: ldp      d9, d8, [sp, #0x18]
0759ecf0: ldp      d11, d10, [sp, #8]
0759ecf4: fmul     s0, s12, s0
0759ecf8: fadd     s1, s2, s1
0759ecfc: fadd     s0, s1, s0
0759ed00: ldr      d12, [sp], #0x50
0759ed04: ret      
0759ed08: bl       #0x39d36e4