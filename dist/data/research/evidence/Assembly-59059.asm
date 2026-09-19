067115e0: sub      sp, sp, #0x190
067115e4: stp      d9, d8, [sp, #0x150]
067115e8: str      x29, [sp, #0x160]
067115ec: stp      x30, x21, [sp, #0x170]
067115f0: stp      x20, x19, [sp, #0x180]
067115f4: adrp     x20, #0xa269000
067115f8: ldrb     w8, [x20, #0x57d]
067115fc: mov      x19, x0
06711600: tbnz     w8, #0, #0x6711630
06711604: adrp     x0, #0x9b73000
06711608: ldr      x0, [x0, #0xc08]
0671160c: bl       #0x39d34bc
06711610: adrp     x0, #0x9b45000
06711614: ldr      x0, [x0, #0x7b8]
06711618: bl       #0x39d34bc
0671161c: adrp     x0, #0x9b73000
06711620: ldr      x0, [x0, #0xc78]
06711624: bl       #0x39d34bc
06711628: mov      w8, #1
0671162c: strb     w8, [x20, #0x57d]
06711630: mov      w0, #0xfb1
06711634: mov      x1, xzr
06711638: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0671163c: tbz      w0, #0, #0x6711660
06711640: mov      w0, #0xfb1
06711644: mov      x1, xzr
06711648: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0671164c: cbz      x0, #0x67118ac
06711650: mov      x1, x19
06711654: mov      x2, xzr
06711658: bl       #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
0671165c: b        #0x6711894
06711660: ldr      x0, [x19, #0x110]
06711664: cbz      x0, #0x67118ac
06711668: bl       #0x67108d0 ; Oak.WeaponTypeSpec.get_IsArmor
0671166c: fmov     s0, wzr
06711670: tbnz     w0, #0, #0x6711894
06711674: ldr      x0, [x19, #0x110]
06711678: cbz      x0, #0x67118ac
0671167c: bl       #0x6710918 ; Oak.WeaponTypeSpec.get_IsProjectile
06711680: tbz      w0, #0, #0x67116e4
06711684: ldr      x0, [x19, #0x230]
06711688: mov      x1, xzr
0671168c: bl       #0x3ac9cf4
06711690: mov      x1, xzr
06711694: bl       #0x5abf280
06711698: adrp     x8, #0x9b45000
0671169c: ldr      x8, [x8, #0x7b8]
067116a0: mov      w21, w0
067116a4: ldr      x8, [x8]
067116a8: ldr      w9, [x8, #0xe0]
067116ac: cbnz     w9, #0x67116b8
067116b0: mov      x0, x8
067116b4: bl       #0x39d35c4
067116b8: adrp     x8, #0x9b73000
067116bc: ldr      x8, [x8, #0xc08]
067116c0: ldr      x0, [x8]
067116c4: bl       #0x4057db4
067116c8: mov      x20, x0
067116cc: tbz      w21, #0, #0x671170c
067116d0: cbz      x20, #0x67118ac
067116d4: adrp     x8, #0x9b73000
067116d8: ldr      x8, [x8, #0xc78]
067116dc: ldr      x1, [x8]
067116e0: b        #0x6711720
067116e4: ldr      x8, [x19, #0x110]
067116e8: cbz      x8, #0x67118ac
067116ec: ldr      x9, [x8, #0x28]
067116f0: ldur     q0, [x8, #0x18]
067116f4: mov      x0, sp
067116f8: mov      x1, xzr
067116fc: str      x9, [sp, #0x10]
06711700: str      q0, [sp]
06711704: bl       #0x3ac5138
06711708: b        #0x6711894
0671170c: ldr      x0, [x19, #0x230]
06711710: mov      x1, xzr
06711714: bl       #0x3ac9cf4
06711718: cbz      x20, #0x67118ac
0671171c: mov      x1, x0
06711720: mov      x0, x20
06711724: mov      x2, xzr
06711728: bl       #0x6cd1f28 ; Oak.ProjectileData.GetSpec
0671172c: ldr      q0, [x19, #0x1e0]
06711730: ldr      w8, [x19, #0x1f0]
06711734: mov      x20, x0
06711738: add      x0, sp, #0x110
0671173c: mov      x1, xzr
06711740: str      q0, [sp, #0x110]
06711744: str      w8, [sp, #0x120]
06711748: bl       #0x3ac6fb0
0671174c: scvtf    s8, w0
06711750: cbz      x20, #0x6711768
06711754: ldr      x8, [x20, #0x50]
06711758: ldr      q0, [x20, #0x40]
0671175c: str      x8, [sp, #0x140]
06711760: str      q0, [sp, #0x130]
06711764: b        #0x6711788
06711768: add      x8, sp, #0xf8
0671176c: fmov     s0, #1.00000000
06711770: mov      x0, xzr
06711774: bl       #0x3ac68b0
06711778: ldur     q0, [sp, #0xf8]
0671177c: ldr      x8, [sp, #0x108]
06711780: str      q0, [sp, #0x130]
06711784: str      x8, [sp, #0x140]
06711788: ldr      q0, [sp, #0x130]
0671178c: ldr      x8, [sp, #0x140]
06711790: add      x0, sp, #0xe0
06711794: mov      x1, xzr
06711798: str      q0, [sp, #0xe0]
0671179c: str      x8, [sp, #0xf0]
067117a0: bl       #0x3ac5138
067117a4: add      x21, x19, #0x288
067117a8: ldr      q1, [x21]
067117ac: ldr      w8, [x21, #0x10]
067117b0: add      x0, sp, #0xc0
067117b4: mov      x1, xzr
067117b8: fmul     s9, s0, s8
067117bc: str      q1, [sp, #0xc0]
067117c0: str      w8, [sp, #0xd0]
067117c4: bl       #0x3ac6fb0
067117c8: cmp      w0, #1
067117cc: b.lt     #0x6711868
067117d0: ldr      w8, [x21, #0x10]
067117d4: ldr      q0, [x21]
067117d8: add      x0, sp, #0xa0
067117dc: mov      x1, xzr
067117e0: str      w8, [sp, #0xb0]
067117e4: str      q0, [sp, #0xa0]
067117e8: bl       #0x3ac6fb0
067117ec: add      x8, x19, #0x258
067117f0: ldr      q0, [x8]
067117f4: ldr      x8, [x8, #0x10]
067117f8: mov      w20, w0
067117fc: add      x0, sp, #0x80
06711800: mov      x1, xzr
06711804: str      q0, [sp, #0x80]
06711808: str      x8, [sp, #0x90]
0671180c: bl       #0x3ac5138
06711810: mov      v8.16b, v0.16b
06711814: ldr      q0, [x21]
06711818: ldr      w8, [x21, #0x10]
0671181c: add      x0, sp, #0x60
06711820: mov      x1, xzr
06711824: str      q0, [sp, #0x60]
06711828: str      w8, [sp, #0x70]
0671182c: bl       #0x3ac6fb0
06711830: ldr      q0, [x19, #0x270]
06711834: ldr      x8, [x19, #0x280]
06711838: mov      w21, w0
0671183c: add      x0, sp, #0x40
06711840: mov      x1, xzr
06711844: str      q0, [sp, #0x40]
06711848: str      x8, [sp, #0x50]
0671184c: bl       #0x3ac5138
06711850: sub      w8, w21, #1
06711854: scvtf    s2, w8
06711858: fmul     s2, s8, s2
0671185c: scvtf    s1, w20
06711860: fadd     s0, s2, s0
06711864: b        #0x671188c
06711868: add      x8, x19, #0x258
0671186c: ldr      x9, [x8, #0x10]
06711870: ldr      q0, [x8]
06711874: add      x0, sp, #0x20
06711878: mov      x1, xzr
0671187c: str      x9, [sp, #0x30]
06711880: str      q0, [sp, #0x20]
06711884: bl       #0x3ac5138
06711888: fmov     s1, #1.00000000
0671188c: fdiv     s0, s1, s0
06711890: fmul     s0, s9, s0
06711894: ldp      x20, x19, [sp, #0x180]
06711898: ldp      x30, x21, [sp, #0x170]
0671189c: ldr      x29, [sp, #0x160]
067118a0: ldp      d9, d8, [sp, #0x150]
067118a4: add      sp, sp, #0x190
067118a8: ret      
067118ac: bl       #0x39d36e4