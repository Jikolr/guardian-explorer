// Oak.ExpsDataLevelExpExtensions.GetAddedCoefLevel 0x6c46d68
06c46d68: sub      sp, sp, #0x90
06c46d6c: str      x30, [sp, #0x60]
06c46d70: stp      x22, x21, [sp, #0x70]
06c46d74: stp      x20, x19, [sp, #0x80]
06c46d78: mov      w20, w1
06c46d7c: mov      x22, x0
06c46d80: mov      w0, #0x743
06c46d84: mov      x1, xzr
06c46d88: mov      w21, w3
06c46d8c: mov      w19, w2
06c46d90: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c46d94: tbz      w0, #0, #0x6c46dd0
06c46d98: mov      w0, #0x743
06c46d9c: mov      x1, xzr
06c46da0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c46da4: cbz      x0, #0x6c46e84
06c46da8: and      w4, w21, #1
06c46dac: mov      x1, x22
06c46db0: mov      w2, w20
06c46db4: mov      w3, w19
06c46db8: ldp      x20, x19, [sp, #0x80]
06c46dbc: ldp      x22, x21, [sp, #0x70]
06c46dc0: ldr      x30, [sp, #0x60]
06c46dc4: mov      x5, xzr
06c46dc8: add      sp, sp, #0x90
06c46dcc: b        #0x862ab48 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_526
06c46dd0: mov      x0, xzr
06c46dd4: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
06c46dd8: cbz      x0, #0x6c46e84
06c46ddc: ldr      w8, [x0, #0x140]
06c46de0: ldr      q0, [x0, #0x130]
06c46de4: add      x0, sp, #0x40
06c46de8: mov      x1, xzr
06c46dec: str      w8, [sp, #0x50]
06c46df0: str      q0, [sp, #0x40]
06c46df4: bl       #0x3ac6fb0
06c46df8: mov      w22, w0
06c46dfc: tbz      w21, #0, #0x6c46e34
06c46e00: mov      x0, xzr
06c46e04: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
06c46e08: cbz      x0, #0x6c46e84
06c46e0c: add      x8, x0, #0x158
06c46e10: ldr      w9, [x8, #0x10]
06c46e14: ldr      q0, [x8]
06c46e18: add      x0, sp, #0x20
06c46e1c: mov      x1, xzr
06c46e20: str      w9, [sp, #0x30]
06c46e24: str      q0, [sp, #0x20]
06c46e28: bl       #0x3ac6fb0
06c46e2c: mov      w21, w0
06c46e30: b        #0x6c46e38
06c46e34: mov      w21, wzr
06c46e38: mov      x0, xzr
06c46e3c: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
06c46e40: cbz      x0, #0x6c46e84
06c46e44: add      x8, x0, #0x144
06c46e48: ldr      w9, [x8, #0x10]
06c46e4c: ldr      q0, [x8]
06c46e50: mov      x0, sp
06c46e54: mov      x1, xzr
06c46e58: mul      w20, w22, w20
06c46e5c: str      w9, [sp, #0x10]
06c46e60: str      q0, [sp]
06c46e64: bl       #0x3ac6fb0
06c46e68: add      w8, w21, w20
06c46e6c: madd     w0, w0, w19, w8
06c46e70: ldp      x20, x19, [sp, #0x80]
06c46e74: ldp      x22, x21, [sp, #0x70]
06c46e78: ldr      x30, [sp, #0x60]
06c46e7c: add      sp, sp, #0x90
06c46e80: ret      
06c46e84: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetLevelExpSpec 0x6c46e88
06c46e88: sub      sp, sp, #0x60
06c46e8c: str      x30, [sp, #0x30]
06c46e90: stp      x22, x21, [sp, #0x40]
06c46e94: stp      x20, x19, [sp, #0x50]
06c46e98: adrp     x21, #0xa26b000
06c46e9c: ldrb     w8, [x21, #0x9c5]
06c46ea0: mov      w20, w1
06c46ea4: mov      x19, x0
06c46ea8: tbnz     w8, #0, #0x6c46ef0
06c46eac: adrp     x0, #0x9bb9000
06c46eb0: ldr      x0, [x0, #0x760]
06c46eb4: bl       #0x39d34bc
06c46eb8: adrp     x0, #0x9bb9000
06c46ebc: ldr      x0, [x0, #0x768]
06c46ec0: bl       #0x39d34bc
06c46ec4: adrp     x0, #0x9bb9000
06c46ec8: ldr      x0, [x0, #0x770]
06c46ecc: bl       #0x39d34bc
06c46ed0: adrp     x0, #0x9bb9000
06c46ed4: ldr      x0, [x0, #0x778]
06c46ed8: bl       #0x39d34bc
06c46edc: adrp     x0, #0x9bb9000
06c46ee0: ldr      x0, [x0, #0x780]
06c46ee4: bl       #0x39d34bc
06c46ee8: mov      w8, #1
06c46eec: strb     w8, [x21, #0x9c5]
06c46ef0: mov      w0, #0x728
06c46ef4: mov      x1, xzr
06c46ef8: stp      xzr, xzr, [sp, #0x18]
06c46efc: str      xzr, [sp, #0x28]
06c46f00: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c46f04: tbz      w0, #0, #0x6c46f2c
06c46f08: mov      w0, #0x728
06c46f0c: mov      x1, xzr
06c46f10: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c46f14: cbz      x0, #0x6c46ff8
06c46f18: mov      x1, x19
06c46f1c: mov      w2, w20
06c46f20: mov      x3, xzr
06c46f24: bl       #0x862a88c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_523
06c46f28: b        #0x6c46fd8
06c46f2c: cbz      x19, #0x6c46ff8
06c46f30: mov      x0, x19
06c46f34: bl       #0x6c467a4 ; Oak.ExpsData.get_LevelExps
06c46f38: cbz      x0, #0x6c46ff8
06c46f3c: adrp     x8, #0x9bb9000
06c46f40: ldr      x8, [x8, #0x780]
06c46f44: mov      x19, x0
06c46f48: ldr      x1, [x8]
06c46f4c: add      x8, sp, #0x18
06c46f50: bl       #0x474997c
06c46f54: adrp     x22, #0x9bb9000
06c46f58: ldr      x22, [x22, #0x770]
06c46f5c: ldr      x1, [x22]
06c46f60: add      x0, sp, #0x18
06c46f64: bl       #0x5750e8c
06c46f68: tbz      w0, #0, #0x6c46fb0
06c46f6c: ldr      x21, [sp, #0x28]
06c46f70: cbz      x21, #0x6c46ff4
06c46f74: ldr      w8, [x21, #0x48]
06c46f78: ldur     q0, [x21, #0x38]
06c46f7c: str      w8, [sp, #0x10]
06c46f80: str      q0, [sp]
06c46f84: mov      x0, sp
06c46f88: mov      x1, xzr
06c46f8c: bl       #0x3ac6fb0
06c46f90: cmp      w0, w20
06c46f94: b.le     #0x6c46f5c
06c46f98: adrp     x8, #0x9bb9000
06c46f9c: ldr      x8, [x8, #0x768]
06c46fa0: add      x0, sp, #0x18
06c46fa4: ldr      x1, [x8]
06c46fa8: bl       #0x5750e88
06c46fac: b        #0x6c46fdc
06c46fb0: adrp     x8, #0x9bb9000
06c46fb4: ldr      x8, [x8, #0x768]
06c46fb8: add      x0, sp, #0x18
06c46fbc: ldr      x1, [x8]
06c46fc0: bl       #0x5750e88
06c46fc4: adrp     x8, #0x9bb9000
06c46fc8: ldr      x8, [x8, #0x760]
06c46fcc: mov      x0, x19
06c46fd0: ldr      x1, [x8]
06c46fd4: bl       #0x401e974
06c46fd8: mov      x21, x0
06c46fdc: mov      x0, x21
06c46fe0: ldp      x20, x19, [sp, #0x50]
06c46fe4: ldp      x22, x21, [sp, #0x40]
06c46fe8: ldr      x30, [sp, #0x30]
06c46fec: add      sp, sp, #0x60
06c46ff0: ret      
06c46ff4: bl       #0x39d36e4
06c46ff8: bl       #0x39d36e4
06c46ffc: b        #0x6c47004
06c47000: b        #0x6c47004
06c47004: mov      x20, x0
06c47008: cmp      w1, #1
06c4700c: b.ne     #0x6c47040
06c47010: mov      x0, x20
06c47014: bl       #0x9749aa0
06c47018: ldr      x21, [x0]
06c4701c: bl       #0x9749ab0
06c47020: adrp     x8, #0x9bb9000
06c47024: ldr      x8, [x8, #0x768]
06c47028: add      x0, sp, #0x18
06c4702c: ldr      x1, [x8]
06c47030: bl       #0x5750e88
06c47034: cbz      x21, #0x6c46fc4
06c47038: mov      x0, x21
06c4703c: bl       #0x39d36dc
06c47040: mov      x21, xzr
06c47044: b        #0x6c4704c
06c47048: mov      x20, x0
06c4704c: adrp     x8, #0x9bb9000
06c47050: ldr      x8, [x8, #0x768]
06c47054: ldr      x1, [x8]
06c47058: add      x0, sp, #0x18
06c4705c: bl       #0x5750e88
06c47060: cbnz     x21, #0x6c4706c
06c47064: mov      x0, x20
06c47068: bl       #0x3ab82d0
06c4706c: mov      x0, x21
06c47070: bl       #0x39d36dc
06c47074: bl       #0x35bb99c

// Oak.ExpsDataLevelExpExtensions.GetLevelExpSpecByLevel 0x6c47078
06c47078: stp      x30, x21, [sp, #-0x20]!
06c4707c: stp      x20, x19, [sp, #0x10]
06c47080: adrp     x21, #0xa26b000
06c47084: ldrb     w8, [x21, #0x9c6]
06c47088: mov      w19, w1
06c4708c: mov      x20, x0
06c47090: tbnz     w8, #0, #0x6c470b4
06c47094: adrp     x0, #0x9bb9000
06c47098: ldr      x0, [x0, #0x788]
06c4709c: bl       #0x39d34bc
06c470a0: adrp     x0, #0x9bb9000
06c470a4: ldr      x0, [x0, #0x790]
06c470a8: bl       #0x39d34bc
06c470ac: mov      w8, #1
06c470b0: strb     w8, [x21, #0x9c6]
06c470b4: mov      w0, #0x1773
06c470b8: mov      x1, xzr
06c470bc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c470c0: tbz      w0, #0, #0x6c470ec
06c470c4: mov      w0, #0x1773
06c470c8: mov      x1, xzr
06c470cc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c470d0: cbz      x0, #0x6c47124
06c470d4: mov      x1, x20
06c470d8: mov      w2, w19
06c470dc: ldp      x20, x19, [sp, #0x10]
06c470e0: mov      x3, xzr
06c470e4: ldp      x30, x21, [sp], #0x20
06c470e8: b        #0x862a88c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_523
06c470ec: cbz      x20, #0x6c47124
06c470f0: mov      x0, x20
06c470f4: bl       #0x6c467a4 ; Oak.ExpsData.get_LevelExps
06c470f8: cbz      x0, #0x6c47124
06c470fc: adrp     x9, #0x9bb9000
06c47100: ldr      w8, [x0, #0x18]
06c47104: ldr      x9, [x9, #0x790]
06c47108: cmp      w8, w19
06c4710c: ldr      x2, [x9]
06c47110: sub      w9, w8, #1
06c47114: csel     w1, w19, w9, gt
06c47118: ldp      x20, x19, [sp, #0x10]
06c4711c: ldp      x30, x21, [sp], #0x20
06c47120: b        #0x4748a8c
06c47124: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.ExpToLevel 0x6c47128
06c47128: sub      sp, sp, #0x40
06c4712c: str      x30, [sp, #0x20]
06c47130: stp      x20, x19, [sp, #0x30]
06c47134: mov      w19, w1
06c47138: mov      x20, x0
06c4713c: mov      w0, #0x727
06c47140: mov      x1, xzr
06c47144: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c47148: tbz      w0, #0, #0x6c47178
06c4714c: mov      w0, #0x727
06c47150: mov      x1, xzr
06c47154: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c47158: cbz      x0, #0x6c471b4
06c4715c: mov      x1, x20
06c47160: mov      w2, w19
06c47164: ldp      x20, x19, [sp, #0x30]
06c47168: ldr      x30, [sp, #0x20]
06c4716c: mov      x3, xzr
06c47170: add      sp, sp, #0x40
06c47174: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c47178: mov      x0, x20
06c4717c: mov      w1, w19
06c47180: bl       #0x6c46e88 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpec
06c47184: cbz      x0, #0x6c471b4
06c47188: ldr      w8, [x0, #0x20]
06c4718c: ldr      q0, [x0, #0x10]
06c47190: mov      x0, sp
06c47194: mov      x1, xzr
06c47198: str      w8, [sp, #0x10]
06c4719c: str      q0, [sp]
06c471a0: bl       #0x3ac6fb0
06c471a4: ldp      x20, x19, [sp, #0x30]
06c471a8: ldr      x30, [sp, #0x20]
06c471ac: add      sp, sp, #0x40
06c471b0: ret      
06c471b4: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetExpProgress 0x6c471b8
06c471b8: sub      sp, sp, #0x60
06c471bc: stp      x30, x21, [sp, #0x40]
06c471c0: stp      x20, x19, [sp, #0x50]
06c471c4: mov      w19, w1
06c471c8: mov      x20, x0
06c471cc: mov      w0, #0xf5dc
06c471d0: mov      x1, xzr
06c471d4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c471d8: tbz      w0, #0, #0x6c47208
06c471dc: mov      w0, #0xf5dc
06c471e0: mov      x1, xzr
06c471e4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c471e8: cbz      x0, #0x6c47284
06c471ec: mov      x1, x20
06c471f0: mov      w2, w19
06c471f4: ldp      x20, x19, [sp, #0x50]
06c471f8: ldp      x30, x21, [sp, #0x40]
06c471fc: mov      x3, xzr
06c47200: add      sp, sp, #0x60
06c47204: b        #0x8621878 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_370
06c47208: mov      x0, x20
06c4720c: mov      w1, w19
06c47210: bl       #0x6c46e88 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpec
06c47214: cbz      x0, #0x6c47284
06c47218: ldr      w8, [x0, #0x48]
06c4721c: ldur     q0, [x0, #0x38]
06c47220: mov      x20, x0
06c47224: add      x0, sp, #0x20
06c47228: mov      x1, xzr
06c4722c: str      w8, [sp, #0x30]
06c47230: str      q0, [sp, #0x20]
06c47234: bl       #0x3ac6fb0
06c47238: ldur     q0, [x20, #0x24]
06c4723c: ldr      w8, [x20, #0x34]
06c47240: mov      w21, w0
06c47244: mov      x0, sp
06c47248: mov      x1, xzr
06c4724c: str      q0, [sp]
06c47250: str      w8, [sp, #0x10]
06c47254: bl       #0x3ac6fb0
06c47258: scvtf    s0, w21
06c4725c: scvtf    s1, w19
06c47260: ldp      x20, x19, [sp, #0x50]
06c47264: ldp      x30, x21, [sp, #0x40]
06c47268: scvtf    s2, w0
06c4726c: fsub     s0, s0, s1
06c47270: fdiv     s0, s0, s2
06c47274: fmov     s1, #1.00000000
06c47278: fsub     s0, s1, s0
06c4727c: add      sp, sp, #0x60
06c47280: ret      
06c47284: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetExpToNextLevel 0x6c47288
06c47288: sub      sp, sp, #0x40
06c4728c: str      x30, [sp, #0x20]
06c47290: stp      x20, x19, [sp, #0x30]
06c47294: mov      w19, w1
06c47298: mov      x20, x0
06c4729c: mov      w0, #0x1774
06c472a0: mov      x1, xzr
06c472a4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c472a8: tbz      w0, #0, #0x6c472d8
06c472ac: mov      w0, #0x1774
06c472b0: mov      x1, xzr
06c472b4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c472b8: cbz      x0, #0x6c47318
06c472bc: mov      x1, x20
06c472c0: mov      w2, w19
06c472c4: ldp      x20, x19, [sp, #0x30]
06c472c8: ldr      x30, [sp, #0x20]
06c472cc: mov      x3, xzr
06c472d0: add      sp, sp, #0x40
06c472d4: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c472d8: mov      x0, x20
06c472dc: mov      w1, w19
06c472e0: bl       #0x6c46e88 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpec
06c472e4: cbz      x0, #0x6c47318
06c472e8: ldr      w8, [x0, #0x48]
06c472ec: ldur     q0, [x0, #0x38]
06c472f0: mov      x0, sp
06c472f4: mov      x1, xzr
06c472f8: str      w8, [sp, #0x10]
06c472fc: str      q0, [sp]
06c47300: bl       #0x3ac6fb0
06c47304: sub      w0, w0, w19
06c47308: ldp      x20, x19, [sp, #0x30]
06c4730c: ldr      x30, [sp, #0x20]
06c47310: add      sp, sp, #0x40
06c47314: ret      
06c47318: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetTotalExpForLevel 0x6c4731c
06c4731c: sub      sp, sp, #0x40
06c47320: str      x30, [sp, #0x20]
06c47324: stp      x20, x19, [sp, #0x30]
06c47328: mov      w20, w1
06c4732c: mov      x19, x0
06c47330: mov      w0, #0x1772
06c47334: mov      x1, xzr
06c47338: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c4733c: tbz      w0, #0, #0x6c4736c
06c47340: mov      w0, #0x1772
06c47344: mov      x1, xzr
06c47348: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c4734c: cbz      x0, #0x6c473b4
06c47350: mov      x1, x19
06c47354: mov      w2, w20
06c47358: ldp      x20, x19, [sp, #0x30]
06c4735c: ldr      x30, [sp, #0x20]
06c47360: mov      x3, xzr
06c47364: add      sp, sp, #0x40
06c47368: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c4736c: cbz      w20, #0x6c473a0
06c47370: sub      w1, w20, #1
06c47374: mov      x0, x19
06c47378: bl       #0x6c47078 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpecByLevel
06c4737c: cbz      x0, #0x6c473b4
06c47380: ldr      w8, [x0, #0x48]
06c47384: ldur     q0, [x0, #0x38]
06c47388: mov      x0, sp
06c4738c: mov      x1, xzr
06c47390: str      w8, [sp, #0x10]
06c47394: str      q0, [sp]
06c47398: bl       #0x3ac6fb0
06c4739c: b        #0x6c473a4
06c473a0: mov      w0, wzr
06c473a4: ldp      x20, x19, [sp, #0x30]
06c473a8: ldr      x30, [sp, #0x20]
06c473ac: add      sp, sp, #0x40
06c473b0: ret      
06c473b4: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetAddExpUnit 0x6c473b8
06c473b8: str      x30, [sp, #-0x20]!
06c473bc: stp      x20, x19, [sp, #0x10]
06c473c0: mov      w19, w1
06c473c4: mov      x20, x0
06c473c8: mov      w0, #0x1775
06c473cc: mov      x1, xzr
06c473d0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c473d4: tbz      w0, #0, #0x6c47400
06c473d8: mov      w0, #0x1775
06c473dc: mov      x1, xzr
06c473e0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c473e4: cbz      x0, #0x6c47420
06c473e8: mov      x1, x20
06c473ec: mov      w2, w19
06c473f0: ldp      x20, x19, [sp, #0x10]
06c473f4: mov      x3, xzr
06c473f8: ldr      x30, [sp], #0x20
06c473fc: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c47400: mov      x0, x20
06c47404: mov      w1, w19
06c47408: bl       #0x6c46e88 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpec
06c4740c: cbz      x0, #0x6c47420
06c47410: ldr      w0, [x0, #0x4c]
06c47414: ldp      x20, x19, [sp, #0x10]
06c47418: ldr      x30, [sp], #0x20
06c4741c: ret      
06c47420: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetExpDrop 0x6c47424
06c47424: str      x30, [sp, #-0x20]!
06c47428: stp      x20, x19, [sp, #0x10]
06c4742c: mov      w19, w1
06c47430: mov      x20, x0
06c47434: mov      w0, #0x4ce6
06c47438: mov      x1, xzr
06c4743c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c47440: tbz      w0, #0, #0x6c4746c
06c47444: mov      w0, #0x4ce6
06c47448: mov      x1, xzr
06c4744c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c47450: cbz      x0, #0x6c4748c
06c47454: mov      x1, x20
06c47458: mov      w2, w19
06c4745c: ldp      x20, x19, [sp, #0x10]
06c47460: mov      x3, xzr
06c47464: ldr      x30, [sp], #0x20
06c47468: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c4746c: mov      x0, x20
06c47470: mov      w1, w19
06c47474: bl       #0x6c47078 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpecByLevel
06c47478: cbz      x0, #0x6c4748c
06c4747c: ldr      w0, [x0, #0x50]
06c47480: ldp      x20, x19, [sp, #0x10]
06c47484: ldr      x30, [sp], #0x20
06c47488: ret      
06c4748c: bl       #0x39d36e4

// Oak.ExpsDataLevelExpExtensions.GetGoldDrop 0x6c47490
06c47490: str      x30, [sp, #-0x20]!
06c47494: stp      x20, x19, [sp, #0x10]
06c47498: mov      w19, w1
06c4749c: mov      x20, x0
06c474a0: mov      w0, #0x4ce8
06c474a4: mov      x1, xzr
06c474a8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06c474ac: tbz      w0, #0, #0x6c474d8
06c474b0: mov      w0, #0x4ce8
06c474b4: mov      x1, xzr
06c474b8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06c474bc: cbz      x0, #0x6c474f8
06c474c0: mov      x1, x20
06c474c4: mov      w2, w19
06c474c8: ldp      x20, x19, [sp, #0x10]
06c474cc: mov      x3, xzr
06c474d0: ldr      x30, [sp], #0x20
06c474d4: b        #0x8625478 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_435
06c474d8: mov      x0, x20
06c474dc: mov      w1, w19
06c474e0: bl       #0x6c47078 ; Oak.ExpsDataLevelExpExtensions.GetLevelExpSpecByLevel
06c474e4: cbz      x0, #0x6c474f8
06c474e8: ldr      w0, [x0, #0x54]
06c474ec: ldp      x20, x19, [sp, #0x10]
06c474f0: ldr      x30, [sp], #0x20
06c474f4: ret      
06c474f8: bl       #0x39d36e4
