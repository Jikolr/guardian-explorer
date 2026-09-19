08c0ed2c: sub      sp, sp, #0xc0
08c0ed30: str      x30, [sp, #0x80]
08c0ed34: stp      x24, x23, [sp, #0x90]
08c0ed38: stp      x22, x21, [sp, #0xa0]
08c0ed3c: stp      x20, x19, [sp, #0xb0]
08c0ed40: adrp     x20, #0xa279000
08c0ed44: ldrb     w8, [x20, #0x64d]
08c0ed48: mov      w21, w4
08c0ed4c: mov      x19, x3
08c0ed50: mov      x22, x2
08c0ed54: mov      w23, w1
08c0ed58: mov      x24, x0
08c0ed5c: tbnz     w8, #0, #0x8c0ee10
08c0ed60: adrp     x0, #0x9b41000
08c0ed64: ldr      x0, [x0, #0x3d0]
08c0ed68: bl       #0x39d34bc
08c0ed6c: adrp     x0, #0x9b41000
08c0ed70: ldr      x0, [x0, #0x3d8]
08c0ed74: bl       #0x39d34bc
08c0ed78: adrp     x0, #0x9b41000
08c0ed7c: ldr      x0, [x0, #0x3e0]
08c0ed80: bl       #0x39d34bc
08c0ed84: adrp     x0, #0x9b46000
08c0ed88: ldr      x0, [x0, #0xa68]
08c0ed8c: bl       #0x39d34bc
08c0ed90: adrp     x0, #0x9b41000
08c0ed94: ldr      x0, [x0, #0x3e8]
08c0ed98: bl       #0x39d34bc
08c0ed9c: adrp     x0, #0x9b74000
08c0eda0: ldr      x0, [x0, #0x5c0]
08c0eda4: bl       #0x39d34bc
08c0eda8: adrp     x0, #0x9b74000
08c0edac: ldr      x0, [x0, #0x5c8]
08c0edb0: bl       #0x39d34bc
08c0edb4: adrp     x0, #0x9c43000
08c0edb8: ldr      x0, [x0, #0x640]
08c0edbc: bl       #0x39d34bc
08c0edc0: adrp     x0, #0x9c44000
08c0edc4: ldr      x0, [x0, #0xc38]
08c0edc8: bl       #0x39d34bc
08c0edcc: adrp     x0, #0x9b47000
08c0edd0: ldr      x0, [x0, #0xa0]
08c0edd4: bl       #0x39d34bc
08c0edd8: adrp     x0, #0x9c44000
08c0eddc: ldr      x0, [x0, #0xc40]
08c0ede0: bl       #0x39d34bc
08c0ede4: adrp     x0, #0x9c44000
08c0ede8: ldr      x0, [x0, #0xc48]
08c0edec: bl       #0x39d34bc
08c0edf0: adrp     x0, #0x9bad000
08c0edf4: ldr      x0, [x0, #0xcb8]
08c0edf8: bl       #0x39d34bc
08c0edfc: adrp     x0, #0x9c44000
08c0ee00: ldr      x0, [x0, #0xc50]
08c0ee04: bl       #0x39d34bc
08c0ee08: mov      w8, #1
08c0ee0c: strb     w8, [x20, #0x64d]
08c0ee10: mov      w0, #0x2471
08c0ee14: mov      x1, xzr
08c0ee18: stp      xzr, xzr, [sp, #0x60]
08c0ee1c: str      xzr, [sp, #0x70]
08c0ee20: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0ee24: tbz      w0, #0, #0x8c0ee5c
08c0ee28: mov      w0, #0x2471
08c0ee2c: mov      x1, xzr
08c0ee30: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0ee34: cbz      x0, #0x8c0f0d0
08c0ee38: mov      x1, x24
08c0ee3c: mov      w2, w23
08c0ee40: mov      x3, x22
08c0ee44: mov      x4, x19
08c0ee48: mov      w5, w21
08c0ee4c: mov      x6, xzr
08c0ee50: bl       #0x86749a8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1709
08c0ee54: mov      x20, x0
08c0ee58: b        #0x8c0f0ac
08c0ee5c: adrp     x20, #0x9c43000
08c0ee60: ldr      x20, [x20, #0x640]
08c0ee64: ldr      x0, [x20]
08c0ee68: ldr      w8, [x0, #0xe0]
08c0ee6c: cbnz     w8, #0x8c0ee78
08c0ee70: bl       #0x39d35c4
08c0ee74: ldr      x0, [x20]
08c0ee78: ldr      x8, [x0, #0xb8]
08c0ee7c: ldr      x0, [x8]
08c0ee80: cbz      x0, #0x8c0f0d0
08c0ee84: adrp     x8, #0x9c44000
08c0ee88: ldr      x8, [x8, #0xc38]
08c0ee8c: ldr      x1, [x8]
08c0ee90: bl       #0x4f51a50
08c0ee94: cbz      x0, #0x8c0f0d0
08c0ee98: mov      x20, x0
08c0ee9c: str      x24, [x0, #0x10]
08c0eea0: str      w23, [x0, #0x18]
08c0eea4: stp      x22, x19, [x0, #0x20]
08c0eea8: str      w21, [x0, #0x30]
08c0eeac: cbz      x19, #0x8c0f0d0
08c0eeb0: adrp     x23, #0x9b47000
08c0eeb4: ldr      x23, [x23, #0xa0]
08c0eeb8: ldr      x21, [x19, #0x40]
08c0eebc: ldr      x0, [x23]
08c0eec0: ldr      w8, [x0, #0xe0]
08c0eec4: cbnz     w8, #0x8c0eecc
08c0eec8: bl       #0x39d35c4
08c0eecc: adrp     x8, #0x9c44000
08c0eed0: ldr      x8, [x8, #0xc40]
08c0eed4: mov      x0, x21
08c0eed8: mov      x2, xzr
08c0eedc: ldr      x1, [x8]
08c0eee0: bl       #0x8bf9364 ; Utils.GetStringListFromDictionary
08c0eee4: adrp     x8, #0x9b74000
08c0eee8: ldr      x8, [x8, #0x5c8]
08c0eeec: mov      x21, x0
08c0eef0: ldr      x8, [x8]
08c0eef4: ldr      w9, [x8, #0xe0]
08c0eef8: cbnz     w9, #0x8c0ef04
08c0eefc: mov      x0, x8
08c0ef00: bl       #0x39d35c4
08c0ef04: adrp     x8, #0x9b74000
08c0ef08: ldr      x8, [x8, #0x5c0]
08c0ef0c: ldr      x0, [x8]
08c0ef10: bl       #0x4c04988
08c0ef14: str      x0, [x20, #0x88]
08c0ef18: cbz      x21, #0x8c0f0d0
08c0ef1c: adrp     x8, #0x9b41000
08c0ef20: ldr      x8, [x8, #0x3e8]
08c0ef24: mov      x0, x21
08c0ef28: ldr      x1, [x8]
08c0ef2c: add      x8, sp, #0x40
08c0ef30: bl       #0x474997c
08c0ef34: ldr      q0, [sp, #0x40]
08c0ef38: ldr      x8, [sp, #0x50]
08c0ef3c: adrp     x22, #0x9b41000
08c0ef40: ldr      x22, [x22, #0x3d8]
08c0ef44: str      q0, [sp, #0x60]
08c0ef48: str      x8, [sp, #0x70]
08c0ef4c: adrp     x24, #0x9b46000
08c0ef50: ldr      x24, [x24, #0xa68]
08c0ef54: ldr      x1, [x22]
08c0ef58: add      x0, sp, #0x60
08c0ef5c: bl       #0x5750e8c
08c0ef60: tbz      w0, #0, #0x8c0efe4
08c0ef64: ldr      x0, [x23]
08c0ef68: ldr      x21, [sp, #0x70]
08c0ef6c: ldr      w8, [x0, #0xe0]
08c0ef70: cbnz     w8, #0x8c0ef78
08c0ef74: bl       #0x39d35c4
08c0ef78: mov      x0, x21
08c0ef7c: mov      w1, wzr
08c0ef80: mov      x2, xzr
08c0ef84: bl       #0x8bf9dd8 ; Utils.ParseAilment
08c0ef88: mov      w1, w0
08c0ef8c: ldr      x0, [x20, #0x88]
08c0ef90: cbz      x0, #0x8c0f0c8
08c0ef94: ldr      w10, [x0, #0x1c]
08c0ef98: ldr      x8, [x0, #0x10]
08c0ef9c: ldr      x9, [x24]
08c0efa0: add      w10, w10, #1
08c0efa4: str      w10, [x0, #0x1c]
08c0efa8: cbz      x8, #0x8c0f0cc
08c0efac: ldrsw    x10, [x0, #0x18]
08c0efb0: ldr      w11, [x8, #0x18]
08c0efb4: cmp      w10, w11
08c0efb8: b.hs     #0x8c0efd0
08c0efbc: add      w9, w10, #1
08c0efc0: add      x8, x8, x10, lsl #2
08c0efc4: str      w9, [x0, #0x18]
08c0efc8: str      w1, [x8, #0x20]
08c0efcc: b        #0x8c0ef54
08c0efd0: ldr      x8, [x9, #0x20]
08c0efd4: ldr      x8, [x8, #0xc0]
08c0efd8: ldr      x2, [x8, #0x70]
08c0efdc: bl       #0x46ec868
08c0efe0: b        #0x8c0ef54
08c0efe4: adrp     x8, #0x9b41000
08c0efe8: ldr      x8, [x8, #0x3d0]
08c0efec: add      x0, sp, #0x60
08c0eff0: ldr      x1, [x8]
08c0eff4: bl       #0x5750e88
08c0eff8: ldr      x0, [x23]
08c0effc: ldr      x21, [x19, #0x40]
08c0f000: ldr      w8, [x0, #0xe0]
08c0f004: cbnz     w8, #0x8c0f00c
08c0f008: bl       #0x39d35c4
08c0f00c: adrp     x8, #0x9bad000
08c0f010: ldr      x8, [x8, #0xcb8]
08c0f014: mov      x0, x21
08c0f018: mov      w2, wzr
08c0f01c: mov      x3, xzr
08c0f020: ldr      x1, [x8]
08c0f024: bl       #0x8bf97a0 ; Utils.GetElementalTypeFromDictionary
08c0f028: str      w0, [x20, #0x80]
08c0f02c: adrp     x8, #0x9c44000
08c0f030: ldr      x8, [x8, #0xc48]
08c0f034: ldr      x0, [x19, #0x40]
08c0f038: fmov     s0, wzr
08c0f03c: mov      x2, xzr
08c0f040: ldr      x1, [x8]
08c0f044: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08c0f048: add      x8, sp, #0x20
08c0f04c: mov      x0, xzr
08c0f050: bl       #0x3ac68b0
08c0f054: ldr      x8, [sp, #0x30]
08c0f058: ldr      q0, [sp, #0x20]
08c0f05c: adrp     x9, #0x9c44000
08c0f060: ldr      x9, [x9, #0xc50]
08c0f064: str      x8, [sp, #0x50]
08c0f068: str      q0, [sp, #0x40]
08c0f06c: str      x8, [x20, #0x60]
08c0f070: str      q0, [x20, #0x50]
08c0f074: ldr      x0, [x19, #0x40]
08c0f078: ldr      x1, [x9]
08c0f07c: fmov     s0, wzr
08c0f080: mov      x2, xzr
08c0f084: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08c0f088: add      x8, sp, #8
08c0f08c: mov      x0, xzr
08c0f090: bl       #0x3ac68b0
08c0f094: ldr      x8, [sp, #0x18]
08c0f098: ldur     q0, [sp, #8]
08c0f09c: str      x8, [sp, #0x30]
08c0f0a0: str      q0, [sp, #0x20]
08c0f0a4: str      x8, [x20, #0x78]
08c0f0a8: stur     q0, [x20, #0x68]
08c0f0ac: mov      x0, x20
08c0f0b0: ldp      x20, x19, [sp, #0xb0]
08c0f0b4: ldp      x22, x21, [sp, #0xa0]
08c0f0b8: ldp      x24, x23, [sp, #0x90]
08c0f0bc: ldr      x30, [sp, #0x80]
08c0f0c0: add      sp, sp, #0xc0
08c0f0c4: ret      
08c0f0c8: bl       #0x39d36e4
08c0f0cc: bl       #0x39d36e4
08c0f0d0: bl       #0x39d36e4
08c0f0d4: b        #0x8c0f0e4
08c0f0d8: b        #0x8c0f0e4
08c0f0dc: b        #0x8c0f0e4
08c0f0e0: b        #0x8c0f0e4
08c0f0e4: mov      x21, x0
08c0f0e8: cmp      w1, #1
08c0f0ec: b.ne     #0x8c0f120
08c0f0f0: mov      x0, x21
08c0f0f4: bl       #0x9749aa0
08c0f0f8: ldr      x22, [x0]
08c0f0fc: bl       #0x9749ab0
08c0f100: adrp     x8, #0x9b41000
08c0f104: ldr      x8, [x8, #0x3d0]
08c0f108: add      x0, sp, #0x60
08c0f10c: ldr      x1, [x8]
08c0f110: bl       #0x5750e88
08c0f114: cbz      x22, #0x8c0eff8
08c0f118: mov      x0, x22
08c0f11c: bl       #0x39d36dc
08c0f120: mov      x22, xzr
08c0f124: b        #0x8c0f12c
08c0f128: mov      x21, x0
08c0f12c: adrp     x8, #0x9b41000
08c0f130: ldr      x8, [x8, #0x3d0]
08c0f134: ldr      x1, [x8]
08c0f138: add      x0, sp, #0x60
08c0f13c: bl       #0x5750e88
08c0f140: cbnz     x22, #0x8c0f14c
08c0f144: mov      x0, x21
08c0f148: bl       #0x3ab82d0
08c0f14c: mov      x0, x22
08c0f150: bl       #0x39d36dc
08c0f154: bl       #0x35bb99c