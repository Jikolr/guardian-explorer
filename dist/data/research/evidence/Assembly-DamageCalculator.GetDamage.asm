// ['damage', 'target', 'elementalType', 'damageType', 'targetOptionModifier', 'damageModifier', 'useHighestBoost', 'ignoreImmunePer']
062a6eac: sub      sp, sp, #0x100
062a6eb0: stp      d11, d10, [sp, #0x90]
062a6eb4: stp      d9, d8, [sp, #0xa0]
062a6eb8: str      x30, [sp, #0xb0]
062a6ebc: stp      x26, x25, [sp, #0xc0]
062a6ec0: stp      x24, x23, [sp, #0xd0]
062a6ec4: stp      x22, x21, [sp, #0xe0]
062a6ec8: stp      x20, x19, [sp, #0xf0]
062a6ecc: adrp     x23, #0xa267000
062a6ed0: ldrb     w8, [x23, #0x580]
062a6ed4: mov      v11.16b, v3.16b
062a6ed8: mov      w19, w3
062a6edc: mov      v8.16b, v2.16b
062a6ee0: mov      v9.16b, v1.16b
062a6ee4: mov      w22, w2
062a6ee8: mov      w20, w1
062a6eec: mov      x21, x0
062a6ef0: mov      v10.16b, v0.16b
062a6ef4: tbnz     w8, #0, #0x62a6f30
062a6ef8: adrp     x0, #0x9b76000
062a6efc: ldr      x0, [x0, #0x380]
062a6f00: bl       #0x39d34bc
062a6f04: adrp     x0, #0x9b46000
062a6f08: ldr      x0, [x0, #0x140]
062a6f0c: bl       #0x39d34bc
062a6f10: adrp     x0, #0x9b44000
062a6f14: ldr      x0, [x0, #0xdb0]
062a6f18: bl       #0x39d34bc
062a6f1c: adrp     x0, #0x9b46000
062a6f20: ldr      x0, [x0, #0xcd0]
062a6f24: bl       #0x39d34bc
062a6f28: mov      w8, #1
062a6f2c: strb     w8, [x23, #0x580]
062a6f30: mov      w0, #0xa62
062a6f34: mov      x1, xzr
062a6f38: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a6f3c: tbz      w0, #0, #0x62a6f98
062a6f40: mov      w0, #0xa62
062a6f44: mov      x1, xzr
062a6f48: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a6f4c: cbz      x0, #0x62a7428
062a6f50: and      w4, w19, #1
062a6f54: mov      v0.16b, v10.16b
062a6f58: mov      x1, x21
062a6f5c: mov      w2, w20
062a6f60: mov      w3, w22
062a6f64: mov      v1.16b, v9.16b
062a6f68: mov      v2.16b, v8.16b
062a6f6c: mov      v3.16b, v11.16b
062a6f70: ldp      x20, x19, [sp, #0xf0]
062a6f74: ldp      x22, x21, [sp, #0xe0]
062a6f78: ldp      x24, x23, [sp, #0xd0]
062a6f7c: ldp      x26, x25, [sp, #0xc0]
062a6f80: ldr      x30, [sp, #0xb0]
062a6f84: ldp      d9, d8, [sp, #0xa0]
062a6f88: ldp      d11, d10, [sp, #0x90]
062a6f8c: mov      x5, xzr
062a6f90: add      sp, sp, #0x100
062a6f94: b        #0x8639284 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_747
062a6f98: cbz      x21, #0x62a7428
062a6f9c: adrp     x24, #0x9b44000
062a6fa0: ldr      x8, [x21]
062a6fa4: ldr      x24, [x24, #0xdb0]
062a6fa8: ldrh     w9, [x8, #0x12e]
062a6fac: ldr      x1, [x24]
062a6fb0: cbz      x9, #0x62a6fd4
062a6fb4: ldr      x10, [x8, #0xb0]
062a6fb8: add      x10, x10, #8
062a6fbc: ldur     x11, [x10, #-8]
062a6fc0: cmp      x11, x1
062a6fc4: b.eq     #0x62a6fe4
062a6fc8: subs     x9, x9, #1
062a6fcc: add      x10, x10, #0x10
062a6fd0: b.ne     #0x62a6fbc
062a6fd4: mov      w2, #0x13
062a6fd8: mov      x0, x21
062a6fdc: bl       #0x39a94f0
062a6fe0: b        #0x62a6ff4
062a6fe4: ldr      w9, [x10]
062a6fe8: add      w9, w9, #0x13
062a6fec: add      x8, x8, w9, sxtw #4
062a6ff0: add      x0, x8, #0x138
062a6ff4: ldp      x8, x1, [x0]
062a6ff8: mov      x0, x21
062a6ffc: blr      x8
062a7000: cbz      x0, #0x62a7428
062a7004: mov      x1, xzr
062a7008: and      w23, w22, #0x800
062a700c: bl       #0x63af868 ; Oak.FieldObjectStatsBehaviour.get_IgnoreDamage
062a7010: lsr      w8, w23, #0xb
062a7014: eor      w25, w8, #1
062a7018: tst      w0, w25
062a701c: b.eq     #0x62a7028
062a7020: mov      w0, wzr
062a7024: b        #0x62a7264
062a7028: ldr      x8, [x21]
062a702c: ldr      x1, [x24]
062a7030: ldrh     w9, [x8, #0x12e]
062a7034: cbz      x9, #0x62a7058
062a7038: ldr      x10, [x8, #0xb0]
062a703c: add      x10, x10, #8
062a7040: ldur     x11, [x10, #-8]
062a7044: cmp      x11, x1
062a7048: b.eq     #0x62a7068
062a704c: subs     x9, x9, #1
062a7050: add      x10, x10, #0x10
062a7054: b.ne     #0x62a7040
062a7058: mov      w2, #0x13
062a705c: mov      x0, x21
062a7060: bl       #0x39a94f0
062a7064: b        #0x62a7078
062a7068: ldr      w9, [x10]
062a706c: add      w9, w9, #0x13
062a7070: add      x8, x8, w9, sxtw #4
062a7074: add      x0, x8, #0x138
062a7078: ldp      x8, x1, [x0]
062a707c: mov      x0, x21
062a7080: blr      x8
062a7084: cbz      x0, #0x62a7428
062a7088: mov      x1, xzr
062a708c: bl       #0x63af900 ; Oak.FieldObjectStatsBehaviour.get_ImmuneDamageTypeFlag
062a7090: and      w8, w0, w22
062a7094: tst      w8, #0xffff
062a7098: cset     w8, ne
062a709c: tst      w25, w8
062a70a0: b.eq     #0x62a70b0
062a70a4: fcmp     s11, #0.0
062a70a8: b.le     #0x62a7020
062a70ac: fmul     s10, s10, s11
062a70b0: and      w25, w22, #0xffff
062a70b4: mov      w8, #0x4a0
062a70b8: ands     w26, w25, w8
062a70bc: b.ne     #0x62a71a8
062a70c0: fcmp     s10, #0.0
062a70c4: b.le     #0x62a7130
062a70c8: adrp     x8, #0x9b46000
062a70cc: ldr      x8, [x8, #0xcd0]
062a70d0: ldr      x9, [x21]
062a70d4: ldr      x8, [x8]
062a70d8: ldrb     w11, [x9, #0x130]
062a70dc: ldrb     w10, [x8, #0x130]
062a70e0: cmp      w11, w10
062a70e4: b.lo     #0x62a7130
062a70e8: ldr      x9, [x9, #0xc8]
062a70ec: add      x9, x9, x10, lsl #3
062a70f0: ldur     x9, [x9, #-8]
062a70f4: cmp      x9, x8
062a70f8: b.ne     #0x62a7130
062a70fc: mov      x0, x21
062a7100: mov      x1, xzr
062a7104: bl       #0x69cd008 ; Oak.OptionCharacter.get_SummonableCharacterStatsBehaviour
062a7108: cbz      x0, #0x62a7428
062a710c: ldr      x8, [x0, #0x580]
062a7110: cbz      x8, #0x62a7428
062a7114: ldur     x0, [x8, #0x24]
062a7118: ldr      w1, [x8, #0x2c]
062a711c: mov      x2, xzr
062a7120: bl       #0x3ac38e8
062a7124: tbz      w0, #0, #0x62a7130
062a7128: mov      w0, #1
062a712c: b        #0x62a7264
062a7130: ldr      x8, [x21]
062a7134: ldr      x1, [x24]
062a7138: ldrh     w9, [x8, #0x12e]
062a713c: cbz      x9, #0x62a7160
062a7140: ldr      x10, [x8, #0xb0]
062a7144: add      x10, x10, #8
062a7148: ldur     x11, [x10, #-8]
062a714c: cmp      x11, x1
062a7150: b.eq     #0x62a7170
062a7154: subs     x9, x9, #1
062a7158: add      x10, x10, #0x10
062a715c: b.ne     #0x62a7148
062a7160: mov      w2, #0x13
062a7164: mov      x0, x21
062a7168: bl       #0x39a94f0
062a716c: b        #0x62a7180
062a7170: ldr      w9, [x10]
062a7174: add      w9, w9, #0x13
062a7178: add      x8, x8, w9, sxtw #4
062a717c: add      x0, x8, #0x138
062a7180: ldp      x8, x1, [x0]
062a7184: mov      x0, x21
062a7188: blr      x8
062a718c: cbz      x0, #0x62a7428
062a7190: ldr      x8, [x0]
062a7194: mov      w1, w22
062a7198: ldp      x9, x2, [x8, #0x1c8]
062a719c: blr      x9
062a71a0: bl       #0x62a742c ; Oak.DamageCalculator.GetDefenseModifier
062a71a4: fmul     s10, s10, s0
062a71a8: ldr      x8, [x21]
062a71ac: ldr      x1, [x24]
062a71b0: ldrh     w9, [x8, #0x12e]
062a71b4: cbz      x9, #0x62a71d8
062a71b8: ldr      x10, [x8, #0xb0]
062a71bc: add      x10, x10, #8
062a71c0: ldur     x11, [x10, #-8]
062a71c4: cmp      x11, x1
062a71c8: b.eq     #0x62a71e8
062a71cc: subs     x9, x9, #1
062a71d0: add      x10, x10, #0x10
062a71d4: b.ne     #0x62a71c0
062a71d8: mov      w2, #0x13
062a71dc: mov      x0, x21
062a71e0: bl       #0x39a94f0
062a71e4: b        #0x62a71f8
062a71e8: ldr      w9, [x10]
062a71ec: add      w9, w9, #0x13
062a71f0: add      x8, x8, w9, sxtw #4
062a71f4: add      x0, x8, #0x138
062a71f8: ldp      x8, x1, [x0]
062a71fc: mov      x0, x21
062a7200: blr      x8
062a7204: cbz      x0, #0x62a7240
062a7208: adrp     x8, #0x9b76000
062a720c: ldr      x8, [x8, #0x380]
062a7210: ldr      x9, [x0]
062a7214: mov      x21, x0
062a7218: ldr      x8, [x8]
062a721c: ldrb     w11, [x9, #0x130]
062a7220: ldrb     w10, [x8, #0x130]
062a7224: cmp      w11, w10
062a7228: b.lo     #0x62a7240
062a722c: ldr      x9, [x9, #0xc8]
062a7230: add      x9, x9, x10, lsl #3
062a7234: ldur     x9, [x9, #-8]
062a7238: cmp      x9, x8
062a723c: b.eq     #0x62a7288
062a7240: fmul     s0, s10, s9
062a7244: mov      w8, #0x7f800000
062a7248: fmul     s0, s0, s8
062a724c: fmov     s1, w8
062a7250: fcvtzs   w8, s0
062a7254: fcmp     s0, s1
062a7258: mov      w9, #-0xffffffff80000000
062a725c: csel     w8, w9, w8, eq
062a7260: bic      w0, w8, w8, asr #31
062a7264: ldp      x20, x19, [sp, #0xf0]
062a7268: ldp      x22, x21, [sp, #0xe0]
062a726c: ldp      x24, x23, [sp, #0xd0]
062a7270: ldp      x26, x25, [sp, #0xc0]
062a7274: ldr      x30, [sp, #0xb0]
062a7278: ldp      d9, d8, [sp, #0xa0]
062a727c: ldp      d11, d10, [sp, #0x90]
062a7280: add      sp, sp, #0x100
062a7284: ret      
062a7288: fmov     s11, #1.00000000
062a728c: cbnz     w23, #0x62a72a4
062a7290: mov      x0, x21
062a7294: mov      w1, w20
062a7298: mov      x2, xzr
062a729c: bl       #0x8c87e38 ; Oak.CharacterStatsBehaviour.GetElementalDefenseDamageScale
062a72a0: mov      v11.16b, v0.16b
062a72a4: cbz      w26, #0x62a72c0
062a72a8: fmul     s0, s10, s9
062a72ac: mov      w8, #0x7f800000
062a72b0: fmul     s0, s0, s8
062a72b4: fmov     s1, w8
062a72b8: fmul     s0, s0, s11
062a72bc: b        #0x62a7250
062a72c0: mov      x0, x21
062a72c4: mov      w1, w20
062a72c8: mov      x2, xzr
062a72cc: bl       #0x8c89b94 ; Oak.CharacterStatsBehaviour.GetElementalResistance
062a72d0: adrp     x8, #0x176b000
062a72d4: ldr      s1, [x8, #0xb00]
062a72d8: mov      w8, #0x42c80000
062a72dc: fmov     s2, w8
062a72e0: fsub     s0, s2, s0
062a72e4: fmul     s0, s0, s1
062a72e8: fmul     s10, s10, s0
062a72ec: tbz      w19, #0, #0x62a7328
062a72f0: adrp     x19, #0x9b46000
062a72f4: ldr      x19, [x19, #0x140]
062a72f8: ldr      x0, [x19]
062a72fc: ldr      w8, [x0, #0xe0]
062a7300: cbnz     w8, #0x62a730c
062a7304: bl       #0x39d35c4
062a7308: ldr      x0, [x19]
062a730c: ldr      x8, [x0, #0xb8]
062a7310: add      x0, sp, #0x70
062a7314: ldur     x9, [x8, #0xdc]
062a7318: ldur     q0, [x8, #0xcc]
062a731c: str      x9, [sp, #0x80]
062a7320: str      q0, [sp, #0x70]
062a7324: b        #0x62a73c4
062a7328: tbz      w25, #0, #0x62a7378
062a732c: mov      w1, #1
062a7330: mov      x0, x21
062a7334: mov      x2, xzr
062a7338: bl       #0x8c8f36c ; Oak.CharacterStatsBehaviour.HasAilment
062a733c: tbz      w0, #0, #0x62a7378
062a7340: adrp     x19, #0x9b46000
062a7344: ldr      x19, [x19, #0x140]
062a7348: ldr      x0, [x19]
062a734c: ldr      w8, [x0, #0xe0]
062a7350: cbnz     w8, #0x62a735c
062a7354: bl       #0x39d35c4
062a7358: ldr      x0, [x19]
062a735c: ldr      x8, [x0, #0xb8]
062a7360: add      x0, sp, #0x50
062a7364: ldur     x9, [x8, #0xdc]
062a7368: ldur     q0, [x8, #0xcc]
062a736c: str      x9, [sp, #0x60]
062a7370: str      q0, [sp, #0x50]
062a7374: b        #0x62a73c4
062a7378: tbz      w25, #1, #0x62a73d0
062a737c: mov      w1, #3
062a7380: mov      x0, x21
062a7384: mov      x2, xzr
062a7388: bl       #0x8c8f36c ; Oak.CharacterStatsBehaviour.HasAilment
062a738c: tbz      w0, #0, #0x62a73d0
062a7390: adrp     x19, #0x9b46000
062a7394: ldr      x19, [x19, #0x140]
062a7398: ldr      x0, [x19]
062a739c: ldr      w8, [x0, #0xe0]
062a73a0: cbnz     w8, #0x62a73ac
062a73a4: bl       #0x39d35c4
062a73a8: ldr      x0, [x19]
062a73ac: ldr      x8, [x0, #0xb8]
062a73b0: add      x0, sp, #0x30
062a73b4: ldur     x9, [x8, #0xf4]
062a73b8: ldur     q0, [x8, #0xe4]
062a73bc: str      x9, [sp, #0x40]
062a73c0: str      q0, [sp, #0x30]
062a73c4: mov      x1, xzr
062a73c8: bl       #0x3ac5138
062a73cc: fmul     s10, s10, s0
062a73d0: mov      x0, x21
062a73d4: mov      x1, xzr
062a73d8: bl       #0x8c87fec ; Oak.CharacterStatsBehaviour.get_DamageReduction
062a73dc: fsub     s0, s10, s0
062a73e0: add      x8, sp, #0x18
062a73e4: mov      x0, x21
062a73e8: mov      x1, xzr
062a73ec: fmul     s10, s11, s0
062a73f0: bl       #0x8c86e30 ; Oak.CharacterStatsBehaviour.get_DefenseDamageMultiplier
062a73f4: ldur     q0, [sp, #0x18]
062a73f8: ldr      x8, [sp, #0x28]
062a73fc: mov      x0, sp
062a7400: mov      x1, xzr
062a7404: str      q0, [sp]
062a7408: str      x8, [sp, #0x10]
062a740c: bl       #0x3ac5138
062a7410: fmul     s0, s10, s0
062a7414: mov      w8, #0x7f800000
062a7418: fmul     s0, s0, s9
062a741c: fmov     s1, w8
062a7420: fmul     s0, s0, s8
062a7424: b        #0x62a7250
062a7428: bl       #0x39d36e4