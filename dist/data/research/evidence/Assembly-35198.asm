060e2dac: stp      x29, x30, [sp, #-0x60]!
060e2db0: stp      x28, x27, [sp, #0x10]
060e2db4: stp      x26, x25, [sp, #0x20]
060e2db8: stp      x24, x23, [sp, #0x30]
060e2dbc: stp      x22, x21, [sp, #0x40]
060e2dc0: stp      x20, x19, [sp, #0x50]
060e2dc4: sub      sp, sp, #0x900
060e2dc8: adrp     x22, #0xa266000
060e2dcc: ldrb     w8, [x22, #0x541]
060e2dd0: mov      w21, w2
060e2dd4: mov      w20, w1
060e2dd8: mov      x19, x0
060e2ddc: tbnz     w8, #0, #0x60e2e6c
060e2de0: adrp     x0, #0x9b45000
060e2de4: ldr      x0, [x0, #0x2b0]
060e2de8: bl       #0x39d34bc
060e2dec: adrp     x0, #0x9b7c000
060e2df0: ldr      x0, [x0, #0x320]
060e2df4: bl       #0x39d34bc
060e2df8: adrp     x0, #0x9b40000
060e2dfc: ldr      x0, [x0, #0xd78]
060e2e00: bl       #0x39d34bc
060e2e04: adrp     x0, #0x9b46000
060e2e08: ldr      x0, [x0, #0xa68]
060e2e0c: bl       #0x39d34bc
060e2e10: adrp     x0, #0x9b46000
060e2e14: ldr      x0, [x0, #0xa20]
060e2e18: bl       #0x39d34bc
060e2e1c: adrp     x0, #0x9b47000
060e2e20: ldr      x0, [x0, #0x3a0]
060e2e24: bl       #0x39d34bc
060e2e28: adrp     x0, #0x9b7b000
060e2e2c: ldr      x0, [x0, #0xe78]
060e2e30: bl       #0x39d34bc
060e2e34: adrp     x0, #0x9b7b000
060e2e38: ldr      x0, [x0, #0xe90]
060e2e3c: bl       #0x39d34bc
060e2e40: adrp     x0, #0x9b78000
060e2e44: ldr      x0, [x0, #0x6a0]
060e2e48: bl       #0x39d34bc
060e2e4c: adrp     x0, #0x9b74000
060e2e50: ldr      x0, [x0, #0x5c0]
060e2e54: bl       #0x39d34bc
060e2e58: adrp     x0, #0x9b74000
060e2e5c: ldr      x0, [x0, #0x5c8]
060e2e60: bl       #0x39d34bc
060e2e64: mov      w8, #1
060e2e68: strb     w8, [x22, #0x541]
060e2e6c: add      x0, sp, #0x608
060e2e70: mov      w2, #0x2f8
060e2e74: mov      w1, wzr
060e2e78: bl       #0x9749b80
060e2e7c: mov      w0, #0x974
060e2e80: mov      x1, xzr
060e2e84: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
060e2e88: tbz      w0, #0, #0x60e2ee0
060e2e8c: mov      w0, #0x974
060e2e90: mov      x1, xzr
060e2e94: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
060e2e98: mov      x22, x0
060e2e9c: add      x0, sp, #0x310
060e2ea0: mov      w2, #0x2f8
060e2ea4: mov      x1, x19
060e2ea8: bl       #0x9749b40
060e2eac: cbz      x22, #0x60e3238
060e2eb0: add      x0, sp, #0x18
060e2eb4: add      x1, sp, #0x310
060e2eb8: mov      w2, #0x2f8
060e2ebc: bl       #0x9749b40
060e2ec0: and      w2, w20, #1
060e2ec4: and      w3, w21, #1
060e2ec8: add      x1, sp, #0x18
060e2ecc: mov      x0, x22
060e2ed0: mov      x4, xzr
060e2ed4: bl       #0x8639ad8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_755
060e2ed8: mov      x22, x0
060e2edc: b        #0x60e3214
060e2ee0: and      w1, w20, #1
060e2ee4: mov      x0, x19
060e2ee8: bl       #0x60e1ec0 ; Oak.DamageCommandUtil.CheckCreateDamageReplaceCommand
060e2eec: mov      x22, x0
060e2ef0: cbnz     x0, #0x60e3214
060e2ef4: mov      x0, x19
060e2ef8: mov      x1, xzr
060e2efc: bl       #0x62aa610 ; Oak.DamageCalculator.Calculate
060e2f00: adrp     x8, #0x9b74000
060e2f04: ldr      x8, [x8, #0x5c8]
060e2f08: ldr      x0, [x8]
060e2f0c: ldr      w8, [x0, #0xe0]
060e2f10: cbnz     w8, #0x60e2f18
060e2f14: bl       #0x39d35c4
060e2f18: adrp     x8, #0x9b74000
060e2f1c: ldr      x8, [x8, #0x5c0]
060e2f20: ldr      x0, [x8]
060e2f24: bl       #0x4c04988
060e2f28: adrp     x27, #0x9b7c000
060e2f2c: ldr      x27, [x27, #0x320]
060e2f30: mov      x20, x0
060e2f34: ldr      x8, [x27]
060e2f38: ldr      w9, [x8, #0xe0]
060e2f3c: cbnz     w9, #0x60e2f48
060e2f40: mov      x0, x8
060e2f44: bl       #0x39d35c4
060e2f48: mov      x0, xzr
060e2f4c: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
060e2f50: cbz      x0, #0x60e3238
060e2f54: ldr      x8, [x0, #0x18]
060e2f58: mov      x22, x0
060e2f5c: cmp      w8, #1
060e2f60: b.lt     #0x60e2ff8
060e2f64: adrp     x25, #0x9b46000
060e2f68: ldr      x25, [x25, #0xa68]
060e2f6c: mov      x23, xzr
060e2f70: and      x8, x8, #0xffffffff
060e2f74: add      x24, x22, #0x20
060e2f78: cmp      x23, w8, uxtw
060e2f7c: b.hs     #0x60e323c
060e2f80: ldr      w1, [x24, x23, lsl #2]
060e2f84: mov      x0, x19
060e2f88: mov      x2, xzr
060e2f8c: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
060e2f90: cbz      x20, #0x60e3238
060e2f94: ldr      w10, [x20, #0x1c]
060e2f98: ldr      x8, [x20, #0x10]
060e2f9c: ldr      x9, [x25]
060e2fa0: add      w10, w10, #1
060e2fa4: str      w10, [x20, #0x1c]
060e2fa8: cbz      x8, #0x60e3238
060e2fac: ldrsw    x10, [x20, #0x18]
060e2fb0: ldr      w11, [x8, #0x18]
060e2fb4: lsr      x1, x0, #0x20
060e2fb8: cmp      w10, w11
060e2fbc: b.hs     #0x60e2fd4
060e2fc0: add      w9, w10, #1
060e2fc4: add      x8, x8, x10, lsl #2
060e2fc8: str      w9, [x20, #0x18]
060e2fcc: str      w1, [x8, #0x20]
060e2fd0: b        #0x60e2fe8
060e2fd4: ldr      x8, [x9, #0x20]
060e2fd8: mov      x0, x20
060e2fdc: ldr      x8, [x8, #0xc0]
060e2fe0: ldr      x2, [x8, #0x70]
060e2fe4: bl       #0x46ec868
060e2fe8: ldr      w8, [x22, #0x18]
060e2fec: add      x23, x23, #1
060e2ff0: cmp      x23, w8, sxtw
060e2ff4: b.lt     #0x60e2f78
060e2ff8: adrp     x8, #0x9b7b000
060e2ffc: ldr      x8, [x8, #0xe90]
060e3000: ldr      x0, [x8]
060e3004: ldr      w8, [x0, #0xe0]
060e3008: cbnz     w8, #0x60e3010
060e300c: bl       #0x39d35c4
060e3010: adrp     x8, #0x9b7b000
060e3014: ldr      x8, [x8, #0xe78]
060e3018: ldr      x0, [x8]
060e301c: bl       #0x4c00764
060e3020: mov      x22, x0
060e3024: tbz      w21, #0, #0x60e3050
060e3028: cbz      x22, #0x60e3238
060e302c: mov      x0, x22
060e3030: mov      x1, xzr
060e3034: bl       #0x60df150 ; Oak.DelayedCommand.SetupDelayData
060e3038: add      x0, sp, #0x310
060e303c: mov      w2, #0x2f8
060e3040: mov      x1, x19
060e3044: add      x23, sp, #0x310
060e3048: bl       #0x9749b40
060e304c: b        #0x60e3068
060e3050: add      x0, sp, #0x310
060e3054: mov      w2, #0x2f8
060e3058: mov      x1, x19
060e305c: add      x23, sp, #0x310
060e3060: bl       #0x9749b40
060e3064: cbz      x22, #0x60e3238
060e3068: add      x21, x22, #0x40
060e306c: mov      w2, #0x2f8
060e3070: mov      x0, x21
060e3074: mov      x1, x23
060e3078: bl       #0x9749b40
060e307c: mov      x0, x19
060e3080: bl       #0x60e28f0 ; Oak.DamageCommandUtil.BogusRoutine2
060e3084: ldr      x8, [x27]
060e3088: str      w0, [sp, #0x14]
060e308c: ldr      w9, [x8, #0xe0]
060e3090: cbnz     w9, #0x60e309c
060e3094: mov      x0, x8
060e3098: bl       #0x39d35c4
060e309c: mov      x0, xzr
060e30a0: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
060e30a4: cbz      x0, #0x60e3238
060e30a8: ldr      x8, [x0, #0x18]
060e30ac: mov      x24, x0
060e30b0: cmp      w8, #1
060e30b4: b.lt     #0x60e3148
060e30b8: adrp     x23, #0x9b46000
060e30bc: ldr      x23, [x23, #0xa20]
060e30c0: mov      x28, xzr
060e30c4: and      x8, x8, #0xffffffff
060e30c8: add      x29, x24, #0x20
060e30cc: cmp      x28, w8, uxtw
060e30d0: b.hs     #0x60e323c
060e30d4: ldr      x0, [x27]
060e30d8: ldr      w25, [x29, x28, lsl #2]
060e30dc: ldr      w8, [x0, #0xe0]
060e30e0: cbnz     w8, #0x60e30e8
060e30e4: bl       #0x39d35c4
060e30e8: mov      w0, w25
060e30ec: mov      x1, xzr
060e30f0: bl       #0x66bc970 ; Oak.ElementalTypeExtensions.ToIndex
060e30f4: cbz      x20, #0x60e3238
060e30f8: ldr      x2, [x23]
060e30fc: mov      w1, w0
060e3100: mov      x0, x20
060e3104: bl       #0x46ec578
060e3108: mov      w26, w0
060e310c: add      x0, sp, #0x608
060e3110: mov      w2, #0x2f8
060e3114: mov      x1, x21
060e3118: bl       #0x9749b90
060e311c: add      x0, sp, #0x608
060e3120: mov      w1, w25
060e3124: mov      x2, xzr
060e3128: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
060e312c: lsr      x8, x0, #0x20
060e3130: cmp      w26, w8
060e3134: b.ne     #0x60e3150
060e3138: ldr      w8, [x24, #0x18]
060e313c: add      x28, x28, #1
060e3140: cmp      x28, w8, sxtw
060e3144: b.lt     #0x60e30cc
060e3148: cbnz     x20, #0x60e31d8
060e314c: b        #0x60e3238
060e3150: adrp     x8, #0x9b40000
060e3154: ldr      x8, [x8, #0xd78]
060e3158: add      x1, sp, #0x310
060e315c: ldr      x0, [x8]
060e3160: ldr      w8, [sp, #0x14]
060e3164: str      w8, [sp, #0x310]
060e3168: bl       #0x39d35cc
060e316c: adrp     x8, #0x9b45000
060e3170: ldr      x8, [x8, #0x2b0]
060e3174: mov      x21, x0
060e3178: ldr      x8, [x8]
060e317c: ldr      w9, [x8, #0xe0]
060e3180: cbnz     w9, #0x60e318c
060e3184: mov      x0, x8
060e3188: bl       #0x39d35c4
060e318c: mov      x0, x21
060e3190: mov      x1, xzr
060e3194: bl       #0x3c4dd3c
060e3198: adrp     x21, #0xa25e000
060e319c: ldrb     w8, [x21, #0xf94]
060e31a0: cbnz     w8, #0x60e31b8
060e31a4: adrp     x0, #0x9b4c000
060e31a8: ldr      x0, [x0, #0xb90]
060e31ac: bl       #0x39d34bc
060e31b0: mov      w8, #1
060e31b4: strb     w8, [x21, #0xf94]
060e31b8: adrp     x8, #0x9b4c000
060e31bc: ldr      x8, [x8, #0xb90]
060e31c0: ldr      x8, [x8]
060e31c4: ldr      x8, [x8, #0xb8]
060e31c8: ldr      x0, [x8, #8]
060e31cc: cbz      x0, #0x60e3238
060e31d0: mov      x1, xzr
060e31d4: bl       #0x6489c1c ; Oak.Game.OnAnimated
060e31d8: adrp     x8, #0x9b78000
060e31dc: ldr      x8, [x8, #0x6a0]
060e31e0: mov      x0, x20
060e31e4: ldr      x1, [x8]
060e31e8: bl       #0x4c04d6c
060e31ec: ldr      s0, [x19, #0x1a0]
060e31f0: ldr      s1, [x19, #0x1a4]
060e31f4: ldr      s2, [x19, #0x1a8]
060e31f8: mov      x0, xzr
060e31fc: fmul     s0, s0, s0
060e3200: fmul     s1, s1, s1
060e3204: fadd     s0, s0, s1
060e3208: fmul     s1, s2, s2
060e320c: fadd     s0, s0, s1
060e3210: bl       #0x695b6d4 ; FloatExtensions.IsAlmostZero
060e3214: mov      x0, x22
060e3218: add      sp, sp, #0x900
060e321c: ldp      x20, x19, [sp, #0x50]
060e3220: ldp      x22, x21, [sp, #0x40]
060e3224: ldp      x24, x23, [sp, #0x30]
060e3228: ldp      x26, x25, [sp, #0x20]
060e322c: ldp      x28, x27, [sp, #0x10]
060e3230: ldp      x29, x30, [sp], #0x60
060e3234: ret      
060e3238: bl       #0x39d36e4
060e323c: bl       #0x39d36ec