08c0f158: str      x30, [sp, #-0x40]!
08c0f15c: stp      x24, x23, [sp, #0x10]
08c0f160: stp      x22, x21, [sp, #0x20]
08c0f164: stp      x20, x19, [sp, #0x30]
08c0f168: adrp     x20, #0xa279000
08c0f16c: ldrb     w8, [x20, #0x64e]
08c0f170: mov      x19, x0
08c0f174: tbnz     w8, #0, #0x8c0f1ec
08c0f178: adrp     x0, #0x9b77000
08c0f17c: ldr      x0, [x0, #0x468]
08c0f180: bl       #0x39d34bc
08c0f184: adrp     x0, #0x9b77000
08c0f188: ldr      x0, [x0, #0x470]
08c0f18c: bl       #0x39d34bc
08c0f190: adrp     x0, #0x9b44000
08c0f194: ldr      x0, [x0, #0xf00]
08c0f198: bl       #0x39d34bc
08c0f19c: adrp     x0, #0x9b78000
08c0f1a0: ldr      x0, [x0, #0x6a0]
08c0f1a4: bl       #0x39d34bc
08c0f1a8: adrp     x0, #0x9b4e000
08c0f1ac: ldr      x0, [x0, #0xa50]
08c0f1b0: bl       #0x39d34bc
08c0f1b4: adrp     x0, #0x9c44000
08c0f1b8: ldr      x0, [x0, #0xc28]
08c0f1bc: bl       #0x39d34bc
08c0f1c0: adrp     x0, #0x9c44000
08c0f1c4: ldr      x0, [x0, #0xc30]
08c0f1c8: bl       #0x39d34bc
08c0f1cc: adrp     x0, #0x9c43000
08c0f1d0: ldr      x0, [x0, #0x640]
08c0f1d4: bl       #0x39d34bc
08c0f1d8: adrp     x0, #0x9c44000
08c0f1dc: ldr      x0, [x0, #0xc58]
08c0f1e0: bl       #0x39d34bc
08c0f1e4: mov      w8, #1
08c0f1e8: strb     w8, [x20, #0x64e]
08c0f1ec: mov      w0, #0x49b1
08c0f1f0: mov      x1, xzr
08c0f1f4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0f1f8: tbz      w0, #0, #0x8c0f228
08c0f1fc: mov      w0, #0x49b1
08c0f200: mov      x1, xzr
08c0f204: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0f208: cbz      x0, #0x8c0f3a0
08c0f20c: mov      x1, x19
08c0f210: ldp      x20, x19, [sp, #0x30]
08c0f214: ldp      x22, x21, [sp, #0x20]
08c0f218: ldp      x24, x23, [sp, #0x10]
08c0f21c: mov      x2, xzr
08c0f220: ldr      x30, [sp], #0x40
08c0f224: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08c0f228: adrp     x22, #0x9b44000
08c0f22c: ldr      x22, [x22, #0xf00]
08c0f230: ldr      x0, [x22]
08c0f234: ldr      w8, [x0, #0xe0]
08c0f238: cbnz     w8, #0x8c0f240
08c0f23c: bl       #0x39d35c4
08c0f240: adrp     x24, #0xa25e000
08c0f244: ldrb     w8, [x24, #0x1ba]
08c0f248: cbnz     w8, #0x8c0f260
08c0f24c: adrp     x0, #0x9b44000
08c0f250: ldr      x0, [x0, #0xf00]
08c0f254: bl       #0x39d34bc
08c0f258: mov      w8, #1
08c0f25c: strb     w8, [x24, #0x1ba]
08c0f260: ldr      x0, [x22]
08c0f264: adrp     x23, #0x9b4e000
08c0f268: adrp     x21, #0x9c44000
08c0f26c: ldr      w8, [x0, #0xe0]
08c0f270: ldr      x23, [x23, #0xa50]
08c0f274: ldr      x21, [x21, #0xc28]
08c0f278: cbnz     w8, #0x8c0f284
08c0f27c: bl       #0x39d35c4
08c0f280: ldr      x0, [x22]
08c0f284: ldr      x8, [x0, #0xb8]
08c0f288: ldr      x0, [x23]
08c0f28c: ldr      x20, [x8]
08c0f290: bl       #0x39d36d8
08c0f294: ldr      x2, [x21]
08c0f298: mov      x1, x19
08c0f29c: mov      x3, xzr
08c0f2a0: mov      x21, x0
08c0f2a4: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08c0f2a8: cbz      x20, #0x8c0f3a0
08c0f2ac: adrp     x8, #0x9b77000
08c0f2b0: ldr      x8, [x8, #0x468]
08c0f2b4: mov      x0, x20
08c0f2b8: mov      x1, x21
08c0f2bc: ldr      x2, [x8]
08c0f2c0: bl       #0x40e25f0
08c0f2c4: ldrb     w8, [x24, #0x1ba]
08c0f2c8: cbnz     w8, #0x8c0f2e0
08c0f2cc: adrp     x0, #0x9b44000
08c0f2d0: ldr      x0, [x0, #0xf00]
08c0f2d4: bl       #0x39d34bc
08c0f2d8: mov      w8, #1
08c0f2dc: strb     w8, [x24, #0x1ba]
08c0f2e0: ldr      x0, [x22]
08c0f2e4: ldr      w8, [x0, #0xe0]
08c0f2e8: cbnz     w8, #0x8c0f2f4
08c0f2ec: bl       #0x39d35c4
08c0f2f0: ldr      x0, [x22]
08c0f2f4: ldr      x8, [x0, #0xb8]
08c0f2f8: ldr      x0, [x23]
08c0f2fc: ldr      x20, [x8]
08c0f300: bl       #0x39d36d8
08c0f304: adrp     x8, #0x9c44000
08c0f308: ldr      x8, [x8, #0xc30]
08c0f30c: mov      x1, x19
08c0f310: mov      x3, xzr
08c0f314: mov      x21, x0
08c0f318: ldr      x2, [x8]
08c0f31c: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08c0f320: cbz      x20, #0x8c0f3a0
08c0f324: adrp     x8, #0x9b77000
08c0f328: ldr      x8, [x8, #0x470]
08c0f32c: mov      x0, x20
08c0f330: mov      x1, x21
08c0f334: ldr      x2, [x8]
08c0f338: bl       #0x40e25f0
08c0f33c: ldr      x0, [x19, #0x88]
08c0f340: cbz      x0, #0x8c0f3a0
08c0f344: adrp     x8, #0x9b78000
08c0f348: ldr      x8, [x8, #0x6a0]
08c0f34c: ldr      x1, [x8]
08c0f350: bl       #0x4c04d6c
08c0f354: adrp     x20, #0x9c43000
08c0f358: ldr      x20, [x20, #0x640]
08c0f35c: ldr      x0, [x20]
08c0f360: ldr      w8, [x0, #0xe0]
08c0f364: cbnz     w8, #0x8c0f370
08c0f368: bl       #0x39d35c4
08c0f36c: ldr      x0, [x20]
08c0f370: ldr      x8, [x0, #0xb8]
08c0f374: ldr      x0, [x8]
08c0f378: cbz      x0, #0x8c0f3a0
08c0f37c: adrp     x8, #0x9c44000
08c0f380: ldr      x8, [x8, #0xc58]
08c0f384: mov      x1, x19
08c0f388: ldp      x20, x19, [sp, #0x30]
08c0f38c: ldp      x22, x21, [sp, #0x20]
08c0f390: ldr      x2, [x8]
08c0f394: ldp      x24, x23, [sp, #0x10]
08c0f398: ldr      x30, [sp], #0x40
08c0f39c: b        #0x4f51a9c
08c0f3a0: bl       #0x39d36e4