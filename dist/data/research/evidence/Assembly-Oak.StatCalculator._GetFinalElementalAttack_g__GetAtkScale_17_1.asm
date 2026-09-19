0759ed0c: stp      d13, d12, [sp, #-0x60]!
0759ed10: stp      d11, d10, [sp, #0x10]
0759ed14: stp      d9, d8, [sp, #0x20]
0759ed18: str      x30, [sp, #0x30]
0759ed1c: stp      x22, x21, [sp, #0x40]
0759ed20: stp      x20, x19, [sp, #0x50]
0759ed24: ldr      x20, [x0]
0759ed28: mov      x19, x0
0759ed2c: fmov     s8, wzr
0759ed30: fmov     s9, wzr
0759ed34: cbz      x20, #0x759ed80
0759ed38: ldr      w21, [x19, #8]
0759ed3c: mov      x0, x20
0759ed40: mov      x1, xzr
0759ed44: bl       #0x66ec4fc ; Oak.Item.get_Level
0759ed48: ldr      x8, [x19]
0759ed4c: cbz      x8, #0x759eec8
0759ed50: mov      w22, w0
0759ed54: mov      x0, x8
0759ed58: mov      x1, xzr
0759ed5c: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759ed60: ldr      w4, [x19, #0x10]
0759ed64: mov      w3, w0
0759ed68: mov      x0, x20
0759ed6c: mov      w1, w21
0759ed70: mov      w2, w22
0759ed74: mov      x5, xzr
0759ed78: bl       #0x7732690 ; Oak.Weapon.GetElementalAttackScale
0759ed7c: mov      v9.16b, v0.16b
0759ed80: ldr      x20, [x19, #0x20]
0759ed84: cbz      x20, #0x759edd0
0759ed88: ldr      w21, [x19, #8]
0759ed8c: mov      x0, x20
0759ed90: mov      x1, xzr
0759ed94: bl       #0x66ec4fc ; Oak.Item.get_Level
0759ed98: ldr      x8, [x19, #0x20]
0759ed9c: cbz      x8, #0x759eec8
0759eda0: mov      w22, w0
0759eda4: mov      x0, x8
0759eda8: mov      x1, xzr
0759edac: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759edb0: ldr      w4, [x19, #0x10]
0759edb4: mov      w3, w0
0759edb8: mov      x0, x20
0759edbc: mov      w1, w21
0759edc0: mov      w2, w22
0759edc4: mov      x5, xzr
0759edc8: bl       #0x7732690 ; Oak.Weapon.GetElementalAttackScale
0759edcc: mov      v8.16b, v0.16b
0759edd0: ldr      x20, [x19, #0x28]
0759edd4: fmov     s10, wzr
0759edd8: fmov     s11, wzr
0759eddc: cbz      x20, #0x759ee28
0759ede0: ldr      w21, [x19, #8]
0759ede4: mov      x0, x20
0759ede8: mov      x1, xzr
0759edec: bl       #0x66ec4fc ; Oak.Item.get_Level
0759edf0: ldr      x8, [x19, #0x28]
0759edf4: cbz      x8, #0x759eec8
0759edf8: mov      w22, w0
0759edfc: mov      x0, x8
0759ee00: mov      x1, xzr
0759ee04: bl       #0x66f1924 ; Oak.Item.get_LimitBreaks
0759ee08: ldr      w4, [x19, #0x10]
0759ee0c: mov      w3, w0
0759ee10: mov      x0, x20
0759ee14: mov      w1, w21
0759ee18: mov      w2, w22
0759ee1c: mov      x5, xzr
0759ee20: bl       #0x7732690 ; Oak.Weapon.GetElementalAttackScale
0759ee24: mov      v11.16b, v0.16b
0759ee28: ldr      x0, [x19, #0x30]
0759ee2c: cbz      x0, #0x759ee40
0759ee30: ldr      w1, [x19, #8]
0759ee34: mov      x2, xzr
0759ee38: bl       #0x6a87c94 ; Oak.Orb.GetElementalAttackScale
0759ee3c: mov      v10.16b, v0.16b
0759ee40: ldr      x0, [x19, #0x38]
0759ee44: fmov     s12, wzr
0759ee48: fmov     s13, wzr
0759ee4c: cbz      x0, #0x759ee60
0759ee50: ldr      w1, [x19, #8]
0759ee54: mov      x2, xzr
0759ee58: bl       #0x6a87c94 ; Oak.Orb.GetElementalAttackScale
0759ee5c: mov      v13.16b, v0.16b
0759ee60: ldr      x0, [x19, #0x40]
0759ee64: cbz      x0, #0x759ee78
0759ee68: ldr      w1, [x19, #8]
0759ee6c: mov      x2, xzr
0759ee70: bl       #0x6883b9c ; Oak.Merch.GetElementalAttackScale
0759ee74: mov      v12.16b, v0.16b
0759ee78: ldr      x0, [x19, #0x48]
0759ee7c: cbz      x0, #0x759ee90
0759ee80: ldr      w1, [x19, #8]
0759ee84: mov      x2, xzr
0759ee88: bl       #0x6b052fc ; Oak.Relic.GetElementalAttackScale
0759ee8c: b        #0x759ee94
0759ee90: fmov     s0, wzr
0759ee94: fadd     s2, s9, s8
0759ee98: fadd     s1, s10, s13
0759ee9c: fadd     s2, s2, s11
0759eea0: ldp      x20, x19, [sp, #0x50]
0759eea4: ldp      x22, x21, [sp, #0x40]
0759eea8: ldr      x30, [sp, #0x30]
0759eeac: ldp      d9, d8, [sp, #0x20]
0759eeb0: ldp      d11, d10, [sp, #0x10]
0759eeb4: fadd     s0, s12, s0
0759eeb8: fadd     s1, s2, s1
0759eebc: fadd     s0, s1, s0
0759eec0: ldp      d13, d12, [sp], #0x60
0759eec4: ret      
0759eec8: bl       #0x39d36e4