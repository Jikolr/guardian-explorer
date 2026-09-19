0759f1d4: str      d8, [sp, #-0x30]!
0759f1d8: str      x30, [sp, #8]
0759f1dc: stp      x22, x21, [sp, #0x10]
0759f1e0: stp      x20, x19, [sp, #0x20]
0759f1e4: adrp     x22, #0xa26e000
0759f1e8: ldrb     w8, [x22, #0x537]
0759f1ec: mov      w19, w2
0759f1f0: mov      w20, w1
0759f1f4: mov      x21, x0
0759f1f8: tbnz     w8, #0, #0x759f21c
0759f1fc: adrp     x0, #0x9be6000
0759f200: ldr      x0, [x0, #0xc70]
0759f204: bl       #0x39d34bc
0759f208: adrp     x0, #0x9be6000
0759f20c: ldr      x0, [x0, #0xc98]
0759f210: bl       #0x39d34bc
0759f214: mov      w8, #1
0759f218: strb     w8, [x22, #0x537]
0759f21c: mov      w0, #0x4c82
0759f220: movk     w0, #1, lsl #16
0759f224: mov      x1, xzr
0759f228: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0759f22c: tbz      w0, #0, #0x759f268
0759f230: mov      w0, #0x4c82
0759f234: movk     w0, #1, lsl #16
0759f238: mov      x1, xzr
0759f23c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0759f240: cbz      x0, #0x759f2f8
0759f244: mov      x1, x21
0759f248: mov      w2, w20
0759f24c: mov      w3, w19
0759f250: ldp      x20, x19, [sp, #0x20]
0759f254: ldp      x22, x21, [sp, #0x10]
0759f258: ldr      x30, [sp, #8]
0759f25c: mov      x4, xzr
0759f260: ldr      d8, [sp], #0x30
0759f264: b        #0x87b5a6c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_6698
0759f268: adrp     x8, #0x9be6000
0759f26c: ldr      x8, [x8, #0xc70]
0759f270: ldr      x0, [x8]
0759f274: ldr      w8, [x0, #0xe0]
0759f278: cbnz     w8, #0x759f280
0759f27c: bl       #0x39d35c4
0759f280: mov      w0, w19
0759f284: bl       #0x759bd74 ; Oak.BlessOptionModifier.GetAttackModifier
0759f288: mov      x19, x0
0759f28c: cbz      x21, #0x759f2f0
0759f290: mov      x0, x21
0759f294: mov      w1, w20
0759f298: mov      x2, xzr
0759f29c: bl       #0x69db528 ; Oak.CharacterOptionStats.GetBlessAttackScale
0759f2a0: mov      v8.16b, v0.16b
0759f2a4: cbz      x19, #0x759f2f8
0759f2a8: adrp     x10, #0x9be6000
0759f2ac: ldr      x8, [x19]
0759f2b0: ldr      x10, [x10, #0xc98]
0759f2b4: ldrh     w9, [x8, #0x12e]
0759f2b8: ldr      x1, [x10]
0759f2bc: cbz      x9, #0x759f2e0
0759f2c0: ldr      x10, [x8, #0xb0]
0759f2c4: add      x10, x10, #8
0759f2c8: ldur     x11, [x10, #-8]
0759f2cc: cmp      x11, x1
0759f2d0: b.eq     #0x759f2fc
0759f2d4: subs     x9, x9, #1
0759f2d8: add      x10, x10, #0x10
0759f2dc: b.ne     #0x759f2c8
0759f2e0: mov      x0, x19
0759f2e4: mov      w2, wzr
0759f2e8: bl       #0x39a94f0
0759f2ec: b        #0x759f308
0759f2f0: fmov     s8, wzr
0759f2f4: cbnz     x19, #0x759f2a8
0759f2f8: bl       #0x39d36e4
0759f2fc: ldrsw    x9, [x10]
0759f300: add      x8, x8, x9, lsl #4
0759f304: add      x0, x8, #0x138
0759f308: ldp      x8, x1, [x0]
0759f30c: mov      x0, x19
0759f310: mov      v0.16b, v8.16b
0759f314: blr      x8
0759f318: ldp      x20, x19, [sp, #0x20]
0759f31c: ldp      x22, x21, [sp, #0x10]
0759f320: ldr      x30, [sp, #8]
0759f324: fmov     s1, wzr
0759f328: fmax     s0, s0, s1
0759f32c: ldr      d8, [sp], #0x30
0759f330: ret      