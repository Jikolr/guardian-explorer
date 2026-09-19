06cab0dc: sub      sp, sp, #0xf0
06cab0e0: stp      x29, x30, [sp, #0x90]
06cab0e4: stp      x28, x27, [sp, #0xa0]
06cab0e8: stp      x26, x25, [sp, #0xb0]
06cab0ec: stp      x24, x23, [sp, #0xc0]
06cab0f0: stp      x22, x21, [sp, #0xd0]
06cab0f4: stp      x20, x19, [sp, #0xe0]
06cab0f8: adrp     x20, #0xa26b000
06cab0fc: ldrb     w8, [x20, #0xcb7]
06cab100: mov      x19, x0
06cab104: tbnz     w8, #0, #0x6cab230
06cab108: adrp     x0, #0x9b7a000
06cab10c: ldr      x0, [x0, #0x518]
06cab110: bl       #0x39d34bc
06cab114: adrp     x0, #0x9b7a000
06cab118: ldr      x0, [x0, #8]
06cab11c: bl       #0x39d34bc
06cab120: adrp     x0, #0x9b4b000
06cab124: ldr      x0, [x0, #0xf70]
06cab128: bl       #0x39d34bc
06cab12c: adrp     x0, #0x9bbc000
06cab130: ldr      x0, [x0, #0xba8]
06cab134: bl       #0x39d34bc
06cab138: adrp     x0, #0x9b47000
06cab13c: ldr      x0, [x0, #0x778]
06cab140: bl       #0x39d34bc
06cab144: adrp     x0, #0x9b4b000
06cab148: ldr      x0, [x0, #0xf60]
06cab14c: bl       #0x39d34bc
06cab150: adrp     x0, #0x9b4b000
06cab154: ldr      x0, [x0, #0xf48]
06cab158: bl       #0x39d34bc
06cab15c: adrp     x0, #0x9b47000
06cab160: ldr      x0, [x0, #0x770]
06cab164: bl       #0x39d34bc
06cab168: adrp     x0, #0x9bbc000
06cab16c: ldr      x0, [x0, #0xbb0]
06cab170: bl       #0x39d34bc
06cab174: adrp     x0, #0x9b4b000
06cab178: ldr      x0, [x0, #0xf80]
06cab17c: bl       #0x39d34bc
06cab180: adrp     x0, #0x9bbc000
06cab184: ldr      x0, [x0, #0xbb8]
06cab188: bl       #0x39d34bc
06cab18c: adrp     x0, #0x9b4b000
06cab190: ldr      x0, [x0, #0xf88]
06cab194: bl       #0x39d34bc
06cab198: adrp     x0, #0x9bbc000
06cab19c: ldr      x0, [x0, #0xbc0]
06cab1a0: bl       #0x39d34bc
06cab1a4: adrp     x0, #0x9b4b000
06cab1a8: ldr      x0, [x0, #0xf90]
06cab1ac: bl       #0x39d34bc
06cab1b0: adrp     x0, #0x9b9c000
06cab1b4: ldr      x0, [x0, #0xd38]
06cab1b8: bl       #0x39d34bc
06cab1bc: adrp     x0, #0x9b4b000
06cab1c0: ldr      x0, [x0, #0xf98]
06cab1c4: bl       #0x39d34bc
06cab1c8: adrp     x0, #0x9bbc000
06cab1cc: ldr      x0, [x0, #0xbc8]
06cab1d0: bl       #0x39d34bc
06cab1d4: adrp     x0, #0x9b4b000
06cab1d8: ldr      x0, [x0, #0xfa0]
06cab1dc: bl       #0x39d34bc
06cab1e0: adrp     x0, #0x9b79000
06cab1e4: ldr      x0, [x0, #0x400]
06cab1e8: bl       #0x39d34bc
06cab1ec: adrp     x0, #0x9b79000
06cab1f0: ldr      x0, [x0, #0xda8]
06cab1f4: bl       #0x39d34bc
06cab1f8: adrp     x0, #0x9b47000
06cab1fc: ldr      x0, [x0, #0x3a0]
06cab200: bl       #0x39d34bc
06cab204: adrp     x0, #0x9b47000
06cab208: ldr      x0, [x0, #0x310]
06cab20c: bl       #0x39d34bc
06cab210: adrp     x0, #0x9b47000
06cab214: ldr      x0, [x0, #0x318]
06cab218: bl       #0x39d34bc
06cab21c: adrp     x0, #0x9b4c000
06cab220: ldr      x0, [x0, #0x7c0]
06cab224: bl       #0x39d34bc
06cab228: mov      w8, #1
06cab22c: strb     w8, [x20, #0xcb7]
06cab230: movi     v0.2d, #0000000000000000
06cab234: mov      w0, #0x9b9a
06cab238: mov      x1, xzr
06cab23c: str      xzr, [sp, #0x80]
06cab240: str      xzr, [sp, #0x58]
06cab244: stp      q0, q0, [sp, #0x60]
06cab248: stp      q0, q0, [sp, #0x30]
06cab24c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06cab250: tbz      w0, #0, #0x6cab274
06cab254: mov      w0, #0x9b9a
06cab258: mov      x1, xzr
06cab25c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06cab260: cbz      x0, #0x6cab6d0
06cab264: mov      x1, x19
06cab268: mov      x2, xzr
06cab26c: bl       #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
06cab270: b        #0x6cab6a4
06cab274: adrp     x20, #0x9b4c000
06cab278: ldr      x20, [x20, #0x7c0]
06cab27c: ldr      x0, [x20]
06cab280: ldr      w8, [x0, #0xe0]
06cab284: cbnz     w8, #0x6cab28c
06cab288: bl       #0x39d35c4
06cab28c: adrp     x22, #0xa25e000
06cab290: ldrb     w8, [x22, #0xf69]
06cab294: cbnz     w8, #0x6cab2ac
06cab298: adrp     x0, #0x9b4c000
06cab29c: ldr      x0, [x0, #0x7c0]
06cab2a0: bl       #0x39d34bc
06cab2a4: mov      w8, #1
06cab2a8: strb     w8, [x22, #0xf69]
06cab2ac: ldr      x0, [x20]
06cab2b0: ldr      w8, [x0, #0xe0]
06cab2b4: cbnz     w8, #0x6cab2c0
06cab2b8: bl       #0x39d35c4
06cab2bc: ldr      x0, [x20]
06cab2c0: ldr      x8, [x0, #0xb8]
06cab2c4: ldr      x8, [x8]
06cab2c8: cbz      x8, #0x6cab6a4
06cab2cc: ldr      x8, [x19, #0x60]
06cab2d0: cbz      x8, #0x6cab6d0
06cab2d4: ldp      w2, w9, [x8, #0x18]
06cab2d8: add      w9, w9, #1
06cab2dc: cmp      w2, #1
06cab2e0: stp      wzr, w9, [x8, #0x18]
06cab2e4: b.lt     #0x6cab2fc
06cab2e8: ldr      x0, [x8, #0x10]
06cab2ec: mov      w1, wzr
06cab2f0: mov      x3, xzr
06cab2f4: bl       #0x5c7bed8
06cab2f8: ldr      x0, [x20]
06cab2fc: ldr      w8, [x0, #0xe0]
06cab300: cbnz     w8, #0x6cab308
06cab304: bl       #0x39d35c4
06cab308: ldrb     w8, [x22, #0xf69]
06cab30c: cbnz     w8, #0x6cab324
06cab310: adrp     x0, #0x9b4c000
06cab314: ldr      x0, [x0, #0x7c0]
06cab318: bl       #0x39d34bc
06cab31c: mov      w8, #1
06cab320: strb     w8, [x22, #0xf69]
06cab324: ldr      x0, [x20]
06cab328: ldr      w8, [x0, #0xe0]
06cab32c: cbnz     w8, #0x6cab338
06cab330: bl       #0x39d35c4
06cab334: ldr      x0, [x20]
06cab338: ldr      x8, [x0, #0xb8]
06cab33c: ldr      x0, [x8]
06cab340: cbz      x0, #0x6cab6d0
06cab344: mov      x1, xzr
06cab348: bl       #0x6ad7a58 ; Oak.User.GetKnightCharacter
06cab34c: ldrb     w8, [x22, #0xf69]
06cab350: mov      x21, x0
06cab354: cbnz     w8, #0x6cab36c
06cab358: adrp     x0, #0x9b4c000
06cab35c: ldr      x0, [x0, #0x7c0]
06cab360: bl       #0x39d34bc
06cab364: mov      w8, #1
06cab368: strb     w8, [x22, #0xf69]
06cab36c: ldr      x0, [x20]
06cab370: ldr      w8, [x0, #0xe0]
06cab374: cbnz     w8, #0x6cab380
06cab378: bl       #0x39d35c4
06cab37c: ldr      x0, [x20]
06cab380: ldr      x8, [x0, #0xb8]
06cab384: ldr      x0, [x8]
06cab388: cbz      x0, #0x6cab6d0
06cab38c: mov      x1, xzr
06cab390: bl       #0x6ad7e7c ; Oak.User.GetChinaHeroCharacter
06cab394: cbz      x21, #0x6cab6a4
06cab398: adrp     x8, #0x9b47000
06cab39c: ldr      x8, [x8, #0x770]
06cab3a0: mov      x22, x0
06cab3a4: ldr      x0, [x8]
06cab3a8: bl       #0x39d36d8
06cab3ac: adrp     x8, #0x9b47000
06cab3b0: ldr      x8, [x8, #0x778]
06cab3b4: mov      x20, x0
06cab3b8: ldr      x1, [x8]
06cab3bc: bl       #0x5409bbc
06cab3c0: ldr      x0, [x19, #0x50]
06cab3c4: cbz      x0, #0x6cab6d0
06cab3c8: adrp     x8, #0x9bbc000
06cab3cc: ldr      x8, [x8, #0xba8]
06cab3d0: ldr      x1, [x8]
06cab3d4: add      x8, sp, #8
06cab3d8: bl       #0x541a7e4
06cab3dc: ldur     q0, [sp, #8]
06cab3e0: ldur     q1, [sp, #0x18]
06cab3e4: ldr      x8, [sp, #0x28]
06cab3e8: adrp     x24, #0x9bbc000
06cab3ec: adrp     x25, #0x9b7a000
06cab3f0: adrp     x26, #0x9b47000
06cab3f4: adrp     x27, #0x9b7a000
06cab3f8: ldr      x24, [x24, #0xbb8]
06cab3fc: ldr      x25, [x25, #0x518]
06cab400: ldr      x26, [x26, #0x318]
06cab404: ldr      x27, [x27, #8]
06cab408: stp      q0, q1, [sp, #0x60]
06cab40c: str      x8, [sp, #0x80]
06cab410: adrp     x29, #0x9b4b000
06cab414: ldr      x29, [x29, #0xf48]
06cab418: ldr      x1, [x24]
06cab41c: add      x0, sp, #0x60
06cab420: bl       #0x57c2fe4
06cab424: tbz      w0, #0, #0x6cab5b8
06cab428: ldr      x28, [sp, #0x78]
06cab42c: cbz      x28, #0x6cab6c4
06cab430: ldr      w0, [x28, #0x14]
06cab434: mov      x1, xzr
06cab438: bl       #0x60a5718 ; Oak.CharacterSpec.GetById
06cab43c: cbz      x0, #0x6cab418
06cab440: mov      x1, xzr
06cab444: bl       #0x60a5a4c ; Oak.CharacterSpec.get_IsValid
06cab448: tbz      w0, #0, #0x6cab418
06cab44c: ldr      x8, [x28, #0x28]
06cab450: tst      w8, #0xff
06cab454: str      x8, [sp, #0x58]
06cab458: b.eq     #0x6cab418
06cab45c: ldr      x0, [x25]
06cab460: ldr      w23, [x28, #0x14]
06cab464: ldr      w8, [x0, #0xe0]
06cab468: cbnz     w8, #0x6cab470
06cab46c: bl       #0x39d35c4
06cab470: mov      w0, w23
06cab474: mov      x1, xzr
06cab478: bl       #0x60a4974 ; Oak.CharacterSpecId.IsDefaultCharacter
06cab47c: tbz      w0, #0, #0x6cab4a4
06cab480: mov      x0, x21
06cab484: mov      x1, xzr
06cab488: bl       #0x608d1bc ; Oak.CharacterInfo.get_CharacterSpec
06cab48c: cbz      x0, #0x6cab6d8
06cab490: ldr      w23, [x0, #0xa4]
06cab494: ldr      w8, [x28, #0x14]
06cab498: cmp      w23, w8
06cab49c: b.ne     #0x6cab418
06cab4a0: b        #0x6cab4a8
06cab4a4: ldr      w23, [x28, #0x14]
06cab4a8: ldr      x0, [x25]
06cab4ac: ldr      w8, [x0, #0xe0]
06cab4b0: cbnz     w8, #0x6cab4b8
06cab4b4: bl       #0x39d35c4
06cab4b8: mov      w0, w23
06cab4bc: mov      x1, xzr
06cab4c0: bl       #0x60a4a38 ; Oak.CharacterSpecId.IsChinaHeroCharacter
06cab4c4: tbz      w0, #0, #0x6cab510
06cab4c8: cbz      x22, #0x6cab4e4
06cab4cc: mov      x0, x22
06cab4d0: mov      x1, xzr
06cab4d4: bl       #0x608d1bc ; Oak.CharacterInfo.get_CharacterSpec
06cab4d8: cbz      x0, #0x6cab6dc
06cab4dc: add      x8, x0, #0xa4
06cab4e0: b        #0x6cab500
06cab4e4: ldr      x0, [x25]
06cab4e8: ldr      w8, [x0, #0xe0]
06cab4ec: cbnz     w8, #0x6cab4f8
06cab4f0: bl       #0x39d35c4
06cab4f4: ldr      x0, [x25]
06cab4f8: ldr      x8, [x0, #0xb8]
06cab4fc: add      x8, x8, #0x38
06cab500: ldr      w8, [x8]
06cab504: ldr      w9, [x28, #0x14]
06cab508: cmp      w8, w9
06cab50c: b.ne     #0x6cab418
06cab510: ldr      x8, [x28, #0x28]
06cab514: ldr      x1, [x26]
06cab518: str      x8, [sp, #0x58]
06cab51c: add      x0, sp, #0x58
06cab520: bl       #0x4b3c140
06cab524: mov      w1, w0
06cab528: cbz      x20, #0x6cab6d4
06cab52c: ldr      x2, [x27]
06cab530: mov      x0, x20
06cab534: bl       #0x540a710
06cab538: ldr      x8, [x28, #0x28]
06cab53c: ldr      x1, [x26]
06cab540: str      x8, [sp, #0x58]
06cab544: tbz      w0, #0, #0x6cab590
06cab548: add      x0, sp, #0x58
06cab54c: bl       #0x4b3c140
06cab550: adrp     x8, #0x9b4b000
06cab554: ldr      x8, [x8, #0xf60]
06cab558: mov      w23, w0
06cab55c: ldr      x2, [x8]
06cab560: mov      x0, x20
06cab564: mov      w1, w23
06cab568: bl       #0x540a488
06cab56c: ldr      x8, [x28, #0x38]
06cab570: ldr      x3, [x29]
06cab574: str      x8, [sp, #0x58]
06cab578: lsr      x8, x8, #0x20
06cab57c: add      w2, w0, w8
06cab580: mov      x0, x20
06cab584: mov      w1, w23
06cab588: bl       #0x540a510
06cab58c: b        #0x6cab418
06cab590: add      x0, sp, #0x58
06cab594: bl       #0x4b3c140
06cab598: mov      w1, w0
06cab59c: ldr      x8, [x28, #0x38]
06cab5a0: ldr      x3, [x29]
06cab5a4: str      x8, [sp, #0x58]
06cab5a8: lsr      x2, x8, #0x20
06cab5ac: mov      x0, x20
06cab5b0: bl       #0x540a510
06cab5b4: b        #0x6cab418
06cab5b8: adrp     x8, #0x9bbc000
06cab5bc: ldr      x8, [x8, #0xbb0]
06cab5c0: add      x0, sp, #0x60
06cab5c4: ldr      x1, [x8]
06cab5c8: bl       #0x57c30fc
06cab5cc: cbz      x20, #0x6cab6d0
06cab5d0: adrp     x8, #0x9b4b000
06cab5d4: ldr      x8, [x8, #0xf70]
06cab5d8: mov      x0, x20
06cab5dc: ldr      x1, [x8]
06cab5e0: add      x8, sp, #8
06cab5e4: bl       #0x540a8fc
06cab5e8: ldur     q0, [sp, #8]
06cab5ec: ldur     q1, [sp, #0x18]
06cab5f0: adrp     x20, #0x9b4b000
06cab5f4: adrp     x21, #0x9b9c000
06cab5f8: ldr      x20, [x20, #0xf88]
06cab5fc: ldr      x21, [x21, #0xd38]
06cab600: stp      q0, q1, [sp, #0x30]
06cab604: adrp     x22, #0x9b79000
06cab608: ldr      x22, [x22, #0x400]
06cab60c: ldr      x1, [x20]
06cab610: add      x0, sp, #0x30
06cab614: bl       #0x57bff64
06cab618: tbz      w0, #0, #0x6cab690
06cab61c: ldp      w0, w1, [sp, #0x40]
06cab620: mov      x2, xzr
06cab624: bl       #0x66da708 ; Oak.OptionManager.CreateOption
06cab628: ldr      x1, [x21]
06cab62c: bl       #0x39d35c8
06cab630: mov      x1, x0
06cab634: cbz      x1, #0x6cab60c
06cab638: ldr      x0, [x19, #0x60]
06cab63c: cbz      x0, #0x6cab6c8
06cab640: ldr      w10, [x0, #0x1c]
06cab644: ldr      x8, [x0, #0x10]
06cab648: ldr      x9, [x22]
06cab64c: add      w10, w10, #1
06cab650: str      w10, [x0, #0x1c]
06cab654: cbz      x8, #0x6cab6cc
06cab658: ldrsw    x10, [x0, #0x18]
06cab65c: ldr      w11, [x8, #0x18]
06cab660: cmp      w10, w11
06cab664: b.hs     #0x6cab67c
06cab668: add      w9, w10, #1
06cab66c: add      x8, x8, x10, lsl #3
06cab670: str      w9, [x0, #0x18]
06cab674: str      x1, [x8, #0x20]
06cab678: b        #0x6cab60c
06cab67c: ldr      x8, [x9, #0x20]
06cab680: ldr      x8, [x8, #0xc0]
06cab684: ldr      x2, [x8, #0x70]
06cab688: bl       #0x4748d50
06cab68c: b        #0x6cab60c
06cab690: adrp     x8, #0x9b4b000
06cab694: ldr      x8, [x8, #0xf80]
06cab698: add      x0, sp, #0x30
06cab69c: ldr      x1, [x8]
06cab6a0: bl       #0x57c0064
06cab6a4: ldp      x20, x19, [sp, #0xe0]
06cab6a8: ldp      x22, x21, [sp, #0xd0]
06cab6ac: ldp      x24, x23, [sp, #0xc0]
06cab6b0: ldp      x26, x25, [sp, #0xb0]
06cab6b4: ldp      x28, x27, [sp, #0xa0]
06cab6b8: ldp      x29, x30, [sp, #0x90]
06cab6bc: add      sp, sp, #0xf0
06cab6c0: ret      
06cab6c4: bl       #0x39d36e4
06cab6c8: bl       #0x39d36e4
06cab6cc: bl       #0x39d36e4
06cab6d0: bl       #0x39d36e4
06cab6d4: bl       #0x39d36e4
06cab6d8: bl       #0x39d36e4
06cab6dc: bl       #0x39d36e4
06cab6e0: b        #0x6cab734
06cab6e4: b        #0x6cab734
06cab6e8: b        #0x6cab734
06cab6ec: b        #0x6cab734
06cab6f0: b        #0x6cab734
06cab6f4: b        #0x6cab734
06cab6f8: b        #0x6cab734
06cab6fc: b        #0x6cab734
06cab700: b        #0x6cab734
06cab704: b        #0x6cab734
06cab708: b        #0x6cab734
06cab70c: b        #0x6cab734
06cab710: b        #0x6cab734
06cab714: b        #0x6cab734
06cab718: b        #0x6cab734
06cab71c: b        #0x6cab734
06cab720: b        #0x6cab734
06cab724: b        #0x6cab7a4
06cab728: b        #0x6cab734
06cab72c: b        #0x6cab734
06cab730: b        #0x6cab734
06cab734: mov      x21, x0
06cab738: cmp      w1, #1
06cab73c: b.ne     #0x6cab770
06cab740: mov      x0, x21
06cab744: bl       #0x9749aa0
06cab748: ldr      x22, [x0]
06cab74c: bl       #0x9749ab0
06cab750: adrp     x8, #0x9bbc000
06cab754: ldr      x8, [x8, #0xbb0]
06cab758: add      x0, sp, #0x60
06cab75c: ldr      x1, [x8]
06cab760: bl       #0x57c30fc
06cab764: cbz      x22, #0x6cab5cc
06cab768: mov      x0, x22
06cab76c: bl       #0x39d36dc
06cab770: mov      x22, xzr
06cab774: b        #0x6cab77c
06cab778: mov      x21, x0
06cab77c: adrp     x8, #0x9bbc000
06cab780: ldr      x8, [x8, #0xbb0]
06cab784: ldr      x1, [x8]
06cab788: add      x0, sp, #0x60
06cab78c: bl       #0x57c30fc
06cab790: cbz      x22, #0x6cab804
06cab794: mov      x0, x22
06cab798: bl       #0x39d36dc
06cab79c: b        #0x6cab7a4
06cab7a0: b        #0x6cab7a4
06cab7a4: mov      x21, x0
06cab7a8: cmp      w1, #1
06cab7ac: b.ne     #0x6cab7e0
06cab7b0: mov      x0, x21
06cab7b4: bl       #0x9749aa0
06cab7b8: ldr      x19, [x0]
06cab7bc: bl       #0x9749ab0
06cab7c0: adrp     x8, #0x9b4b000
06cab7c4: ldr      x8, [x8, #0xf80]
06cab7c8: add      x0, sp, #0x30
06cab7cc: ldr      x1, [x8]
06cab7d0: bl       #0x57c0064
06cab7d4: cbz      x19, #0x6cab6a4
06cab7d8: mov      x0, x19
06cab7dc: bl       #0x39d36dc
06cab7e0: mov      x19, xzr
06cab7e4: b        #0x6cab7ec
06cab7e8: mov      x21, x0
06cab7ec: adrp     x8, #0x9b4b000
06cab7f0: ldr      x8, [x8, #0xf80]
06cab7f4: ldr      x1, [x8]
06cab7f8: add      x0, sp, #0x30
06cab7fc: bl       #0x57c0064
06cab800: cbnz     x19, #0x6cab80c
06cab804: mov      x0, x21
06cab808: bl       #0x3ab82d0
06cab80c: mov      x0, x19
06cab810: bl       #0x39d36dc
06cab814: bl       #0x35bb99c