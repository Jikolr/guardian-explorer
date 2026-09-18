08c87fec: sub      sp, sp, #0x70
08c87ff0: stp      d9, d8, [sp, #0x40]
08c87ff4: stp      x30, x21, [sp, #0x50]
08c87ff8: stp      x20, x19, [sp, #0x60]
08c87ffc: adrp     x20, #0xa279000
08c88000: ldrb     w8, [x20, #0x941]
08c88004: mov      x19, x0
08c88008: tbnz     w8, #0, #0x8c88038
08c8800c: adrp     x0, #0x9b45000
08c88010: ldr      x0, [x0, #0x3f8]
08c88014: bl       #0x39d34bc
08c88018: adrp     x0, #0x9b83000
08c8801c: ldr      x0, [x0, #0x6c8]
08c88020: bl       #0x39d34bc
08c88024: adrp     x0, #0x9b3f000
08c88028: ldr      x0, [x0, #0x810]
08c8802c: bl       #0x39d34bc
08c88030: mov      w8, #1
08c88034: strb     w8, [x20, #0x941]
08c88038: mov      w0, #0xa82
08c8803c: mov      x1, xzr
08c88040: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c88044: tbz      w0, #0, #0x8c88074
08c88048: mov      w0, #0xa82
08c8804c: mov      x1, xzr
08c88050: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c88054: cbz      x0, #0x8c881ac
08c88058: mov      x1, x19
08c8805c: ldp      x20, x19, [sp, #0x60]
08c88060: ldp      x30, x21, [sp, #0x50]
08c88064: ldp      d9, d8, [sp, #0x40]
08c88068: mov      x2, xzr
08c8806c: add      sp, sp, #0x70
08c88070: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08c88074: ldr      w8, [x19, #0x30]
08c88078: ldr      q0, [x19, #0x20]
08c8807c: ldr      x20, [x19, #0x4c8]
08c88080: add      x0, sp, #0x20
08c88084: mov      x1, xzr
08c88088: str      w8, [sp, #0x30]
08c8808c: str      q0, [sp, #0x20]
08c88090: bl       #0x3ac6fb0
08c88094: ldur     q0, [x19, #0x34]
08c88098: ldr      w8, [x19, #0x44]
08c8809c: mov      w21, w0
08c880a0: mov      x0, sp
08c880a4: mov      x1, xzr
08c880a8: str      q0, [sp]
08c880ac: str      w8, [sp, #0x10]
08c880b0: bl       #0x3ac6fb0
08c880b4: cbz      x20, #0x8c881ac
08c880b8: mov      w2, w0
08c880bc: mov      x0, x20
08c880c0: mov      w1, w21
08c880c4: mov      x3, xzr
08c880c8: bl       #0x60a6ed4 ; Oak.CharacterSpec.DamageReduction
08c880cc: ldr      x8, [x19, #0x4c0]
08c880d0: mov      v8.16b, v0.16b
08c880d4: cbz      x8, #0x8c880f8
08c880d8: adrp     x9, #0x9b45000
08c880dc: ldr      x9, [x9, #0x3f8]
08c880e0: ldr      x10, [x8]
08c880e4: ldr      x9, [x9]
08c880e8: ldrb     w12, [x10, #0x130]
08c880ec: ldrb     w11, [x9, #0x130]
08c880f0: cmp      w12, w11
08c880f4: b.hs     #0x8c88100
08c880f8: mov      x20, xzr
08c880fc: b        #0x8c88114
08c88100: ldr      x10, [x10, #0xc8]
08c88104: add      x10, x10, x11, lsl #3
08c88108: ldur     x10, [x10, #-8]
08c8810c: cmp      x10, x9
08c88110: csel     x20, x8, xzr, eq
08c88114: adrp     x8, #0x9b3f000
08c88118: ldr      x8, [x8, #0x810]
08c8811c: ldr      x0, [x8]
08c88120: ldr      w8, [x0, #0xe0]
08c88124: cbnz     w8, #0x8c8812c
08c88128: bl       #0x39d35c4
08c8812c: mov      x0, x20
08c88130: mov      x1, xzr
08c88134: mov      x2, xzr
08c88138: bl       #0x94bbcc8
08c8813c: tbz      w0, #0, #0x8c88150
08c88140: mov      x0, x20
08c88144: mov      x1, xzr
08c88148: bl       #0x759fb98 ; Oak.StatCalculator.GetFinalDamageReduction
08c8814c: mov      v8.16b, v0.16b
08c88150: add      x0, x19, #0x98
08c88154: mov      x1, xzr
08c88158: bl       #0x66af9ec ; Oak.BuffStats.get_DamageReductionAdd
08c8815c: ldr      x8, [x19, #0x4c8]
08c88160: cbz      x8, #0x8c881ac
08c88164: adrp     x9, #0x9b83000
08c88168: ldr      x9, [x9, #0x6c8]
08c8816c: ldr      w19, [x8, #0xa4]
08c88170: mov      v9.16b, v0.16b
08c88174: ldr      x0, [x9]
08c88178: ldr      w9, [x0, #0xe0]
08c8817c: cbnz     w9, #0x8c88184
08c88180: bl       #0x39d35c4
08c88184: mov      w0, w19
08c88188: mov      x1, xzr
08c8818c: bl       #0x622eb6c ; Oak.GlobalBalanceModifier.DamageReductionModifier
08c88190: fadd     s1, s8, s9
08c88194: ldp      x20, x19, [sp, #0x60]
08c88198: ldp      x30, x21, [sp, #0x50]
08c8819c: ldp      d9, d8, [sp, #0x40]
08c881a0: fmul     s0, s1, s0
08c881a4: add      sp, sp, #0x70
08c881a8: ret      
08c881ac: bl       #0x39d36e4