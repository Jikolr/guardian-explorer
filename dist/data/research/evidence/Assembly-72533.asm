06a5c2dc: stp      x30, x21, [sp, #-0x20]!
06a5c2e0: stp      x20, x19, [sp, #0x10]
06a5c2e4: adrp     x21, #0xa26a000
06a5c2e8: ldrb     w8, [x21, #0xcf8]
06a5c2ec: mov      x20, x1
06a5c2f0: mov      x19, x0
06a5c2f4: tbnz     w8, #0, #0x6a5c30c
06a5c2f8: adrp     x0, #0x9b4f000
06a5c2fc: ldr      x0, [x0, #0x5c8]
06a5c300: bl       #0x39d34bc
06a5c304: mov      w8, #1
06a5c308: strb     w8, [x21, #0xcf8]
06a5c30c: mov      w0, #0xe17f
06a5c310: mov      x1, xzr
06a5c314: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a5c318: tbz      w0, #0, #0x6a5c344
06a5c31c: mov      w0, #0xe17f
06a5c320: mov      x1, xzr
06a5c324: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a5c328: cbz      x0, #0x6a5c39c
06a5c32c: mov      x1, x19
06a5c330: mov      x2, x20
06a5c334: ldp      x20, x19, [sp, #0x10]
06a5c338: mov      x3, xzr
06a5c33c: ldp      x30, x21, [sp], #0x20
06a5c340: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
06a5c344: cbz      x20, #0x6a5c390
06a5c348: adrp     x8, #0x9b4f000
06a5c34c: ldr      x8, [x8, #0x5c8]
06a5c350: ldr      x9, [x20]
06a5c354: ldr      x8, [x8]
06a5c358: ldrb     w11, [x9, #0x130]
06a5c35c: ldrb     w10, [x8, #0x130]
06a5c360: cmp      w11, w10
06a5c364: b.lo     #0x6a5c390
06a5c368: ldr      x9, [x9, #0xc8]
06a5c36c: add      x9, x9, x10, lsl #3
06a5c370: ldur     x9, [x9, #-8]
06a5c374: cmp      x9, x8
06a5c378: csel     x0, x20, xzr, eq
06a5c37c: b.ne     #0x6a5c390
06a5c380: cbz      x0, #0x6a5c39c
06a5c384: mov      x1, xzr
06a5c388: bl       #0x77316b0 ; Oak.Weapon.get_RawTotalAttack
06a5c38c: str      s0, [x19, #0x34]
06a5c390: ldp      x20, x19, [sp, #0x10]
06a5c394: ldp      x30, x21, [sp], #0x20
06a5c398: ret      
06a5c39c: bl       #0x39d36e4