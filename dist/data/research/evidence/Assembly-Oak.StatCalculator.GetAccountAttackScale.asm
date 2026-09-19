0759eecc: str      d10, [sp, #-0x70]!
0759eed0: stp      d9, d8, [sp, #0x10]
0759eed4: stp      x30, x27, [sp, #0x20]
0759eed8: stp      x26, x25, [sp, #0x30]
0759eedc: stp      x24, x23, [sp, #0x40]
0759eee0: stp      x22, x21, [sp, #0x50]
0759eee4: stp      x20, x19, [sp, #0x60]
0759eee8: adrp     x23, #0xa26e000
0759eeec: ldrb     w8, [x23, #0x538]
0759eef0: mov      w22, w3
0759eef4: mov      x19, x2
0759eef8: mov      w20, w1
0759eefc: mov      x21, x0
0759ef00: tbnz     w8, #0, #0x759ef3c
0759ef04: adrp     x0, #0x9be6000
0759ef08: ldr      x0, [x0, #0xc60]
0759ef0c: bl       #0x39d34bc
0759ef10: adrp     x0, #0x9be6000
0759ef14: ldr      x0, [x0, #0xc80]
0759ef18: bl       #0x39d34bc
0759ef1c: adrp     x0, #0x9be6000
0759ef20: ldr      x0, [x0, #0xc88]
0759ef24: bl       #0x39d34bc
0759ef28: adrp     x0, #0x9be6000
0759ef2c: ldr      x0, [x0, #0xc90]
0759ef30: bl       #0x39d34bc
0759ef34: mov      w8, #1
0759ef38: strb     w8, [x23, #0x538]
0759ef3c: mov      w0, #0x4c83
0759ef40: movk     w0, #1, lsl #16
0759ef44: mov      x1, xzr
0759ef48: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0759ef4c: tbz      w0, #0, #0x759ef98
0759ef50: mov      w0, #0x4c83
0759ef54: movk     w0, #1, lsl #16
0759ef58: mov      x1, xzr
0759ef5c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0759ef60: cbz      x0, #0x759f1d0
0759ef64: mov      x1, x21
0759ef68: mov      w2, w20
0759ef6c: mov      x3, x19
0759ef70: mov      w4, w22
0759ef74: ldp      x20, x19, [sp, #0x60]
0759ef78: ldp      x22, x21, [sp, #0x50]
0759ef7c: ldp      x24, x23, [sp, #0x40]
0759ef80: ldp      x26, x25, [sp, #0x30]
0759ef84: ldp      x30, x27, [sp, #0x20]
0759ef88: ldp      d9, d8, [sp, #0x10]
0759ef8c: mov      x5, xzr
0759ef90: ldr      d10, [sp], #0x70
0759ef94: b        #0x87b5b50 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_6699
0759ef98: adrp     x8, #0x9be6000
0759ef9c: ldr      x8, [x8, #0xc60]
0759efa0: ldr      x0, [x8]
0759efa4: ldr      w8, [x0, #0xe0]
0759efa8: cbnz     w8, #0x759efb0
0759efac: bl       #0x39d35c4
0759efb0: mov      w0, w22
0759efb4: bl       #0x759b998 ; Oak.AccountOptionModifier.GetAttackModifier
0759efb8: cbz      x19, #0x759f1d0
0759efbc: adrp     x26, #0x9be6000
0759efc0: adrp     x27, #0x9be6000
0759efc4: adrp     x25, #0x9be6000
0759efc8: ldr      x26, [x26, #0xc88]
0759efcc: ldr      x27, [x27, #0xc90]
0759efd0: ldr      x25, [x25, #0xc80]
0759efd4: mov      x22, x0
0759efd8: mov      w23, wzr
0759efdc: fmov     s10, wzr
0759efe0: fmov     s8, wzr
0759efe4: ldr      x8, [x19]
0759efe8: ldr      x1, [x26]
0759efec: ldrh     w9, [x8, #0x12e]
0759eff0: cbz      x9, #0x759f014
0759eff4: ldr      x10, [x8, #0xb0]
0759eff8: add      x10, x10, #8
0759effc: ldur     x11, [x10, #-8]
0759f000: cmp      x11, x1
0759f004: b.eq     #0x759f024
0759f008: subs     x9, x9, #1
0759f00c: add      x10, x10, #0x10
0759f010: b.ne     #0x759effc
0759f014: mov      x0, x19
0759f018: mov      w2, wzr
0759f01c: bl       #0x39a94f0
0759f020: b        #0x759f030
0759f024: ldrsw    x9, [x10]
0759f028: add      x8, x8, x9, lsl #4
0759f02c: add      x0, x8, #0x138
0759f030: ldp      x8, x1, [x0]
0759f034: mov      x0, x19
0759f038: blr      x8
0759f03c: cmp      w23, w0
0759f040: b.ge     #0x759f13c
0759f044: ldr      x8, [x19]
0759f048: ldr      x1, [x27]
0759f04c: ldrh     w9, [x8, #0x12e]
0759f050: cbz      x9, #0x759f074
0759f054: ldr      x10, [x8, #0xb0]
0759f058: add      x10, x10, #8
0759f05c: ldur     x11, [x10, #-8]
0759f060: cmp      x11, x1
0759f064: b.eq     #0x759f084
0759f068: subs     x9, x9, #1
0759f06c: add      x10, x10, #0x10
0759f070: b.ne     #0x759f05c
0759f074: mov      x0, x19
0759f078: mov      w2, wzr
0759f07c: bl       #0x39a94f0
0759f080: b        #0x759f090
0759f084: ldrsw    x9, [x10]
0759f088: add      x8, x8, x9, lsl #4
0759f08c: add      x0, x8, #0x138
0759f090: ldp      x8, x2, [x0]
0759f094: mov      x0, x19
0759f098: mov      w1, w23
0759f09c: blr      x8
0759f0a0: cbz      x21, #0x759f1d0
0759f0a4: mov      w24, w0
0759f0a8: mov      x0, x21
0759f0ac: mov      w1, w20
0759f0b0: mov      w2, w24
0759f0b4: mov      x3, xzr
0759f0b8: bl       #0x69dabfc ; Oak.CharacterOptionStats.GetAccountAttackScale
0759f0bc: cbz      x22, #0x759f1d0
0759f0c0: ldr      x8, [x22]
0759f0c4: ldr      x1, [x25]
0759f0c8: mov      v9.16b, v0.16b
0759f0cc: ldrh     w9, [x8, #0x12e]
0759f0d0: cbz      x9, #0x759f0f4
0759f0d4: ldr      x10, [x8, #0xb0]
0759f0d8: add      x10, x10, #8
0759f0dc: ldur     x11, [x10, #-8]
0759f0e0: cmp      x11, x1
0759f0e4: b.eq     #0x759f104
0759f0e8: subs     x9, x9, #1
0759f0ec: add      x10, x10, #0x10
0759f0f0: b.ne     #0x759f0dc
0759f0f4: mov      x0, x22
0759f0f8: mov      w2, wzr
0759f0fc: bl       #0x39a94f0
0759f100: b        #0x759f110
0759f104: ldrsw    x9, [x10]
0759f108: add      x8, x8, x9, lsl #4
0759f10c: add      x0, x8, #0x138
0759f110: ldp      x8, x2, [x0]
0759f114: mov      x0, x22
0759f118: mov      w1, w24
0759f11c: blr      x8
0759f120: fadd     s0, s10, s9
0759f124: fadd     s1, s8, s9
0759f128: tst      w0, #1
0759f12c: fcsel    s8, s1, s8, ne
0759f130: fcsel    s10, s10, s0, ne
0759f134: add      w23, w23, #1
0759f138: b        #0x759efe4
0759f13c: fcmp     s8, #0.0
0759f140: b.le     #0x759f1ac
0759f144: cbz      x22, #0x759f1d0
0759f148: ldr      x8, [x22]
0759f14c: ldr      x1, [x25]
0759f150: ldrh     w9, [x8, #0x12e]
0759f154: cbz      x9, #0x759f178
0759f158: ldr      x10, [x8, #0xb0]
0759f15c: add      x10, x10, #8
0759f160: ldur     x11, [x10, #-8]
0759f164: cmp      x11, x1
0759f168: b.eq     #0x759f188
0759f16c: subs     x9, x9, #1
0759f170: add      x10, x10, #0x10
0759f174: b.ne     #0x759f160
0759f178: mov      w2, #1
0759f17c: mov      x0, x22
0759f180: bl       #0x39a94f0
0759f184: b        #0x759f198
0759f188: ldr      w9, [x10]
0759f18c: add      w9, w9, #1
0759f190: add      x8, x8, w9, sxtw #4
0759f194: add      x0, x8, #0x138
0759f198: ldp      x8, x1, [x0]
0759f19c: mov      x0, x22
0759f1a0: mov      v0.16b, v8.16b
0759f1a4: blr      x8
0759f1a8: mov      v8.16b, v0.16b
0759f1ac: fadd     s0, s10, s8
0759f1b0: ldp      x20, x19, [sp, #0x60]
0759f1b4: ldp      x22, x21, [sp, #0x50]
0759f1b8: ldp      x24, x23, [sp, #0x40]
0759f1bc: ldp      x26, x25, [sp, #0x30]
0759f1c0: ldp      x30, x27, [sp, #0x20]
0759f1c4: ldp      d9, d8, [sp, #0x10]
0759f1c8: ldr      d10, [sp], #0x70
0759f1cc: ret      
0759f1d0: bl       #0x39d36e4