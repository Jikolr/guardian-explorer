0669d0bc: str      d10, [sp, #-0x30]!
0669d0c0: stp      d9, d8, [sp, #8]
0669d0c4: str      x30, [sp, #0x18]
0669d0c8: stp      x20, x19, [sp, #0x20]
0669d0cc: adrp     x20, #0xa269000
0669d0d0: ldrb     w8, [x20, #0x33e]
0669d0d4: mov      v8.16b, v1.16b
0669d0d8: mov      v9.16b, v0.16b
0669d0dc: mov      x19, x0
0669d0e0: tbnz     w8, #0, #0x669d104
0669d0e4: adrp     x0, #0x9b44000
0669d0e8: ldr      x0, [x0, #0xda8]
0669d0ec: bl       #0x39d34bc
0669d0f0: adrp     x0, #0x9b46000
0669d0f4: ldr      x0, [x0, #0xcd0]
0669d0f8: bl       #0x39d34bc
0669d0fc: mov      w8, #1
0669d100: strb     w8, [x20, #0x33e]
0669d104: mov      w0, #0x1137
0669d108: mov      x1, xzr
0669d10c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0669d110: tbz      w0, #0, #0x669d148
0669d114: mov      w0, #0x1137
0669d118: mov      x1, xzr
0669d11c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0669d120: cbz      x0, #0x669d228
0669d124: mov      x1, x19
0669d128: mov      v0.16b, v9.16b
0669d12c: mov      v1.16b, v8.16b
0669d130: ldp      x20, x19, [sp, #0x20]
0669d134: ldr      x30, [sp, #0x18]
0669d138: ldp      d9, d8, [sp, #8]
0669d13c: mov      x2, xzr
0669d140: ldr      d10, [sp], #0x30
0669d144: b        #0x864f424 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1090
0669d148: cbz      x19, #0x669d228
0669d14c: adrp     x10, #0x9b44000
0669d150: ldr      x8, [x19]
0669d154: ldr      x10, [x10, #0xda8]
0669d158: ldrh     w9, [x8, #0x12e]
0669d15c: ldr      x1, [x10]
0669d160: cbz      x9, #0x669d184
0669d164: ldr      x10, [x8, #0xb0]
0669d168: add      x10, x10, #8
0669d16c: ldur     x11, [x10, #-8]
0669d170: cmp      x11, x1
0669d174: b.eq     #0x669d194
0669d178: subs     x9, x9, #1
0669d17c: add      x10, x10, #0x10
0669d180: b.ne     #0x669d16c
0669d184: mov      x0, x19
0669d188: mov      w2, wzr
0669d18c: bl       #0x39a94f0
0669d190: b        #0x669d1a0
0669d194: ldrsw    x9, [x10]
0669d198: add      x8, x8, x9, lsl #4
0669d19c: add      x0, x8, #0x138
0669d1a0: ldp      x8, x1, [x0]
0669d1a4: mov      x0, x19
0669d1a8: blr      x8
0669d1ac: cbz      x0, #0x669d228
0669d1b0: adrp     x8, #0x9b46000
0669d1b4: ldr      x8, [x8, #0xcd0]
0669d1b8: ldr      x9, [x0]
0669d1bc: ldr      x8, [x8]
0669d1c0: ldrb     w11, [x9, #0x130]
0669d1c4: ldrb     w10, [x8, #0x130]
0669d1c8: cmp      w11, w10
0669d1cc: b.lo     #0x669d1ec
0669d1d0: ldr      x9, [x9, #0xc8]
0669d1d4: add      x9, x9, x10, lsl #3
0669d1d8: ldur     x9, [x9, #-8]
0669d1dc: cmp      x9, x8
0669d1e0: b.ne     #0x669d1ec
0669d1e4: ldr      x0, [x0, #0x260]
0669d1e8: cbz      x0, #0x669d228
0669d1ec: ldp      x8, x1, [x0, #0x188]
0669d1f0: mov      x2, xzr
0669d1f4: mov      x0, x8
0669d1f8: bl       #0x75a2400 ; Oak.StatCalculator.GetAtk2Dps
0669d1fc: mov      v10.16b, v0.16b
0669d200: mov      x0, x19
0669d204: mov      v0.16b, v9.16b
0669d208: mov      v1.16b, v8.16b
0669d20c: bl       #0x669cc8c ; Oak.IBattleActionExtensions.CalculateAttackModifier
0669d210: ldp      x20, x19, [sp, #0x20]
0669d214: ldr      x30, [sp, #0x18]
0669d218: ldp      d9, d8, [sp, #8]
0669d21c: fmul     s0, s10, s0
0669d220: ldr      d10, [sp], #0x30
0669d224: ret      
0669d228: bl       #0x39d36e4