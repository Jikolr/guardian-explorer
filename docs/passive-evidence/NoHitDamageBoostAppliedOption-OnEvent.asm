Oak.NoHitDamageBoostAppliedOption.Oak.IEventListener.OnEvent
06a2f078: stp      x30, x21, [sp, #-0x20]!
06a2f07c: stp      x20, x19, [sp, #0x10]
06a2f080: adrp     x21, #0xa26a000
06a2f084: ldrb     w8, [x21, #0xbed]
06a2f088: mov      x20, x1
06a2f08c: mov      x19, x0
06a2f090: tbnz     w8, #0, #0x6a2f0a8
06a2f094: adrp     x0, #0x9b46000
06a2f098: ldr      x0, [x0, #0x488]
06a2f09c: bl       #0x39d34bc ; unmapped
06a2f0a0: mov      w8, #1
06a2f0a4: strb     w8, [x21, #0xbed]
06a2f0a8: mov      w0, #0xdeef
06a2f0ac: mov      x1, xzr
06a2f0b0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a2f0b4: tbz      w0, #0, #0x6a2f0e0
06a2f0b8: mov      w0, #0xdeef
06a2f0bc: mov      x1, xzr
06a2f0c0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a2f0c4: cbz      x0, #0x6a2f140
06a2f0c8: mov      x1, x19
06a2f0cc: mov      x2, x20
06a2f0d0: ldp      x20, x19, [sp, #0x10]
06a2f0d4: mov      x3, xzr
06a2f0d8: ldp      x30, x21, [sp], #0x20
06a2f0dc: b        #0x860be34
06a2f0e0: cbz      x20, #0x6a2f130
06a2f0e4: adrp     x8, #0x9b46000
06a2f0e8: ldr      x8, [x8, #0x488]
06a2f0ec: ldr      x9, [x20]
06a2f0f0: ldr      x8, [x8]
06a2f0f4: ldrb     w11, [x9, #0x130]
06a2f0f8: ldrb     w10, [x8, #0x130]
06a2f0fc: cmp      w11, w10
06a2f100: b.lo     #0x6a2f130
06a2f104: ldr      x9, [x9, #0xc8]
06a2f108: add      x9, x9, x10, lsl #3
06a2f10c: ldur     x9, [x9, #-8]
06a2f110: cmp      x9, x8
06a2f114: b.ne     #0x6a2f130
06a2f118: mov      x0, x19
06a2f11c: bl       #0x6a2ef0c ; Oak.NoHitDamageBoostAppliedOption.get_character
06a2f120: ldr      x8, [x20, #0x20]
06a2f124: cmp      x0, x8
06a2f128: b.ne     #0x6a2f130
06a2f12c: str      wzr, [x19, #0x2c]
06a2f130: ldp      x20, x19, [sp, #0x10]
06a2f134: mov      w0, wzr
06a2f138: ldp      x30, x21, [sp], #0x20
06a2f13c: ret      
06a2f140: bl       #0x39d36e4 ; unmapped