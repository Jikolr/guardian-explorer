// ['damageInfo']
062a9d5c: sub      sp, sp, #0x170
062a9d60: str      d10, [sp, #0xf0]
062a9d64: stp      d9, d8, [sp, #0x100]
062a9d68: stp      x29, x30, [sp, #0x110]
062a9d6c: stp      x28, x27, [sp, #0x120]
062a9d70: stp      x26, x25, [sp, #0x130]
062a9d74: stp      x24, x23, [sp, #0x140]
062a9d78: stp      x22, x21, [sp, #0x150]
062a9d7c: stp      x20, x19, [sp, #0x160]
062a9d80: adrp     x20, #0xa267000
062a9d84: ldrb     w8, [x20, #0x583]
062a9d88: mov      x19, x0
062a9d8c: tbnz     w8, #0, #0x62a9dec
062a9d90: adrp     x0, #0x9b76000
062a9d94: ldr      x0, [x0, #0x380]
062a9d98: bl       #0x39d34bc
062a9d9c: adrp     x0, #0x9b85000
062a9da0: ldr      x0, [x0, #0x498]
062a9da4: bl       #0x39d34bc
062a9da8: adrp     x0, #0x9b83000
062a9dac: ldr      x0, [x0, #0x6c8]
062a9db0: bl       #0x39d34bc
062a9db4: adrp     x0, #0x9b44000
062a9db8: ldr      x0, [x0, #0xea0]
062a9dbc: bl       #0x39d34bc
062a9dc0: adrp     x0, #0x9b44000
062a9dc4: ldr      x0, [x0, #0xdb0]
062a9dc8: bl       #0x39d34bc
062a9dcc: adrp     x0, #0x9b47000
062a9dd0: ldr      x0, [x0, #0x78]
062a9dd4: bl       #0x39d34bc
062a9dd8: adrp     x0, #0x9b46000
062a9ddc: ldr      x0, [x0, #0x18]
062a9de0: bl       #0x39d34bc
062a9de4: mov      w8, #1
062a9de8: strb     w8, [x20, #0x583]
062a9dec: mov      w0, #0x9a8
062a9df0: mov      x1, xzr
062a9df4: str      wzr, [sp, #0xfc]
062a9df8: stp      xzr, xzr, [sp, #0xd0]
062a9dfc: str      xzr, [sp, #0xe0]
062a9e00: stp      xzr, xzr, [sp, #0xb0]
062a9e04: str      xzr, [sp, #0xc0]
062a9e08: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a9e0c: tbz      w0, #0, #0x62a9e30
062a9e10: mov      w0, #0x9a8
062a9e14: mov      x1, xzr
062a9e18: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a9e1c: cbz      x0, #0x62aa60c
062a9e20: mov      x1, x19
062a9e24: mov      x2, xzr
062a9e28: bl       #0x86363ac ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_699
062a9e2c: b        #0x62aa5e4
062a9e30: mov      x0, x19
062a9e34: mov      x1, xzr
062a9e38: bl       #0x66c07cc ; Oak.DamageInfo.get_knockBackFactor
062a9e3c: ldr      x21, [x19, #0x10]
062a9e40: cbz      x21, #0x62aa60c
062a9e44: adrp     x23, #0x9b44000
062a9e48: ldr      x8, [x21]
062a9e4c: ldr      x23, [x23, #0xdb0]
062a9e50: mov      w20, w0
062a9e54: ldrh     w9, [x8, #0x12e]
062a9e58: ldr      x1, [x23]
062a9e5c: cbz      x9, #0x62a9e80
062a9e60: ldr      x10, [x8, #0xb0]
062a9e64: add      x10, x10, #8
062a9e68: ldur     x11, [x10, #-8]
062a9e6c: cmp      x11, x1
062a9e70: b.eq     #0x62a9e90
062a9e74: subs     x9, x9, #1
062a9e78: add      x10, x10, #0x10
062a9e7c: b.ne     #0x62a9e68
062a9e80: mov      w2, #0x13
062a9e84: mov      x0, x21
062a9e88: bl       #0x39a94f0
062a9e8c: b        #0x62a9ea0
062a9e90: ldr      w9, [x10]
062a9e94: add      w9, w9, #0x13
062a9e98: add      x8, x8, w9, sxtw #4
062a9e9c: add      x0, x8, #0x138
062a9ea0: ldp      x8, x1, [x0]
062a9ea4: mov      x0, x21
062a9ea8: blr      x8
062a9eac: adrp     x22, #0x9b76000
062a9eb0: ldr      x22, [x22, #0x380]
062a9eb4: cbz      x0, #0x62a9ee8
062a9eb8: ldr      x9, [x0]
062a9ebc: ldr      x8, [x22]
062a9ec0: ldrb     w11, [x9, #0x130]
062a9ec4: ldrb     w10, [x8, #0x130]
062a9ec8: cmp      w11, w10
062a9ecc: b.lo     #0x62a9ee4
062a9ed0: ldr      x9, [x9, #0xc8]
062a9ed4: add      x9, x9, x10, lsl #3
062a9ed8: ldur     x9, [x9, #-8]
062a9edc: cmp      x9, x8
062a9ee0: b.eq     #0x62aa3c0
062a9ee4: mov      w0, wzr
062a9ee8: sub      w1, w20, w0
062a9eec: mov      x0, x19
062a9ef0: mov      x2, xzr
062a9ef4: bl       #0x66c0a3c ; Oak.DamageInfo.set_knockBackResult
062a9ef8: mov      x0, x19
062a9efc: mov      x1, xzr
062a9f00: bl       #0x66c04d4 ; Oak.DamageInfo.get_stunFactor
062a9f04: ldr      x21, [x19, #0x10]
062a9f08: cbz      x21, #0x62aa60c
062a9f0c: ldr      x8, [x21]
062a9f10: ldr      x1, [x23]
062a9f14: mov      w20, w0
062a9f18: ldrh     w9, [x8, #0x12e]
062a9f1c: cbz      x9, #0x62a9f40
062a9f20: ldr      x10, [x8, #0xb0]
062a9f24: add      x10, x10, #8
062a9f28: ldur     x11, [x10, #-8]
062a9f2c: cmp      x11, x1
062a9f30: b.eq     #0x62a9f50
062a9f34: subs     x9, x9, #1
062a9f38: add      x10, x10, #0x10
062a9f3c: b.ne     #0x62a9f28
062a9f40: mov      w2, #0x13
062a9f44: mov      x0, x21
062a9f48: bl       #0x39a94f0
062a9f4c: b        #0x62a9f60
062a9f50: ldr      w9, [x10]
062a9f54: add      w9, w9, #0x13
062a9f58: add      x8, x8, w9, sxtw #4
062a9f5c: add      x0, x8, #0x138
062a9f60: ldp      x8, x1, [x0]
062a9f64: mov      x0, x21
062a9f68: blr      x8
062a9f6c: cbz      x0, #0x62a9fa0
062a9f70: ldr      x9, [x0]
062a9f74: ldr      x8, [x22]
062a9f78: ldrb     w11, [x9, #0x130]
062a9f7c: ldrb     w10, [x8, #0x130]
062a9f80: cmp      w11, w10
062a9f84: b.lo     #0x62a9f9c
062a9f88: ldr      x9, [x9, #0xc8]
062a9f8c: add      x9, x9, x10, lsl #3
062a9f90: ldur     x9, [x9, #-8]
062a9f94: cmp      x9, x8
062a9f98: b.eq     #0x62aa3cc
062a9f9c: mov      w0, wzr
062a9fa0: sub      w1, w20, w0
062a9fa4: mov      x0, x19
062a9fa8: mov      x2, xzr
062a9fac: bl       #0x66c0740 ; Oak.DamageInfo.set_stunResult
062a9fb0: adrp     x24, #0x9b44000
062a9fb4: ldr      x0, [x19, #0x10]
062a9fb8: ldr      x24, [x24, #0xea0]
062a9fbc: ldr      x1, [x24]
062a9fc0: bl       #0x39d35c8
062a9fc4: cbz      x0, #0x62aa2f4
062a9fc8: adrp     x21, #0x9b45000
062a9fcc: adrp     x27, #0x9b46000
062a9fd0: adrp     x28, #0x9b85000
062a9fd4: adrp     x29, #0x9b83000
062a9fd8: ldr      x21, [x21, #0x6c8]
062a9fdc: ldr      x27, [x27, #0x18]
062a9fe0: ldr      x28, [x28, #0x498]
062a9fe4: ldr      x29, [x29, #0x6c8]
062a9fe8: mov      x20, x0
062a9fec: mov      w25, #1
062a9ff0: adrp     x26, #0xa25e000
062a9ff4: fmov     s9, #1.00000000
062a9ff8: mov      w22, #1
062a9ffc: mov      x0, x19
062aa000: mov      w1, w22
062aa004: mov      x2, xzr
062aa008: bl       #0x66c1514 ; Oak.DamageInfo.get_Item
062aa00c: lsr      x8, x0, #0x20
062aa010: fmov     s10, w8
062aa014: fcmp     s10, #0.0
062aa018: b.eq     #0x62aa2e8
062aa01c: mov      x0, x19
062aa020: mov      x1, xzr
062aa024: bl       #0x66c1b7c ; Oak.DamageInfo.get_forceAilment
062aa028: tbnz     w0, #0, #0x62aa09c
062aa02c: ldr      x8, [x20]
062aa030: ldr      x1, [x24]
062aa034: ldrh     w9, [x8, #0x12e]
062aa038: cbz      x9, #0x62aa05c
062aa03c: ldr      x10, [x8, #0xb0]
062aa040: add      x10, x10, #8
062aa044: ldur     x11, [x10, #-8]
062aa048: cmp      x11, x1
062aa04c: b.eq     #0x62aa06c
062aa050: subs     x9, x9, #1
062aa054: add      x10, x10, #0x10
062aa058: b.ne     #0x62aa044
062aa05c: mov      w2, #1
062aa060: mov      x0, x20
062aa064: bl       #0x39a94f0
062aa068: b        #0x62aa07c
062aa06c: ldr      w9, [x10]
062aa070: add      w9, w9, #1
062aa074: add      x8, x8, w9, sxtw #4
062aa078: add      x0, x8, #0x138
062aa07c: ldp      x8, x1, [x0]
062aa080: mov      x0, x20
062aa084: blr      x8
062aa088: cbz      x0, #0x62aa60c
062aa08c: mov      w1, w22
062aa090: mov      x2, xzr
062aa094: bl       #0x8c8f36c ; Oak.CharacterStatsBehaviour.HasAilment
062aa098: tbnz     w0, #0, #0x62aa154
062aa09c: ldrb     w8, [x26, #0x1bb]
062aa0a0: cbnz     w8, #0x62aa0b0
062aa0a4: mov      x0, x21
062aa0a8: bl       #0x39d34bc
062aa0ac: strb     w25, [x26, #0x1bb]
062aa0b0: ldr      x8, [x21]
062aa0b4: ldr      x8, [x8, #0xb8]
062aa0b8: ldr      x0, [x8]
062aa0bc: cbz      x0, #0x62aa60c
062aa0c0: mov      x1, xzr
062aa0c4: bl       #0x6bafa9c ; Oak.Stage.get_Spec
062aa0c8: cbz      x0, #0x62aa60c
062aa0cc: mov      x1, xzr
062aa0d0: bl       #0x8afcf0c ; StageSpec.get_IsUsingCommonAilment
062aa0d4: tbz      w0, #0, #0x62aa168
062aa0d8: ldr      x8, [x20]
062aa0dc: ldr      x1, [x24]
062aa0e0: ldrh     w9, [x8, #0x12e]
062aa0e4: cbz      x9, #0x62aa108
062aa0e8: ldr      x10, [x8, #0xb0]
062aa0ec: add      x10, x10, #8
062aa0f0: ldur     x11, [x10, #-8]
062aa0f4: cmp      x11, x1
062aa0f8: b.eq     #0x62aa118
062aa0fc: subs     x9, x9, #1
062aa100: add      x10, x10, #0x10
062aa104: b.ne     #0x62aa0f0
062aa108: mov      w2, #1
062aa10c: mov      x0, x20
062aa110: bl       #0x39a94f0
062aa114: b        #0x62aa128
062aa118: ldr      w9, [x10]
062aa11c: add      w9, w9, #1
062aa120: add      x8, x8, w9, sxtw #4
062aa124: add      x0, x8, #0x138
062aa128: ldp      x8, x1, [x0]
062aa12c: mov      x0, x20
062aa130: blr      x8
062aa134: cbz      x0, #0x62aa60c
062aa138: mov      w1, #4
062aa13c: mov      x2, xzr
062aa140: bl       #0x8c8f36c ; Oak.CharacterStatsBehaviour.HasAilment
062aa144: tbnz     w0, #0, #0x62aa154
062aa148: ldrh     w8, [x19, #6]
062aa14c: cmp      w8, #0x10
062aa150: b.ne     #0x62aa168
062aa154: ldr      x1, [x27]
062aa158: str      xzr, [sp, #0x98]
062aa15c: add      x0, sp, #0x98
062aa160: fmov     s0, wzr
062aa164: b        #0x62aa2d0
062aa168: mov      x0, x19
062aa16c: mov      x1, xzr
062aa170: str      wzr, [sp, #0xfc]
062aa174: bl       #0x66c1b7c ; Oak.DamageInfo.get_forceAilment
062aa178: tbnz     w0, #0, #0x62aa2b8
062aa17c: ldr      x8, [x20]
062aa180: ldr      x1, [x24]
062aa184: ldrh     w9, [x8, #0x12e]
062aa188: cbz      x9, #0x62aa1ac
062aa18c: ldr      x10, [x8, #0xb0]
062aa190: add      x10, x10, #8
062aa194: ldur     x11, [x10, #-8]
062aa198: cmp      x11, x1
062aa19c: b.eq     #0x62aa1bc
062aa1a0: subs     x9, x9, #1
062aa1a4: add      x10, x10, #0x10
062aa1a8: b.ne     #0x62aa194
062aa1ac: mov      w2, #1
062aa1b0: mov      x0, x20
062aa1b4: bl       #0x39a94f0
062aa1b8: b        #0x62aa1cc
062aa1bc: ldr      w9, [x10]
062aa1c0: add      w9, w9, #1
062aa1c4: add      x8, x8, w9, sxtw #4
062aa1c8: add      x0, x8, #0x138
062aa1cc: ldp      x8, x1, [x0]
062aa1d0: mov      x0, x20
062aa1d4: blr      x8
062aa1d8: cbz      x0, #0x62aa60c
062aa1dc: mov      x1, xzr
062aa1e0: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
062aa1e4: cbz      x0, #0x62aa60c
062aa1e8: ldr      x0, [x0, #0x380]
062aa1ec: cbz      x0, #0x62aa60c
062aa1f0: ldr      x3, [x28]
062aa1f4: add      x2, sp, #0xfc
062aa1f8: mov      w1, w22
062aa1fc: bl       #0x54e35c0
062aa200: tbz      w0, #0, #0x62aa2b8
062aa204: ldr      x0, [x29]
062aa208: ldr      s8, [sp, #0xfc]
062aa20c: ldr      w8, [x0, #0xe0]
062aa210: cbnz     w8, #0x62aa218
062aa214: bl       #0x39d35c4
062aa218: mov      v0.16b, v8.16b
062aa21c: mov      w0, w22
062aa220: mov      x1, xzr
062aa224: bl       #0x622f07c ; Oak.GlobalBalanceModifier.AilmentResistanceModifier
062aa228: str      s0, [sp, #0xfc]
062aa22c: ldr      x8, [x20]
062aa230: ldr      x1, [x24]
062aa234: ldrh     w9, [x8, #0x12e]
062aa238: cbz      x9, #0x62aa25c
062aa23c: ldr      x10, [x8, #0xb0]
062aa240: add      x10, x10, #8
062aa244: ldur     x11, [x10, #-8]
062aa248: cmp      x11, x1
062aa24c: b.eq     #0x62aa26c
062aa250: subs     x9, x9, #1
062aa254: add      x10, x10, #0x10
062aa258: b.ne     #0x62aa244
062aa25c: mov      w2, #1
062aa260: mov      x0, x20
062aa264: bl       #0x39a94f0
062aa268: b        #0x62aa27c
062aa26c: ldr      w9, [x10]
062aa270: add      w9, w9, #1
062aa274: add      x8, x8, w9, sxtw #4
062aa278: add      x0, x8, #0x138
062aa27c: ldp      x8, x1, [x0]
062aa280: mov      x0, x20
062aa284: blr      x8
062aa288: cbz      x0, #0x62aa60c
062aa28c: mov      w1, w22
062aa290: mov      x2, xzr
062aa294: bl       #0x8c87554 ; Oak.CharacterStatsBehaviour.GetAilmentResistanceModifier
062aa298: ldr      s1, [sp, #0xfc]
062aa29c: fmul     s0, s0, s1
062aa2a0: fadd     s0, s1, s0
062aa2a4: fcmp     s0, s9
062aa2a8: str      s0, [sp, #0xfc]
062aa2ac: b.lt     #0x62aa2b8
062aa2b0: mov      w8, #0x3f800000
062aa2b4: str      w8, [sp, #0xfc]
062aa2b8: ldr      s0, [sp, #0xfc]
062aa2bc: ldr      x1, [x27]
062aa2c0: add      x0, sp, #0x98
062aa2c4: str      xzr, [sp, #0x98]
062aa2c8: fsub     s0, s9, s0
062aa2cc: fmul     s0, s0, s10
062aa2d0: bl       #0x4b43f40
062aa2d4: ldr      x2, [sp, #0x98]
062aa2d8: mov      x0, x19
062aa2dc: mov      w1, w22
062aa2e0: mov      x3, xzr
062aa2e4: bl       #0x66c173c ; Oak.DamageInfo.set_Item
062aa2e8: add      w22, w22, #1
062aa2ec: cmp      w22, #5
062aa2f0: b.ne     #0x62a9ffc
062aa2f4: mov      x0, x19
062aa2f8: mov      x1, xzr
062aa2fc: bl       #0x66c09cc ; Oak.DamageInfo.get_knockBackResult
062aa300: cmp      w0, #1
062aa304: b.lt     #0x62aa5e4
062aa308: ldr      x20, [x19, #0x10]
062aa30c: cbz      x20, #0x62aa60c
062aa310: ldr      x8, [x20]
062aa314: ldr      x1, [x23]
062aa318: ldrh     w9, [x8, #0x12e]
062aa31c: cbz      x9, #0x62aa340
062aa320: ldr      x10, [x8, #0xb0]
062aa324: add      x10, x10, #8
062aa328: ldur     x11, [x10, #-8]
062aa32c: cmp      x11, x1
062aa330: b.eq     #0x62aa350
062aa334: subs     x9, x9, #1
062aa338: add      x10, x10, #0x10
062aa33c: b.ne     #0x62aa328
062aa340: mov      w2, #0xb
062aa344: mov      x0, x20
062aa348: bl       #0x39a94f0
062aa34c: b        #0x62aa360
062aa350: ldr      w9, [x10]
062aa354: add      w9, w9, #0xb
062aa358: add      x8, x8, w9, sxtw #4
062aa35c: add      x0, x8, #0x138
062aa360: ldp      x8, x1, [x0]
062aa364: mov      x0, x20
062aa368: blr      x8
062aa36c: mov      x1, xzr
062aa370: bl       #0x66d08c4 ; Oak.FieldObjectControllerTypesExtensions.IsManual
062aa374: tbz      w0, #0, #0x62aa5e4
062aa378: ldr      x20, [x19, #0x10]
062aa37c: cbz      x20, #0x62aa60c
062aa380: ldr      x8, [x20]
062aa384: ldr      x1, [x23]
062aa388: ldrh     w9, [x8, #0x12e]
062aa38c: cbz      x9, #0x62aa3b0
062aa390: ldr      x10, [x8, #0xb0]
062aa394: add      x10, x10, #8
062aa398: ldur     x11, [x10, #-8]
062aa39c: cmp      x11, x1
062aa3a0: b.eq     #0x62aa3d8
062aa3a4: subs     x9, x9, #1
062aa3a8: add      x10, x10, #0x10
062aa3ac: b.ne     #0x62aa398
062aa3b0: mov      w2, #9
062aa3b4: mov      x0, x20
062aa3b8: bl       #0x39a94f0
062aa3bc: b        #0x62aa3e8
062aa3c0: mov      x1, xzr
062aa3c4: bl       #0x8c88264 ; Oak.CharacterStatsBehaviour.get_KnockBackDefense
062aa3c8: b        #0x62a9ee8
062aa3cc: mov      x1, xzr
062aa3d0: bl       #0x8c8898c ; Oak.CharacterStatsBehaviour.get_StunDefense
062aa3d4: b        #0x62a9fa0
062aa3d8: ldr      w9, [x10]
062aa3dc: add      w9, w9, #9
062aa3e0: add      x8, x8, w9, sxtw #4
062aa3e4: add      x0, x8, #0x138
062aa3e8: ldp      x8, x1, [x0]
062aa3ec: mov      x0, x20
062aa3f0: blr      x8
062aa3f4: ldr      x21, [x19, #8]
062aa3f8: cbz      x21, #0x62aa60c
062aa3fc: ldr      x8, [x21]
062aa400: ldr      x1, [x23]
062aa404: mov      w20, w0
062aa408: ldrh     w9, [x8, #0x12e]
062aa40c: cbz      x9, #0x62aa430
062aa410: ldr      x10, [x8, #0xb0]
062aa414: add      x10, x10, #8
062aa418: ldur     x11, [x10, #-8]
062aa41c: cmp      x11, x1
062aa420: b.eq     #0x62aa440
062aa424: subs     x9, x9, #1
062aa428: add      x10, x10, #0x10
062aa42c: b.ne     #0x62aa418
062aa430: mov      w2, #8
062aa434: mov      x0, x21
062aa438: bl       #0x39a94f0
062aa43c: b        #0x62aa450
062aa440: ldr      w9, [x10]
062aa444: add      w9, w9, #8
062aa448: add      x8, x8, w9, sxtw #4
062aa44c: add      x0, x8, #0x138
062aa450: ldp      x9, x1, [x0]
062aa454: add      x8, sp, #0x98
062aa458: mov      x0, x21
062aa45c: blr      x9
062aa460: ldur     q0, [sp, #0x98]
062aa464: ldr      x8, [sp, #0xa8]
062aa468: str      q0, [sp, #0xd0]
062aa46c: str      x8, [sp, #0xe0]
062aa470: ldr      x21, [x19, #0x10]
062aa474: cbz      x21, #0x62aa60c
062aa478: ldr      x8, [x21]
062aa47c: ldr      x1, [x23]
062aa480: ldrh     w9, [x8, #0x12e]
062aa484: cbz      x9, #0x62aa4a8
062aa488: ldr      x10, [x8, #0xb0]
062aa48c: add      x10, x10, #8
062aa490: ldur     x11, [x10, #-8]
062aa494: cmp      x11, x1
062aa498: b.eq     #0x62aa4b8
062aa49c: subs     x9, x9, #1
062aa4a0: add      x10, x10, #0x10
062aa4a4: b.ne     #0x62aa490
062aa4a8: mov      w2, #8
062aa4ac: mov      x0, x21
062aa4b0: bl       #0x39a94f0
062aa4b4: b        #0x62aa4c8
062aa4b8: ldr      w9, [x10]
062aa4bc: add      w9, w9, #8
062aa4c0: add      x8, x8, w9, sxtw #4
062aa4c4: add      x0, x8, #0x138
062aa4c8: ldp      x9, x1, [x0]
062aa4cc: add      x8, sp, #0x98
062aa4d0: mov      x0, x21
062aa4d4: blr      x9
062aa4d8: ldur     q0, [sp, #0x98]
062aa4dc: ldr      x8, [sp, #0xa8]
062aa4e0: str      q0, [sp, #0xb0]
062aa4e4: str      x8, [sp, #0xc0]
062aa4e8: ldr      d0, [x19, #0x1a0]
062aa4ec: ldr      s8, [x19, #0x1a8]
062aa4f0: sub      w8, w20, #1
062aa4f4: cmp      w8, #7
062aa4f8: b.hi     #0x62aa5dc
062aa4fc: adrp     x9, #0x192f000
062aa500: add      x9, x9, #0x192
062aa504: adr      x10, #0x62aa518
062aa508: ldrb     w11, [x9, x8]
062aa50c: add      x10, x10, x11, lsl #2
062aa510: str      q0, [sp, #0x10]
062aa514: br       x10
062aa518: ldr      q0, [sp, #0xb0]
062aa51c: ldr      x8, [sp, #0xc0]
062aa520: ldr      q1, [sp, #0xd0]
062aa524: ldr      x9, [sp, #0xe0]
062aa528: add      x0, sp, #0x80
062aa52c: add      x1, sp, #0x60
062aa530: mov      x2, xzr
062aa534: str      q0, [sp, #0x80]
062aa538: str      x8, [sp, #0x90]
062aa53c: str      q1, [sp, #0x60]
062aa540: str      x9, [sp, #0x70]
062aa544: bl       #0x695c258 ; BoundsExtensions.GetXOverap
062aa548: fcmp     s0, #0.0
062aa54c: b.le     #0x62aa564
062aa550: fcmp     s8, #0.0
062aa554: movi     d0, #0000000000000000
062aa558: b.le     #0x62aa5d8
062aa55c: fmov     s8, #1.00000000
062aa560: b        #0x62aa5dc
062aa564: ldr      q0, [sp, #0x10]
062aa568: cmp      w20, #2
062aa56c: b.ne     #0x62aa5dc
062aa570: ldr      q0, [sp, #0xb0]
062aa574: ldr      x8, [sp, #0xc0]
062aa578: ldr      q1, [sp, #0xd0]
062aa57c: ldr      x9, [sp, #0xe0]
062aa580: add      x0, sp, #0x40
062aa584: add      x1, sp, #0x20
062aa588: mov      x2, xzr
062aa58c: str      q0, [sp, #0x40]
062aa590: str      x8, [sp, #0x50]
062aa594: str      q1, [sp, #0x20]
062aa598: str      x9, [sp, #0x30]
062aa59c: bl       #0x695c350 ; BoundsExtensions.GetZOverap
062aa5a0: fcmp     s0, #0.0
062aa5a4: b.le     #0x62aa5c4
062aa5a8: ldr      q0, [sp, #0x10]
062aa5ac: fmov     s8, wzr
062aa5b0: fcmp     s0, #0.0
062aa5b4: b.le     #0x62aa5cc
062aa5b8: adrp     x8, #0x1768000
062aa5bc: ldr      d0, [x8, #0x280]
062aa5c0: b        #0x62aa5dc
062aa5c4: ldr      q0, [sp, #0x10]
062aa5c8: b        #0x62aa5dc
062aa5cc: adrp     x8, #0x176a000
062aa5d0: ldr      d0, [x8, #0x6f0]
062aa5d4: b        #0x62aa5dc
062aa5d8: fmov     s8, #-1.00000000
062aa5dc: str      d0, [x19, #0x1a0]
062aa5e0: str      s8, [x19, #0x1a8]
062aa5e4: ldp      x20, x19, [sp, #0x160]
062aa5e8: ldp      x22, x21, [sp, #0x150]
062aa5ec: ldp      x24, x23, [sp, #0x140]
062aa5f0: ldp      x26, x25, [sp, #0x130]
062aa5f4: ldp      x28, x27, [sp, #0x120]
062aa5f8: ldp      x29, x30, [sp, #0x110]
062aa5fc: ldp      d9, d8, [sp, #0x100]
062aa600: ldr      d10, [sp, #0xf0]
062aa604: add      sp, sp, #0x170
062aa608: ret      
062aa60c: bl       #0x39d36e4