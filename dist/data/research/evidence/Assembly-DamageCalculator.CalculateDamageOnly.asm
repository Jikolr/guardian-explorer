// ['damageInfo']
062a8010: sub      sp, sp, #0x160
062a8014: stp      d13, d12, [sp, #0xd0]
062a8018: stp      d11, d10, [sp, #0xe0]
062a801c: stp      d9, d8, [sp, #0xf0]
062a8020: stp      x29, x30, [sp, #0x100]
062a8024: stp      x28, x27, [sp, #0x110]
062a8028: stp      x26, x25, [sp, #0x120]
062a802c: stp      x24, x23, [sp, #0x130]
062a8030: stp      x22, x21, [sp, #0x140]
062a8034: stp      x20, x19, [sp, #0x150]
062a8038: adrp     x20, #0xa267000
062a803c: ldrb     w8, [x20, #0x582]
062a8040: mov      x19, x0
062a8044: tbnz     w8, #0, #0x62a81b8
062a8048: adrp     x0, #0x9b4c000
062a804c: ldr      x0, [x0, #0x570]
062a8050: bl       #0x39d34bc
062a8054: adrp     x0, #0x9b45000
062a8058: ldr      x0, [x0, #0x3f8]
062a805c: bl       #0x39d34bc
062a8060: adrp     x0, #0x9b45000
062a8064: ldr      x0, [x0, #0xd88]
062a8068: bl       #0x39d34bc
062a806c: adrp     x0, #0x9b83000
062a8070: ldr      x0, [x0, #0x990]
062a8074: bl       #0x39d34bc
062a8078: adrp     x0, #0x9b7c000
062a807c: ldr      x0, [x0, #0x320]
062a8080: bl       #0x39d34bc
062a8084: adrp     x0, #0x9b83000
062a8088: ldr      x0, [x0, #0x6c8]
062a808c: bl       #0x39d34bc
062a8090: adrp     x0, #0x9b85000
062a8094: ldr      x0, [x0, #0x458]
062a8098: bl       #0x39d34bc
062a809c: adrp     x0, #0x9b45000
062a80a0: ldr      x0, [x0, #0x190]
062a80a4: bl       #0x39d34bc
062a80a8: adrp     x0, #0x9b44000
062a80ac: ldr      x0, [x0, #0xea0]
062a80b0: bl       #0x39d34bc
062a80b4: adrp     x0, #0x9b85000
062a80b8: ldr      x0, [x0, #0x440]
062a80bc: bl       #0x39d34bc
062a80c0: adrp     x0, #0x9b85000
062a80c4: ldr      x0, [x0, #0x460]
062a80c8: bl       #0x39d34bc
062a80cc: adrp     x0, #0x9b85000
062a80d0: ldr      x0, [x0, #0x448]
062a80d4: bl       #0x39d34bc
062a80d8: adrp     x0, #0x9b44000
062a80dc: ldr      x0, [x0, #0xea8]
062a80e0: bl       #0x39d34bc
062a80e4: adrp     x0, #0x9b44000
062a80e8: ldr      x0, [x0, #0xdb0]
062a80ec: bl       #0x39d34bc
062a80f0: adrp     x0, #0x9b85000
062a80f4: ldr      x0, [x0, #0x450]
062a80f8: bl       #0x39d34bc
062a80fc: adrp     x0, #0x9b85000
062a8100: ldr      x0, [x0, #0x468]
062a8104: bl       #0x39d34bc
062a8108: adrp     x0, #0x9b85000
062a810c: ldr      x0, [x0, #0x470]
062a8110: bl       #0x39d34bc
062a8114: adrp     x0, #0x9b40000
062a8118: ldr      x0, [x0, #0xd78]
062a811c: bl       #0x39d34bc
062a8120: adrp     x0, #0x9b47000
062a8124: ldr      x0, [x0, #0x78]
062a8128: bl       #0x39d34bc
062a812c: adrp     x0, #0x9b47000
062a8130: ldr      x0, [x0, #0x3a0]
062a8134: bl       #0x39d34bc
062a8138: adrp     x0, #0x9b46000
062a813c: ldr      x0, [x0, #0x58]
062a8140: bl       #0x39d34bc
062a8144: adrp     x0, #0x9b46000
062a8148: ldr      x0, [x0, #0x18]
062a814c: bl       #0x39d34bc
062a8150: adrp     x0, #0x9b7c000
062a8154: ldr      x0, [x0, #0x328]
062a8158: bl       #0x39d34bc
062a815c: adrp     x0, #0x9b47000
062a8160: ldr      x0, [x0, #0x80]
062a8164: bl       #0x39d34bc
062a8168: adrp     x0, #0x9b7c000
062a816c: ldr      x0, [x0, #0x330]
062a8170: bl       #0x39d34bc
062a8174: adrp     x0, #0x9b47000
062a8178: ldr      x0, [x0, #0x88]
062a817c: bl       #0x39d34bc
062a8180: adrp     x0, #0x9b70000
062a8184: ldr      x0, [x0, #0x70]
062a8188: bl       #0x39d34bc
062a818c: adrp     x0, #0x9b85000
062a8190: ldr      x0, [x0, #0x478]
062a8194: bl       #0x39d34bc
062a8198: adrp     x0, #0x9b85000
062a819c: ldr      x0, [x0, #0x480]
062a81a0: bl       #0x39d34bc
062a81a4: adrp     x0, #0x9b85000
062a81a8: ldr      x0, [x0, #0x488]
062a81ac: bl       #0x39d34bc
062a81b0: mov      w8, #1
062a81b4: strb     w8, [x20, #0x582]
062a81b8: mov      w0, #0x9bc
062a81bc: mov      x1, xzr
062a81c0: str      wzr, [sp, #0xc8]
062a81c4: str      xzr, [sp, #0xc0]
062a81c8: stp      xzr, xzr, [sp, #0xa0]
062a81cc: str      xzr, [sp, #0xb0]
062a81d0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a81d4: tbz      w0, #0, #0x62a81f8
062a81d8: mov      w0, #0x9bc
062a81dc: mov      x1, xzr
062a81e0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a81e4: cbz      x0, #0x62a9b70
062a81e8: mov      x1, x19
062a81ec: mov      x2, xzr
062a81f0: bl       #0x86363ac ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_699
062a81f4: b        #0x62a9a8c
062a81f8: ldrh     w8, [x19, #4]
062a81fc: adrp     x28, #0x9b44000
062a8200: ldr      x28, [x28, #0xea0]
062a8204: mov      x0, x19
062a8208: tst      w8, #3
062a820c: mov      x1, xzr
062a8210: cset     w22, ne
062a8214: bl       #0x66c0c4c ; Oak.DamageInfo.get_noCritical
062a8218: ldr      x8, [x19, #8]
062a821c: ldr      x1, [x28]
062a8220: mov      w20, w0
062a8224: mov      x0, x8
062a8228: bl       #0x39d35c8
062a822c: cbz      x0, #0x62a8274
062a8230: ldr      x8, [x0]
062a8234: ldr      x1, [x28]
062a8238: mov      x21, x0
062a823c: ldrh     w9, [x8, #0x12e]
062a8240: cbz      x9, #0x62a8264
062a8244: ldr      x10, [x8, #0xb0]
062a8248: add      x10, x10, #8
062a824c: ldur     x11, [x10, #-8]
062a8250: cmp      x11, x1
062a8254: b.eq     #0x62a827c
062a8258: subs     x9, x9, #1
062a825c: add      x10, x10, #0x10
062a8260: b.ne     #0x62a824c
062a8264: mov      w2, #1
062a8268: mov      x0, x21
062a826c: bl       #0x39a94f0
062a8270: b        #0x62a828c
062a8274: mov      w21, #-1
062a8278: b        #0x62a82ac
062a827c: ldr      w9, [x10]
062a8280: add      w9, w9, #1
062a8284: add      x8, x8, w9, sxtw #4
062a8288: add      x0, x8, #0x138
062a828c: ldp      x8, x1, [x0]
062a8290: mov      x0, x21
062a8294: blr      x8
062a8298: cbz      x0, #0x62a9b70
062a829c: mov      x1, xzr
062a82a0: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
062a82a4: cbz      x0, #0x62a9b70
062a82a8: ldr      w21, [x0, #0xa4]
062a82ac: adrp     x8, #0x9b83000
062a82b0: ldr      x8, [x8, #0x6c8]
062a82b4: eor      w9, w20, #1
062a82b8: and      w20, w22, w9
062a82bc: ldr      x0, [x8]
062a82c0: ldr      w8, [x0, #0xe0]
062a82c4: cbnz     w8, #0x62a82cc
062a82c8: bl       #0x39d35c4
062a82cc: mov      w0, w21
062a82d0: mov      x1, xzr
062a82d4: bl       #0x622e744 ; Oak.GlobalBalanceModifier.BasicAttackModifier
062a82d8: mov      x0, x19
062a82dc: mov      x1, xzr
062a82e0: mov      v8.16b, v0.16b
062a82e4: bl       #0x66c0acc ; Oak.DamageInfo.get_critical
062a82e8: eor      w8, w0, #1
062a82ec: and      w8, w20, w8
062a82f0: cmp      w8, #1
062a82f4: b.ne     #0x62a8a18
062a82f8: ldr      x0, [x19, #8]
062a82fc: ldr      x1, [x28]
062a8300: bl       #0x39d35c8
062a8304: cbz      x0, #0x62a8a18
062a8308: adrp     x23, #0x9b45000
062a830c: ldr      x23, [x23, #0xd88]
062a8310: mov      x20, x0
062a8314: ldr      x0, [x23]
062a8318: ldr      w8, [x0, #0xe0]
062a831c: cbnz     w8, #0x62a8328
062a8320: bl       #0x39d35c4
062a8324: ldr      x0, [x23]
062a8328: ldr      x8, [x0, #0xb8]
062a832c: ldr      x8, [x8]
062a8330: cbz      x8, #0x62a9b70
062a8334: ldrb     w9, [x8, #0x48]
062a8338: cbz      w9, #0x62a8368
062a833c: ldr      w9, [x0, #0xe0]
062a8340: cbnz     w9, #0x62a8358
062a8344: bl       #0x39d35c4
062a8348: ldr      x8, [x23]
062a834c: ldr      x8, [x8, #0xb8]
062a8350: ldr      x8, [x8]
062a8354: cbz      x8, #0x62a9b70
062a8358: mov      x0, x8
062a835c: mov      x1, xzr
062a8360: bl       #0x61449ec ; Oak.CoopClient.get_IsAlone
062a8364: tbz      w0, #0, #0x62a8380
062a8368: mov      x0, xzr
062a836c: bl       #0x94b5e0c
062a8370: mov      w8, #0x42c80000
062a8374: fmov     s1, w8
062a8378: fmul     s9, s0, s1
062a837c: b        #0x62a84e0
062a8380: adrp     x24, #0x9b44000
062a8384: ldr      x8, [x20]
062a8388: ldr      x24, [x24, #0xea8]
062a838c: ldrh     w9, [x8, #0x12e]
062a8390: ldr      x1, [x24]
062a8394: cbz      x9, #0x62a83b8
062a8398: ldr      x10, [x8, #0xb0]
062a839c: add      x10, x10, #8
062a83a0: ldur     x11, [x10, #-8]
062a83a4: cmp      x11, x1
062a83a8: b.eq     #0x62a83c8
062a83ac: subs     x9, x9, #1
062a83b0: add      x10, x10, #0x10
062a83b4: b.ne     #0x62a83a0
062a83b8: mov      x0, x20
062a83bc: mov      w2, wzr
062a83c0: bl       #0x39a94f0
062a83c4: b        #0x62a83d4
062a83c8: ldrsw    x9, [x10]
062a83cc: add      x8, x8, x9, lsl #4
062a83d0: add      x0, x8, #0x138
062a83d4: ldp      x8, x1, [x0]
062a83d8: mov      x0, x20
062a83dc: blr      x8
062a83e0: adrp     x8, #0x9b40000
062a83e4: ldr      x8, [x8, #0xd78]
062a83e8: str      w0, [sp, #0x88]
062a83ec: add      x1, sp, #0x88
062a83f0: ldr      x8, [x8]
062a83f4: mov      x0, x8
062a83f8: bl       #0x39d35cc
062a83fc: adrp     x8, #0x9b85000
062a8400: ldr      x8, [x8, #0x488]
062a8404: mov      x1, x0
062a8408: mov      x2, xzr
062a840c: ldr      x8, [x8]
062a8410: mov      x0, x8
062a8414: bl       #0x5aaf604
062a8418: mov      x21, x0
062a841c: mov      x0, xzr
062a8420: bl       #0x3c71b30
062a8424: ldr      x8, [x23]
062a8428: mov      x22, x0
062a842c: ldr      w9, [x8, #0xe0]
062a8430: cbnz     w9, #0x62a8440
062a8434: mov      x0, x8
062a8438: bl       #0x39d35c4
062a843c: ldr      x8, [x23]
062a8440: ldr      x8, [x8, #0xb8]
062a8444: ldr      x8, [x8]
062a8448: cbz      x8, #0x62a9b70
062a844c: ldr      x9, [x8, #0x18]
062a8450: cbz      x9, #0x62a9b70
062a8454: ldr      x8, [x20]
062a8458: ldr      w23, [x9, #0x3c]
062a845c: ldr      x1, [x24]
062a8460: ldrh     w9, [x8, #0x12e]
062a8464: cbz      x9, #0x62a8488
062a8468: ldr      x10, [x8, #0xb0]
062a846c: add      x10, x10, #8
062a8470: ldur     x11, [x10, #-8]
062a8474: cmp      x11, x1
062a8478: b.eq     #0x62a8498
062a847c: subs     x9, x9, #1
062a8480: add      x10, x10, #0x10
062a8484: b.ne     #0x62a8470
062a8488: mov      x0, x20
062a848c: mov      w2, wzr
062a8490: bl       #0x39a94f0
062a8494: b        #0x62a84a4
062a8498: ldrsw    x9, [x10]
062a849c: add      x8, x8, x9, lsl #4
062a84a0: add      x0, x8, #0x138
062a84a4: ldp      x8, x1, [x0]
062a84a8: mov      x0, x20
062a84ac: blr      x8
062a84b0: cbz      x22, #0x62a9b70
062a84b4: add      w2, w0, w23
062a84b8: mov      x0, x22
062a84bc: mov      x1, x21
062a84c0: mov      x3, xzr
062a84c4: bl       #0x3c71e74
062a84c8: mov      w8, #0x42c80000
062a84cc: fmov     s0, wzr
062a84d0: fmov     s1, w8
062a84d4: mov      x1, xzr
062a84d8: bl       #0x3c71780
062a84dc: mov      v9.16b, v0.16b
062a84e0: ldrh     w0, [x19, #6]
062a84e4: mov      x1, xzr
062a84e8: bl       #0x62acc0c ; Oak.DamageSourceTypeExtensions.IsSupportAction
062a84ec: ldr      x8, [x20]
062a84f0: ldr      x1, [x28]
062a84f4: mov      w21, w0
062a84f8: ldrh     w9, [x8, #0x12e]
062a84fc: cbz      x9, #0x62a8520
062a8500: ldr      x10, [x8, #0xb0]
062a8504: add      x10, x10, #8
062a8508: ldur     x11, [x10, #-8]
062a850c: cmp      x11, x1
062a8510: b.eq     #0x62a8530
062a8514: subs     x9, x9, #1
062a8518: add      x10, x10, #0x10
062a851c: b.ne     #0x62a8508
062a8520: mov      w2, #1
062a8524: mov      x0, x20
062a8528: bl       #0x39a94f0
062a852c: b        #0x62a8540
062a8530: ldr      w9, [x10]
062a8534: add      w9, w9, #1
062a8538: add      x8, x8, w9, sxtw #4
062a853c: add      x0, x8, #0x138
062a8540: ldp      x8, x1, [x0]
062a8544: mov      x0, x20
062a8548: blr      x8
062a854c: tbz      w21, #0, #0x62a8564
062a8550: cbz      x0, #0x62a8578
062a8554: add      x8, sp, #0x88
062a8558: mov      x1, xzr
062a855c: bl       #0x8c870f8 ; Oak.CharacterStatsBehaviour.get_SupportCriticalChance
062a8560: b        #0x62a8584
062a8564: cbz      x0, #0x62a8578
062a8568: add      x8, sp, #0x88
062a856c: mov      x1, xzr
062a8570: bl       #0x8c87044 ; Oak.CharacterStatsBehaviour.get_CriticalChance
062a8574: b        #0x62a8584
062a8578: add      x8, sp, #0x88
062a857c: fmov     s0, wzr
062a8580: bl       #0x3ac68b0
062a8584: ldur     q0, [sp, #0x88]
062a8588: ldr      x8, [sp, #0x98]
062a858c: add      x0, sp, #0x70
062a8590: mov      x1, xzr
062a8594: str      q0, [sp, #0xa0]
062a8598: ldr      q0, [sp, #0xa0]
062a859c: str      x8, [sp, #0xb0]
062a85a0: str      x8, [sp, #0x80]
062a85a4: str      q0, [sp, #0x70]
062a85a8: bl       #0x3ac5138
062a85ac: ldr      x0, [x19, #0x10]
062a85b0: ldr      x1, [x28]
062a85b4: mov      v11.16b, v0.16b
062a85b8: bl       #0x39d35c8
062a85bc: cmp      x0, #0
062a85c0: fmov     s10, wzr
062a85c4: fcsel    s12, s10, s11, eq
062a85c8: cbz      x0, #0x62a86b0
062a85cc: ldr      x8, [x0]
062a85d0: ldr      x1, [x28]
062a85d4: mov      x21, x0
062a85d8: ldrh     w9, [x8, #0x12e]
062a85dc: cbz      x9, #0x62a8600
062a85e0: ldr      x10, [x8, #0xb0]
062a85e4: add      x10, x10, #8
062a85e8: ldur     x11, [x10, #-8]
062a85ec: cmp      x11, x1
062a85f0: b.eq     #0x62a8610
062a85f4: subs     x9, x9, #1
062a85f8: add      x10, x10, #0x10
062a85fc: b.ne     #0x62a85e8
062a8600: mov      w2, #1
062a8604: mov      x0, x21
062a8608: bl       #0x39a94f0
062a860c: b        #0x62a8620
062a8610: ldr      w9, [x10]
062a8614: add      w9, w9, #1
062a8618: add      x8, x8, w9, sxtw #4
062a861c: add      x0, x8, #0x138
062a8620: ldp      x8, x1, [x0]
062a8624: mov      x0, x21
062a8628: blr      x8
062a862c: cmp      x0, #0
062a8630: fmov     s10, wzr
062a8634: fcsel    s11, s10, s12, eq
062a8638: cbz      x0, #0x62a86b4
062a863c: ldr      x8, [x21]
062a8640: ldr      x1, [x28]
062a8644: ldrh     w9, [x8, #0x12e]
062a8648: cbz      x9, #0x62a866c
062a864c: ldr      x10, [x8, #0xb0]
062a8650: add      x10, x10, #8
062a8654: ldur     x11, [x10, #-8]
062a8658: cmp      x11, x1
062a865c: b.eq     #0x62a867c
062a8660: subs     x9, x9, #1
062a8664: add      x10, x10, #0x10
062a8668: b.ne     #0x62a8654
062a866c: mov      w2, #1
062a8670: mov      x0, x21
062a8674: bl       #0x39a94f0
062a8678: b        #0x62a868c
062a867c: ldr      w9, [x10]
062a8680: add      w9, w9, #1
062a8684: add      x8, x8, w9, sxtw #4
062a8688: add      x0, x8, #0x138
062a868c: ldp      x8, x1, [x0]
062a8690: mov      x0, x21
062a8694: blr      x8
062a8698: cbz      x0, #0x62a9b70
062a869c: ldr      x8, [x0]
062a86a0: ldr      x9, [x8, #0x2c8]
062a86a4: ldr      x1, [x8, #0x2d0]
062a86a8: blr      x9
062a86ac: mov      v10.16b, v0.16b
062a86b0: mov      v12.16b, v11.16b
062a86b4: ldr      x8, [x20]
062a86b8: ldr      x1, [x28]
062a86bc: ldrh     w9, [x8, #0x12e]
062a86c0: cbz      x9, #0x62a86e4
062a86c4: ldr      x10, [x8, #0xb0]
062a86c8: add      x10, x10, #8
062a86cc: ldur     x11, [x10, #-8]
062a86d0: cmp      x11, x1
062a86d4: b.eq     #0x62a86f4
062a86d8: subs     x9, x9, #1
062a86dc: add      x10, x10, #0x10
062a86e0: b.ne     #0x62a86cc
062a86e4: mov      x0, x20
062a86e8: mov      w2, wzr
062a86ec: bl       #0x39a94f0
062a86f0: b        #0x62a8700
062a86f4: ldrsw    x9, [x10]
062a86f8: add      x8, x8, x9, lsl #4
062a86fc: add      x0, x8, #0x138
062a8700: ldp      x8, x1, [x0]
062a8704: mov      x0, x20
062a8708: fsub     s10, s12, s10
062a870c: blr      x8
062a8710: cbz      x0, #0x62a89f0
062a8714: adrp     x23, #0x9b45000
062a8718: adrp     x24, #0x9b85000
062a871c: adrp     x25, #0x9b85000
062a8720: adrp     x26, #0x9b85000
062a8724: ldr      x23, [x23, #0x190]
062a8728: ldr      x24, [x24, #0x440]
062a872c: ldr      x25, [x25, #0x450]
062a8730: ldr      x26, [x26, #0x460]
062a8734: mov      w21, wzr
062a8738: ldr      x8, [x20]
062a873c: ldr      x1, [x28]
062a8740: ldrh     w9, [x8, #0x12e]
062a8744: cbz      x9, #0x62a8768
062a8748: ldr      x10, [x8, #0xb0]
062a874c: add      x10, x10, #8
062a8750: ldur     x11, [x10, #-8]
062a8754: cmp      x11, x1
062a8758: b.eq     #0x62a8778
062a875c: subs     x9, x9, #1
062a8760: add      x10, x10, #0x10
062a8764: b.ne     #0x62a8750
062a8768: mov      x0, x20
062a876c: mov      w2, wzr
062a8770: bl       #0x39a94f0
062a8774: b        #0x62a8784
062a8778: ldrsw    x9, [x10]
062a877c: add      x8, x8, x9, lsl #4
062a8780: add      x0, x8, #0x138
062a8784: ldp      x8, x1, [x0]
062a8788: mov      x0, x20
062a878c: blr      x8
062a8790: cbz      x0, #0x62a9b70
062a8794: ldr      x8, [x0]
062a8798: ldr      x1, [x23]
062a879c: mov      x22, x0
062a87a0: ldrh     w9, [x8, #0x12e]
062a87a4: cbz      x9, #0x62a87c8
062a87a8: ldr      x10, [x8, #0xb0]
062a87ac: add      x10, x10, #8
062a87b0: ldur     x11, [x10, #-8]
062a87b4: cmp      x11, x1
062a87b8: b.eq     #0x62a87d8
062a87bc: subs     x9, x9, #1
062a87c0: add      x10, x10, #0x10
062a87c4: b.ne     #0x62a87b0
062a87c8: mov      w2, #2
062a87cc: mov      x0, x22
062a87d0: bl       #0x39a94f0
062a87d4: b        #0x62a87e8
062a87d8: ldr      w9, [x10]
062a87dc: add      w9, w9, #2
062a87e0: add      x8, x8, w9, sxtw #4
062a87e4: add      x0, x8, #0x138
062a87e8: ldp      x8, x1, [x0]
062a87ec: mov      x0, x22
062a87f0: blr      x8
062a87f4: cbz      x0, #0x62a9b70
062a87f8: ldr      x8, [x0]
062a87fc: ldr      x1, [x24]
062a8800: mov      x22, x0
062a8804: ldrh     w9, [x8, #0x12e]
062a8808: cbz      x9, #0x62a882c
062a880c: ldr      x10, [x8, #0xb0]
062a8810: add      x10, x10, #8
062a8814: ldur     x11, [x10, #-8]
062a8818: cmp      x11, x1
062a881c: b.eq     #0x62a883c
062a8820: subs     x9, x9, #1
062a8824: add      x10, x10, #0x10
062a8828: b.ne     #0x62a8814
062a882c: mov      x0, x22
062a8830: mov      w2, wzr
062a8834: bl       #0x39a94f0
062a8838: b        #0x62a8848
062a883c: ldrsw    x9, [x10]
062a8840: add      x8, x8, x9, lsl #4
062a8844: add      x0, x8, #0x138
062a8848: ldp      x8, x1, [x0]
062a884c: mov      x0, x22
062a8850: blr      x8
062a8854: cmp      w21, w0
062a8858: b.ge     #0x62a89f0
062a885c: ldr      x8, [x20]
062a8860: ldr      x1, [x28]
062a8864: ldrh     w9, [x8, #0x12e]
062a8868: cbz      x9, #0x62a888c
062a886c: ldr      x10, [x8, #0xb0]
062a8870: add      x10, x10, #8
062a8874: ldur     x11, [x10, #-8]
062a8878: cmp      x11, x1
062a887c: b.eq     #0x62a889c
062a8880: subs     x9, x9, #1
062a8884: add      x10, x10, #0x10
062a8888: b.ne     #0x62a8874
062a888c: mov      x0, x20
062a8890: mov      w2, wzr
062a8894: bl       #0x39a94f0
062a8898: b        #0x62a88a8
062a889c: ldrsw    x9, [x10]
062a88a0: add      x8, x8, x9, lsl #4
062a88a4: add      x0, x8, #0x138
062a88a8: ldp      x8, x1, [x0]
062a88ac: mov      x0, x20
062a88b0: blr      x8
062a88b4: cbz      x0, #0x62a9b70
062a88b8: ldr      x8, [x0]
062a88bc: ldr      x1, [x23]
062a88c0: mov      x22, x0
062a88c4: ldrh     w9, [x8, #0x12e]
062a88c8: cbz      x9, #0x62a88ec
062a88cc: ldr      x10, [x8, #0xb0]
062a88d0: add      x10, x10, #8
062a88d4: ldur     x11, [x10, #-8]
062a88d8: cmp      x11, x1
062a88dc: b.eq     #0x62a88fc
062a88e0: subs     x9, x9, #1
062a88e4: add      x10, x10, #0x10
062a88e8: b.ne     #0x62a88d4
062a88ec: mov      w2, #2
062a88f0: mov      x0, x22
062a88f4: bl       #0x39a94f0
062a88f8: b        #0x62a890c
062a88fc: ldr      w9, [x10]
062a8900: add      w9, w9, #2
062a8904: add      x8, x8, w9, sxtw #4
062a8908: add      x0, x8, #0x138
062a890c: ldp      x8, x1, [x0]
062a8910: mov      x0, x22
062a8914: blr      x8
062a8918: cbz      x0, #0x62a9b70
062a891c: ldr      x8, [x0]
062a8920: ldr      x1, [x25]
062a8924: mov      x22, x0
062a8928: ldrh     w9, [x8, #0x12e]
062a892c: cbz      x9, #0x62a8950
062a8930: ldr      x10, [x8, #0xb0]
062a8934: add      x10, x10, #8
062a8938: ldur     x11, [x10, #-8]
062a893c: cmp      x11, x1
062a8940: b.eq     #0x62a8960
062a8944: subs     x9, x9, #1
062a8948: add      x10, x10, #0x10
062a894c: b.ne     #0x62a8938
062a8950: mov      x0, x22
062a8954: mov      w2, wzr
062a8958: bl       #0x39a94f0
062a895c: b        #0x62a896c
062a8960: ldrsw    x9, [x10]
062a8964: add      x8, x8, x9, lsl #4
062a8968: add      x0, x8, #0x138
062a896c: ldp      x8, x2, [x0]
062a8970: mov      x0, x22
062a8974: mov      w1, w21
062a8978: blr      x8
062a897c: ldr      x1, [x26]
062a8980: bl       #0x39d35c8
062a8984: cbz      x0, #0x62a89e8
062a8988: ldr      x8, [x0]
062a898c: ldr      x1, [x26]
062a8990: mov      x22, x0
062a8994: ldrh     w9, [x8, #0x12e]
062a8998: cbz      x9, #0x62a89bc
062a899c: ldr      x10, [x8, #0xb0]
062a89a0: add      x10, x10, #8
062a89a4: ldur     x11, [x10, #-8]
062a89a8: cmp      x11, x1
062a89ac: b.eq     #0x62a89cc
062a89b0: subs     x9, x9, #1
062a89b4: add      x10, x10, #0x10
062a89b8: b.ne     #0x62a89a4
062a89bc: mov      x0, x22
062a89c0: mov      w2, wzr
062a89c4: bl       #0x39a94f0
062a89c8: b        #0x62a89d8
062a89cc: ldrsw    x9, [x10]
062a89d0: add      x8, x8, x9, lsl #4
062a89d4: add      x0, x8, #0x138
062a89d8: ldp      x8, x1, [x0]
062a89dc: mov      x0, x22
062a89e0: blr      x8
062a89e4: fadd     s10, s10, s0
062a89e8: add      w21, w21, #1
062a89ec: b        #0x62a8738
062a89f0: mov      w8, #0x42c80000
062a89f4: fmov     s0, w8
062a89f8: fcmp     s10, s0
062a89fc: b.ge     #0x62a8a08
062a8a00: fcmp     s9, s10
062a8a04: b.pl     #0x62a8a18
062a8a08: mov      w1, #1
062a8a0c: mov      x0, x19
062a8a10: mov      x2, xzr
062a8a14: bl       #0x66c0b1c ; Oak.DamageInfo.set_critical
062a8a18: adrp     x20, #0x9b45000
062a8a1c: ldr      x20, [x20, #0xd88]
062a8a20: ldr      x0, [x20]
062a8a24: ldr      w8, [x0, #0xe0]
062a8a28: cbnz     w8, #0x62a8a34
062a8a2c: bl       #0x39d35c4
062a8a30: ldr      x0, [x20]
062a8a34: ldr      x8, [x0, #0xb8]
062a8a38: ldr      x8, [x8]
062a8a3c: cbz      x8, #0x62a9b70
062a8a40: ldrb     w8, [x8, #0x48]
062a8a44: cbnz     w8, #0x62a8b14
062a8a48: adrp     x20, #0xa25e000
062a8a4c: ldrb     w8, [x20, #0x1bb]
062a8a50: cbnz     w8, #0x62a8a68
062a8a54: adrp     x0, #0x9b45000
062a8a58: ldr      x0, [x0, #0x6c8]
062a8a5c: bl       #0x39d34bc
062a8a60: mov      w8, #1
062a8a64: strb     w8, [x20, #0x1bb]
062a8a68: adrp     x21, #0x9b45000
062a8a6c: ldr      x21, [x21, #0x6c8]
062a8a70: ldr      x8, [x21]
062a8a74: ldr      x8, [x8, #0xb8]
062a8a78: ldr      x0, [x8]
062a8a7c: cbz      x0, #0x62a9b70
062a8a80: mov      x1, xzr
062a8a84: bl       #0x6bafa9c ; Oak.Stage.get_Spec
062a8a88: cbz      x0, #0x62a9b70
062a8a8c: mov      x1, xzr
062a8a90: bl       #0x8afc638 ; StageSpec.get_ChapterCode
062a8a94: adrp     x8, #0x9b4c000
062a8a98: ldr      x8, [x8, #0x570]
062a8a9c: str      w0, [sp, #0xc8]
062a8aa0: ldr      x8, [x8]
062a8aa4: ldr      w9, [x8, #0xe0]
062a8aa8: cbnz     w9, #0x62a8ab4
062a8aac: mov      x0, x8
062a8ab0: bl       #0x39d35c4
062a8ab4: add      x0, sp, #0xc8
062a8ab8: mov      x1, xzr
062a8abc: bl       #0x8c23af8 ; Oak.ChapterCode.get_IsAsyncBattleStage
062a8ac0: tbnz     w0, #0, #0x62a8b14
062a8ac4: ldrh     w8, [x19, #4]
062a8ac8: cmp      w8, #0xc00
062a8acc: b.eq     #0x62a8b14
062a8ad0: ldrb     w8, [x20, #0x1bb]
062a8ad4: cbnz     w8, #0x62a8aec
062a8ad8: adrp     x0, #0x9b45000
062a8adc: ldr      x0, [x0, #0x6c8]
062a8ae0: bl       #0x39d34bc
062a8ae4: mov      w8, #1
062a8ae8: strb     w8, [x20, #0x1bb]
062a8aec: ldr      x8, [x21]
062a8af0: ldr      x8, [x8, #0xb8]
062a8af4: ldr      x8, [x8]
062a8af8: cbz      x8, #0x62a9b70
062a8afc: ldr      x0, [x8, #0xe8]
062a8b00: cbz      x0, #0x62a9b70
062a8b04: mov      w1, wzr
062a8b08: mov      x2, xzr
062a8b0c: bl       #0x8b72a5c ; Oak.BattleManager.GetBattleForMyParty
062a8b10: cbz      x0, #0x62a9ab8
062a8b14: mov      x0, x19
062a8b18: mov      x1, xzr
062a8b1c: bl       #0x66c0acc ; Oak.DamageInfo.get_critical
062a8b20: fmov     s12, #1.00000000
062a8b24: tbz      w0, #0, #0x62a8b94
062a8b28: ldr      x0, [x19, #8]
062a8b2c: fmov     s0, wzr
062a8b30: cbz      x0, #0x62a8b8c
062a8b34: adrp     x8, #0x9b45000
062a8b38: ldr      x8, [x8, #0x3f8]
062a8b3c: ldr      x9, [x0]
062a8b40: ldr      x8, [x8]
062a8b44: ldrb     w11, [x9, #0x130]
062a8b48: ldrb     w10, [x8, #0x130]
062a8b4c: cmp      w11, w10
062a8b50: b.lo     #0x62a8b8c
062a8b54: ldr      x9, [x9, #0xc8]
062a8b58: add      x9, x9, x10, lsl #3
062a8b5c: ldur     x9, [x9, #-8]
062a8b60: cmp      x9, x8
062a8b64: b.ne     #0x62a8b8c
062a8b68: mov      x1, xzr
062a8b6c: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
062a8b70: cbz      x0, #0x62a9b70
062a8b74: ldr      x8, [x0]
062a8b78: ldr      x9, [x8, #0x2a8]
062a8b7c: ldr      x1, [x8, #0x2b0]
062a8b80: blr      x9
062a8b84: fmov     s1, wzr
062a8b88: fadd     s0, s0, s1
062a8b8c: fmov     s1, #2.00000000
062a8b90: fadd     s12, s0, s1
062a8b94: mov      x0, x19
062a8b98: mov      x1, xzr
062a8b9c: bl       #0x66beaf4 ; Oak.DamageInfo.get_modifier
062a8ba0: tst      w0, #0xff
062a8ba4: str      x0, [sp, #0xc0]
062a8ba8: b.eq     #0x62a9198
062a8bac: ldr      x0, [x19, #8]
062a8bb0: ldr      x1, [x28]
062a8bb4: bl       #0x39d35c8
062a8bb8: cbz      x0, #0x62a9198
062a8bbc: adrp     x25, #0x9b45000
062a8bc0: adrp     x26, #0x9b85000
062a8bc4: adrp     x27, #0x9b85000
062a8bc8: adrp     x29, #0x9b85000
062a8bcc: ldr      w22, [x19, #4]
062a8bd0: ldr      x25, [x25, #0x190]
062a8bd4: ldr      x26, [x26, #0x440]
062a8bd8: ldr      x27, [x27, #0x450]
062a8bdc: ldr      x29, [x29, #0x448]
062a8be0: mov      x20, x0
062a8be4: mov      w21, wzr
062a8be8: fmov     s11, #1.00000000
062a8bec: ldr      x8, [x20]
062a8bf0: ldr      x1, [x28]
062a8bf4: ldrh     w9, [x8, #0x12e]
062a8bf8: cbz      x9, #0x62a8c1c
062a8bfc: ldr      x10, [x8, #0xb0]
062a8c00: add      x10, x10, #8
062a8c04: ldur     x11, [x10, #-8]
062a8c08: cmp      x11, x1
062a8c0c: b.eq     #0x62a8c2c
062a8c10: subs     x9, x9, #1
062a8c14: add      x10, x10, #0x10
062a8c18: b.ne     #0x62a8c04
062a8c1c: mov      x0, x20
062a8c20: mov      w2, wzr
062a8c24: bl       #0x39a94f0
062a8c28: b        #0x62a8c38
062a8c2c: ldrsw    x9, [x10]
062a8c30: add      x8, x8, x9, lsl #4
062a8c34: add      x0, x8, #0x138
062a8c38: ldp      x8, x1, [x0]
062a8c3c: mov      x0, x20
062a8c40: blr      x8
062a8c44: cbz      x0, #0x62a9b70
062a8c48: ldr      x8, [x0]
062a8c4c: ldr      x1, [x25]
062a8c50: mov      x23, x0
062a8c54: ldrh     w9, [x8, #0x12e]
062a8c58: cbz      x9, #0x62a8c7c
062a8c5c: ldr      x10, [x8, #0xb0]
062a8c60: add      x10, x10, #8
062a8c64: ldur     x11, [x10, #-8]
062a8c68: cmp      x11, x1
062a8c6c: b.eq     #0x62a8c8c
062a8c70: subs     x9, x9, #1
062a8c74: add      x10, x10, #0x10
062a8c78: b.ne     #0x62a8c64
062a8c7c: mov      w2, #2
062a8c80: mov      x0, x23
062a8c84: bl       #0x39a94f0
062a8c88: b        #0x62a8c9c
062a8c8c: ldr      w9, [x10]
062a8c90: add      w9, w9, #2
062a8c94: add      x8, x8, w9, sxtw #4
062a8c98: add      x0, x8, #0x138
062a8c9c: ldp      x8, x1, [x0]
062a8ca0: mov      x0, x23
062a8ca4: blr      x8
062a8ca8: cbz      x0, #0x62a9b70
062a8cac: ldr      x8, [x0]
062a8cb0: ldr      x1, [x26]
062a8cb4: mov      x23, x0
062a8cb8: ldrh     w9, [x8, #0x12e]
062a8cbc: cbz      x9, #0x62a8ce0
062a8cc0: ldr      x10, [x8, #0xb0]
062a8cc4: add      x10, x10, #8
062a8cc8: ldur     x11, [x10, #-8]
062a8ccc: cmp      x11, x1
062a8cd0: b.eq     #0x62a8cf0
062a8cd4: subs     x9, x9, #1
062a8cd8: add      x10, x10, #0x10
062a8cdc: b.ne     #0x62a8cc8
062a8ce0: mov      x0, x23
062a8ce4: mov      w2, wzr
062a8ce8: bl       #0x39a94f0
062a8cec: b        #0x62a8cfc
062a8cf0: ldrsw    x9, [x10]
062a8cf4: add      x8, x8, x9, lsl #4
062a8cf8: add      x0, x8, #0x138
062a8cfc: ldp      x8, x1, [x0]
062a8d00: mov      x0, x23
062a8d04: blr      x8
062a8d08: cmp      w21, w0
062a8d0c: b.ge     #0x62a8eb0
062a8d10: ldr      x8, [x20]
062a8d14: ldr      x1, [x28]
062a8d18: ldrh     w9, [x8, #0x12e]
062a8d1c: cbz      x9, #0x62a8d40
062a8d20: ldr      x10, [x8, #0xb0]
062a8d24: add      x10, x10, #8
062a8d28: ldur     x11, [x10, #-8]
062a8d2c: cmp      x11, x1
062a8d30: b.eq     #0x62a8d50
062a8d34: subs     x9, x9, #1
062a8d38: add      x10, x10, #0x10
062a8d3c: b.ne     #0x62a8d28
062a8d40: mov      x0, x20
062a8d44: mov      w2, wzr
062a8d48: bl       #0x39a94f0
062a8d4c: b        #0x62a8d5c
062a8d50: ldrsw    x9, [x10]
062a8d54: add      x8, x8, x9, lsl #4
062a8d58: add      x0, x8, #0x138
062a8d5c: ldp      x8, x1, [x0]
062a8d60: mov      x0, x20
062a8d64: blr      x8
062a8d68: cbz      x0, #0x62a9b70
062a8d6c: ldr      x8, [x0]
062a8d70: ldr      x1, [x25]
062a8d74: mov      x23, x0
062a8d78: ldrh     w9, [x8, #0x12e]
062a8d7c: cbz      x9, #0x62a8da0
062a8d80: ldr      x10, [x8, #0xb0]
062a8d84: add      x10, x10, #8
062a8d88: ldur     x11, [x10, #-8]
062a8d8c: cmp      x11, x1
062a8d90: b.eq     #0x62a8db0
062a8d94: subs     x9, x9, #1
062a8d98: add      x10, x10, #0x10
062a8d9c: b.ne     #0x62a8d88
062a8da0: mov      w2, #2
062a8da4: mov      x0, x23
062a8da8: bl       #0x39a94f0
062a8dac: b        #0x62a8dc0
062a8db0: ldr      w9, [x10]
062a8db4: add      w9, w9, #2
062a8db8: add      x8, x8, w9, sxtw #4
062a8dbc: add      x0, x8, #0x138
062a8dc0: ldp      x8, x1, [x0]
062a8dc4: mov      x0, x23
062a8dc8: blr      x8
062a8dcc: cbz      x0, #0x62a9b70
062a8dd0: ldr      x8, [x0]
062a8dd4: ldr      x1, [x27]
062a8dd8: mov      x23, x0
062a8ddc: ldrh     w9, [x8, #0x12e]
062a8de0: cbz      x9, #0x62a8e04
062a8de4: ldr      x10, [x8, #0xb0]
062a8de8: add      x10, x10, #8
062a8dec: ldur     x11, [x10, #-8]
062a8df0: cmp      x11, x1
062a8df4: b.eq     #0x62a8e14
062a8df8: subs     x9, x9, #1
062a8dfc: add      x10, x10, #0x10
062a8e00: b.ne     #0x62a8dec
062a8e04: mov      x0, x23
062a8e08: mov      w2, wzr
062a8e0c: bl       #0x39a94f0
062a8e10: b        #0x62a8e20
062a8e14: ldrsw    x9, [x10]
062a8e18: add      x8, x8, x9, lsl #4
062a8e1c: add      x0, x8, #0x138
062a8e20: ldp      x8, x2, [x0]
062a8e24: mov      x0, x23
062a8e28: mov      w1, w21
062a8e2c: blr      x8
062a8e30: ldr      x1, [x29]
062a8e34: bl       #0x39d35c8
062a8e38: cbz      x0, #0x62a8ea8
062a8e3c: ldr      x8, [x0]
062a8e40: ldr      x24, [x19, #0x10]
062a8e44: ldr      x1, [x29]
062a8e48: mov      x23, x0
062a8e4c: ldrh     w9, [x8, #0x12e]
062a8e50: cbz      x9, #0x62a8e74
062a8e54: ldr      x10, [x8, #0xb0]
062a8e58: add      x10, x10, #8
062a8e5c: ldur     x11, [x10, #-8]
062a8e60: cmp      x11, x1
062a8e64: b.eq     #0x62a8e84
062a8e68: subs     x9, x9, #1
062a8e6c: add      x10, x10, #0x10
062a8e70: b.ne     #0x62a8e5c
062a8e74: mov      x0, x23
062a8e78: mov      w2, wzr
062a8e7c: bl       #0x39a94f0
062a8e80: b        #0x62a8e90
062a8e84: ldrsw    x9, [x10]
062a8e88: add      x8, x8, x9, lsl #4
062a8e8c: add      x0, x8, #0x138
062a8e90: ldp      x8, x3, [x0]
062a8e94: mov      x0, x23
062a8e98: mov      x1, x24
062a8e9c: mov      x2, x22
062a8ea0: blr      x8
062a8ea4: fmul     s11, s11, s0
062a8ea8: add      w21, w21, #1
062a8eac: b        #0x62a8bec
062a8eb0: ldrh     w8, [x19, #4]
062a8eb4: tbnz     w8, #0, #0x62a8ec4
062a8eb8: fmov     s9, #1.00000000
062a8ebc: tbnz     w8, #1, #0x62a8f58
062a8ec0: b        #0x62a8fe4
062a8ec4: ldr      x8, [x20]
062a8ec8: ldr      x1, [x28]
062a8ecc: ldrh     w9, [x8, #0x12e]
062a8ed0: cbz      x9, #0x62a8ef4
062a8ed4: ldr      x10, [x8, #0xb0]
062a8ed8: add      x10, x10, #8
062a8edc: ldur     x11, [x10, #-8]
062a8ee0: cmp      x11, x1
062a8ee4: b.eq     #0x62a8f04
062a8ee8: subs     x9, x9, #1
062a8eec: add      x10, x10, #0x10
062a8ef0: b.ne     #0x62a8edc
062a8ef4: mov      w2, #1
062a8ef8: mov      x0, x20
062a8efc: bl       #0x39a94f0
062a8f00: b        #0x62a8f14
062a8f04: ldr      w9, [x10]
062a8f08: add      w9, w9, #1
062a8f0c: add      x8, x8, w9, sxtw #4
062a8f10: add      x0, x8, #0x138
062a8f14: ldp      x8, x1, [x0]
062a8f18: mov      x0, x20
062a8f1c: blr      x8
062a8f20: cbz      x0, #0x62a9b70
062a8f24: add      x8, sp, #0x88
062a8f28: mov      x1, xzr
062a8f2c: bl       #0x8c86c68 ; Oak.CharacterStatsBehaviour.get_MeleeAttackMultiplier
062a8f30: ldur     q0, [sp, #0x88]
062a8f34: ldr      x8, [sp, #0x98]
062a8f38: add      x0, sp, #0x50
062a8f3c: mov      x1, xzr
062a8f40: str      q0, [sp, #0x50]
062a8f44: str      x8, [sp, #0x60]
062a8f48: bl       #0x3ac5138
062a8f4c: ldrh     w8, [x19, #4]
062a8f50: mov      v9.16b, v0.16b
062a8f54: tbz      w8, #1, #0x62a8fe4
062a8f58: ldr      x8, [x20]
062a8f5c: ldr      x1, [x28]
062a8f60: ldrh     w9, [x8, #0x12e]
062a8f64: cbz      x9, #0x62a8f88
062a8f68: ldr      x10, [x8, #0xb0]
062a8f6c: add      x10, x10, #8
062a8f70: ldur     x11, [x10, #-8]
062a8f74: cmp      x11, x1
062a8f78: b.eq     #0x62a8f98
062a8f7c: subs     x9, x9, #1
062a8f80: add      x10, x10, #0x10
062a8f84: b.ne     #0x62a8f70
062a8f88: mov      w2, #1
062a8f8c: mov      x0, x20
062a8f90: bl       #0x39a94f0
062a8f94: b        #0x62a8fa8
062a8f98: ldr      w9, [x10]
062a8f9c: add      w9, w9, #1
062a8fa0: add      x8, x8, w9, sxtw #4
062a8fa4: add      x0, x8, #0x138
062a8fa8: ldp      x8, x1, [x0]
062a8fac: mov      x0, x20
062a8fb0: blr      x8
062a8fb4: cbz      x0, #0x62a9b70
062a8fb8: add      x8, sp, #0x88
062a8fbc: mov      x1, xzr
062a8fc0: bl       #0x8c86ce0 ; Oak.CharacterStatsBehaviour.get_ProjectileAttackMultiplier
062a8fc4: ldur     q0, [sp, #0x88]
062a8fc8: ldr      x8, [sp, #0x98]
062a8fcc: add      x0, sp, #0x30
062a8fd0: mov      x1, xzr
062a8fd4: str      q0, [sp, #0x30]
062a8fd8: str      x8, [sp, #0x40]
062a8fdc: bl       #0x3ac5138
062a8fe0: fmul     s9, s9, s0
062a8fe4: adrp     x8, #0x9b7c000
062a8fe8: ldr      x8, [x8, #0x320]
062a8fec: ldr      x0, [x8]
062a8ff0: ldr      w8, [x0, #0xe0]
062a8ff4: cbnz     w8, #0x62a8ffc
062a8ff8: bl       #0x39d35c4
062a8ffc: mov      x0, xzr
062a9000: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
062a9004: cbz      x0, #0x62a9b70
062a9008: ldr      x8, [x0, #0x18]
062a900c: mov      x21, x0
062a9010: cmp      w8, #1
062a9014: b.lt     #0x62a9198
062a9018: adrp     x25, #0x9b47000
062a901c: adrp     x29, #0x9b46000
062a9020: adrp     x27, #0x9b7c000
062a9024: ldr      x25, [x25, #0x88]
062a9028: ldr      x29, [x29, #0x58]
062a902c: ldr      x27, [x27, #0x330]
062a9030: mov      x24, xzr
062a9034: add      x22, x19, #0x10c
062a9038: and      x8, x8, #0xffffffff
062a903c: mov      w26, #0x7f800000
062a9040: cmp      x24, w8, uxtw
062a9044: b.hs     #0x62a9b74
062a9048: ldr      x8, [x20]
062a904c: add      x9, x21, x24, lsl #2
062a9050: ldr      w23, [x9, #0x20]
062a9054: ldr      x1, [x28]
062a9058: ldrh     w9, [x8, #0x12e]
062a905c: cbz      x9, #0x62a9080
062a9060: ldr      x10, [x8, #0xb0]
062a9064: add      x10, x10, #8
062a9068: ldur     x11, [x10, #-8]
062a906c: cmp      x11, x1
062a9070: b.eq     #0x62a9090
062a9074: subs     x9, x9, #1
062a9078: add      x10, x10, #0x10
062a907c: b.ne     #0x62a9068
062a9080: mov      w2, #1
062a9084: mov      x0, x20
062a9088: bl       #0x39a94f0
062a908c: b        #0x62a90a0
062a9090: ldr      w9, [x10]
062a9094: add      w9, w9, #1
062a9098: add      x8, x8, w9, sxtw #4
062a909c: add      x0, x8, #0x138
062a90a0: ldp      x8, x1, [x0]
062a90a4: mov      x0, x20
062a90a8: blr      x8
062a90ac: cbz      x0, #0x62a9b70
062a90b0: ldr      x8, [x0]
062a90b4: mov      w1, w23
062a90b8: ldr      x9, [x8, #0x298]
062a90bc: ldr      x2, [x8, #0x2a0]
062a90c0: blr      x9
062a90c4: mov      x0, x19
062a90c8: mov      x1, xzr
062a90cc: mov      v10.16b, v0.16b
062a90d0: bl       #0x66beaf4 ; Oak.DamageInfo.get_modifier
062a90d4: ldr      x1, [x25]
062a90d8: str      x0, [sp, #0xc0]
062a90dc: add      x0, sp, #0xc0
062a90e0: bl       #0x4b43f58
062a90e4: fmul     s0, s10, s0
062a90e8: fmul     s0, s11, s0
062a90ec: fmul     s10, s9, s0
062a90f0: fcmp     s10, #0.0
062a90f4: b.ls     #0x62a9188
062a90f8: ldrb     w8, [x22]
062a90fc: cbz      w8, #0x62a9150
062a9100: ldr      x1, [x27]
062a9104: mov      x0, x22
062a9108: bl       #0x4b3c4fc
062a910c: mov      w1, w0
062a9110: mov      x0, x19
062a9114: mov      x2, xzr
062a9118: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
062a911c: ldr      x1, [x27]
062a9120: lsr      x8, x0, #0x20
062a9124: mov      x0, x22
062a9128: scvtf    s13, w8
062a912c: bl       #0x4b3c4fc
062a9130: ldr      x2, [x29]
062a9134: fadd     s0, s10, s13
062a9138: fmov     s1, w26
062a913c: mov      w23, w0
062a9140: str      xzr, [sp, #0x88]
062a9144: fcvtzs   w8, s0
062a9148: fcmp     s0, s1
062a914c: b        #0x62a9164
062a9150: ldr      x2, [x29]
062a9154: fmov     s0, w26
062a9158: fcvtzs   w8, s10
062a915c: fcmp     s10, s0
062a9160: str      xzr, [sp, #0x88]
062a9164: mov      w9, #-0xffffffff80000000
062a9168: csel     w1, w9, w8, eq
062a916c: add      x0, sp, #0x88
062a9170: bl       #0x4b3c128
062a9174: ldr      x2, [sp, #0x88]
062a9178: mov      x0, x19
062a917c: mov      w1, w23
062a9180: mov      x3, xzr
062a9184: bl       #0x66c0224 ; Oak.DamageInfo.set_Item
062a9188: ldr      w8, [x21, #0x18]
062a918c: add      x24, x24, #1
062a9190: cmp      x24, w8, sxtw
062a9194: b.lt     #0x62a9040
062a9198: ldr      x0, [x19, #8]
062a919c: ldr      x1, [x28]
062a91a0: bl       #0x39d35c8
062a91a4: cbz      x0, #0x62a9478
062a91a8: adrp     x23, #0x9b45000
062a91ac: adrp     x24, #0x9b85000
062a91b0: adrp     x25, #0x9b85000
062a91b4: adrp     x26, #0x9b85000
062a91b8: ldr      x23, [x23, #0x190]
062a91bc: ldr      x24, [x24, #0x440]
062a91c0: ldr      x25, [x25, #0x450]
062a91c4: ldr      x26, [x26, #0x470]
062a91c8: mov      x20, x0
062a91cc: mov      w21, wzr
062a91d0: fmov     s9, wzr
062a91d4: ldr      x8, [x20]
062a91d8: ldr      x1, [x28]
062a91dc: ldrh     w9, [x8, #0x12e]
062a91e0: cbz      x9, #0x62a9204
062a91e4: ldr      x10, [x8, #0xb0]
062a91e8: add      x10, x10, #8
062a91ec: ldur     x11, [x10, #-8]
062a91f0: cmp      x11, x1
062a91f4: b.eq     #0x62a9214
062a91f8: subs     x9, x9, #1
062a91fc: add      x10, x10, #0x10
062a9200: b.ne     #0x62a91ec
062a9204: mov      x0, x20
062a9208: mov      w2, wzr
062a920c: bl       #0x39a94f0
062a9210: b        #0x62a9220
062a9214: ldrsw    x9, [x10]
062a9218: add      x8, x8, x9, lsl #4
062a921c: add      x0, x8, #0x138
062a9220: ldp      x8, x1, [x0]
062a9224: mov      x0, x20
062a9228: blr      x8
062a922c: cbz      x0, #0x62a9b70
062a9230: ldr      x8, [x0]
062a9234: ldr      x1, [x23]
062a9238: mov      x22, x0
062a923c: ldrh     w9, [x8, #0x12e]
062a9240: cbz      x9, #0x62a9264
062a9244: ldr      x10, [x8, #0xb0]
062a9248: add      x10, x10, #8
062a924c: ldur     x11, [x10, #-8]
062a9250: cmp      x11, x1
062a9254: b.eq     #0x62a9274
062a9258: subs     x9, x9, #1
062a925c: add      x10, x10, #0x10
062a9260: b.ne     #0x62a924c
062a9264: mov      w2, #2
062a9268: mov      x0, x22
062a926c: bl       #0x39a94f0
062a9270: b        #0x62a9284
062a9274: ldr      w9, [x10]
062a9278: add      w9, w9, #2
062a927c: add      x8, x8, w9, sxtw #4
062a9280: add      x0, x8, #0x138
062a9284: ldp      x8, x1, [x0]
062a9288: mov      x0, x22
062a928c: blr      x8
062a9290: cbz      x0, #0x62a9b70
062a9294: ldr      x8, [x0]
062a9298: ldr      x1, [x24]
062a929c: mov      x22, x0
062a92a0: ldrh     w9, [x8, #0x12e]
062a92a4: cbz      x9, #0x62a92c8
062a92a8: ldr      x10, [x8, #0xb0]
062a92ac: add      x10, x10, #8
062a92b0: ldur     x11, [x10, #-8]
062a92b4: cmp      x11, x1
062a92b8: b.eq     #0x62a92d8
062a92bc: subs     x9, x9, #1
062a92c0: add      x10, x10, #0x10
062a92c4: b.ne     #0x62a92b0
062a92c8: mov      x0, x22
062a92cc: mov      w2, wzr
062a92d0: bl       #0x39a94f0
062a92d4: b        #0x62a92e4
062a92d8: ldrsw    x9, [x10]
062a92dc: add      x8, x8, x9, lsl #4
062a92e0: add      x0, x8, #0x138
062a92e4: ldp      x8, x1, [x0]
062a92e8: mov      x0, x22
062a92ec: blr      x8
062a92f0: cmp      w21, w0
062a92f4: b.ge     #0x62a947c
062a92f8: ldr      x8, [x20]
062a92fc: ldr      x1, [x28]
062a9300: ldrh     w9, [x8, #0x12e]
062a9304: cbz      x9, #0x62a9328
062a9308: ldr      x10, [x8, #0xb0]
062a930c: add      x10, x10, #8
062a9310: ldur     x11, [x10, #-8]
062a9314: cmp      x11, x1
062a9318: b.eq     #0x62a9338
062a931c: subs     x9, x9, #1
062a9320: add      x10, x10, #0x10
062a9324: b.ne     #0x62a9310
062a9328: mov      x0, x20
062a932c: mov      w2, wzr
062a9330: bl       #0x39a94f0
062a9334: b        #0x62a9344
062a9338: ldrsw    x9, [x10]
062a933c: add      x8, x8, x9, lsl #4
062a9340: add      x0, x8, #0x138
062a9344: ldp      x8, x1, [x0]
062a9348: mov      x0, x20
062a934c: blr      x8
062a9350: cbz      x0, #0x62a9b70
062a9354: ldr      x8, [x0]
062a9358: ldr      x1, [x23]
062a935c: mov      x22, x0
062a9360: ldrh     w9, [x8, #0x12e]
062a9364: cbz      x9, #0x62a9388
062a9368: ldr      x10, [x8, #0xb0]
062a936c: add      x10, x10, #8
062a9370: ldur     x11, [x10, #-8]
062a9374: cmp      x11, x1
062a9378: b.eq     #0x62a9398
062a937c: subs     x9, x9, #1
062a9380: add      x10, x10, #0x10
062a9384: b.ne     #0x62a9370
062a9388: mov      w2, #2
062a938c: mov      x0, x22
062a9390: bl       #0x39a94f0
062a9394: b        #0x62a93a8
062a9398: ldr      w9, [x10]
062a939c: add      w9, w9, #2
062a93a0: add      x8, x8, w9, sxtw #4
062a93a4: add      x0, x8, #0x138
062a93a8: ldp      x8, x1, [x0]
062a93ac: mov      x0, x22
062a93b0: blr      x8
062a93b4: cbz      x0, #0x62a9b70
062a93b8: ldr      x8, [x0]
062a93bc: ldr      x1, [x25]
062a93c0: mov      x22, x0
062a93c4: ldrh     w9, [x8, #0x12e]
062a93c8: cbz      x9, #0x62a93ec
062a93cc: ldr      x10, [x8, #0xb0]
062a93d0: add      x10, x10, #8
062a93d4: ldur     x11, [x10, #-8]
062a93d8: cmp      x11, x1
062a93dc: b.eq     #0x62a93fc
062a93e0: subs     x9, x9, #1
062a93e4: add      x10, x10, #0x10
062a93e8: b.ne     #0x62a93d4
062a93ec: mov      x0, x22
062a93f0: mov      w2, wzr
062a93f4: bl       #0x39a94f0
062a93f8: b        #0x62a9408
062a93fc: ldrsw    x9, [x10]
062a9400: add      x8, x8, x9, lsl #4
062a9404: add      x0, x8, #0x138
062a9408: ldp      x8, x2, [x0]
062a940c: mov      x0, x22
062a9410: mov      w1, w21
062a9414: blr      x8
062a9418: cbz      x0, #0x62a9470
062a941c: ldr      x9, [x0]
062a9420: ldr      x8, [x26]
062a9424: mov      x22, x0
062a9428: ldrb     w11, [x9, #0x130]
062a942c: ldrb     w10, [x8, #0x130]
062a9430: cmp      w11, w10
062a9434: b.lo     #0x62a9470
062a9438: ldr      x9, [x9, #0xc8]
062a943c: add      x9, x9, x10, lsl #3
062a9440: ldur     x9, [x9, #-8]
062a9444: cmp      x9, x8
062a9448: b.ne     #0x62a9470
062a944c: ldrh     w1, [x19, #4]
062a9450: mov      x0, x22
062a9454: mov      x2, xzr
062a9458: bl       #0x6a18c18 ; Oak.ImmuneIgnoreOptionAppliedStageOption.CanExecute
062a945c: tbz      w0, #0, #0x62a9470
062a9460: mov      x0, x22
062a9464: mov      x1, xzr
062a9468: bl       #0x6a18c84 ; Oak.ImmuneIgnoreOptionAppliedStageOption.GetIgnoreImmunePercent
062a946c: mov      v9.16b, v0.16b
062a9470: add      w21, w21, #1
062a9474: b        #0x62a91d4
062a9478: fmov     s9, wzr
062a947c: ldr      x0, [x19, #0x10]
062a9480: ldr      x1, [x28]
062a9484: ldrh     w21, [x19, #4]
062a9488: bl       #0x39d35c8
062a948c: cbz      x0, #0x62a990c
062a9490: ldr      w8, [x19, #4]
062a9494: str      w21, [sp, #0x14]
062a9498: adrp     x29, #0x9b45000
062a949c: adrp     x23, #0x9b85000
062a94a0: str      x8, [sp, #0x28]
062a94a4: adrp     x27, #0x9b85000
062a94a8: adrp     x24, #0x9b85000
062a94ac: ldr      x29, [x29, #0x190]
062a94b0: ldr      x23, [x23, #0x440]
062a94b4: ldr      x27, [x27, #0x450]
062a94b8: ldr      x24, [x24, #0x468]
062a94bc: mov      x20, x0
062a94c0: mov      w21, wzr
062a94c4: fmov     s10, #1.00000000
062a94c8: fmov     s13, wzr
062a94cc: fmov     s11, #1.00000000
062a94d0: ldr      x8, [x20]
062a94d4: ldr      x1, [x28]
062a94d8: ldrh     w9, [x8, #0x12e]
062a94dc: cbz      x9, #0x62a9500
062a94e0: ldr      x10, [x8, #0xb0]
062a94e4: add      x10, x10, #8
062a94e8: ldur     x11, [x10, #-8]
062a94ec: cmp      x11, x1
062a94f0: b.eq     #0x62a9510
062a94f4: subs     x9, x9, #1
062a94f8: add      x10, x10, #0x10
062a94fc: b.ne     #0x62a94e8
062a9500: mov      x0, x20
062a9504: mov      w2, wzr
062a9508: bl       #0x39a94f0
062a950c: b        #0x62a951c
062a9510: ldrsw    x9, [x10]
062a9514: add      x8, x8, x9, lsl #4
062a9518: add      x0, x8, #0x138
062a951c: ldp      x8, x1, [x0]
062a9520: mov      x0, x20
062a9524: blr      x8
062a9528: cbz      x0, #0x62a9b70
062a952c: ldr      x8, [x0]
062a9530: ldr      x1, [x29]
062a9534: mov      x25, x0
062a9538: ldrh     w9, [x8, #0x12e]
062a953c: cbz      x9, #0x62a9560
062a9540: ldr      x10, [x8, #0xb0]
062a9544: add      x10, x10, #8
062a9548: ldur     x11, [x10, #-8]
062a954c: cmp      x11, x1
062a9550: b.eq     #0x62a9570
062a9554: subs     x9, x9, #1
062a9558: add      x10, x10, #0x10
062a955c: b.ne     #0x62a9548
062a9560: mov      w2, #2
062a9564: mov      x0, x25
062a9568: bl       #0x39a94f0
062a956c: b        #0x62a9580
062a9570: ldr      w9, [x10]
062a9574: add      w9, w9, #2
062a9578: add      x8, x8, w9, sxtw #4
062a957c: add      x0, x8, #0x138
062a9580: ldp      x8, x1, [x0]
062a9584: mov      x0, x25
062a9588: blr      x8
062a958c: cbz      x0, #0x62a9b70
062a9590: ldr      x8, [x0]
062a9594: ldr      x1, [x23]
062a9598: mov      x25, x0
062a959c: ldrh     w9, [x8, #0x12e]
062a95a0: cbz      x9, #0x62a95c4
062a95a4: ldr      x10, [x8, #0xb0]
062a95a8: add      x10, x10, #8
062a95ac: ldur     x11, [x10, #-8]
062a95b0: cmp      x11, x1
062a95b4: b.eq     #0x62a95d4
062a95b8: subs     x9, x9, #1
062a95bc: add      x10, x10, #0x10
062a95c0: b.ne     #0x62a95ac
062a95c4: mov      x0, x25
062a95c8: mov      w2, wzr
062a95cc: bl       #0x39a94f0
062a95d0: b        #0x62a95e0
062a95d4: ldrsw    x9, [x10]
062a95d8: add      x8, x8, x9, lsl #4
062a95dc: add      x0, x8, #0x138
062a95e0: ldp      x8, x1, [x0]
062a95e4: mov      x0, x25
062a95e8: blr      x8
062a95ec: cmp      w21, w0
062a95f0: b.ge     #0x62a9904
062a95f4: ldr      x8, [x20]
062a95f8: ldr      x1, [x28]
062a95fc: ldrh     w9, [x8, #0x12e]
062a9600: cbz      x9, #0x62a9624
062a9604: ldr      x10, [x8, #0xb0]
062a9608: add      x10, x10, #8
062a960c: ldur     x11, [x10, #-8]
062a9610: cmp      x11, x1
062a9614: b.eq     #0x62a9634
062a9618: subs     x9, x9, #1
062a961c: add      x10, x10, #0x10
062a9620: b.ne     #0x62a960c
062a9624: mov      x0, x20
062a9628: mov      w2, wzr
062a962c: bl       #0x39a94f0
062a9630: b        #0x62a9640
062a9634: ldrsw    x9, [x10]
062a9638: add      x8, x8, x9, lsl #4
062a963c: add      x0, x8, #0x138
062a9640: ldp      x8, x1, [x0]
062a9644: mov      x0, x20
062a9648: blr      x8
062a964c: cbz      x0, #0x62a9b70
062a9650: ldr      x8, [x0]
062a9654: ldr      x1, [x29]
062a9658: mov      x25, x0
062a965c: ldrh     w9, [x8, #0x12e]
062a9660: cbz      x9, #0x62a9684
062a9664: ldr      x10, [x8, #0xb0]
062a9668: add      x10, x10, #8
062a966c: ldur     x11, [x10, #-8]
062a9670: cmp      x11, x1
062a9674: b.eq     #0x62a9694
062a9678: subs     x9, x9, #1
062a967c: add      x10, x10, #0x10
062a9680: b.ne     #0x62a966c
062a9684: mov      w2, #2
062a9688: mov      x0, x25
062a968c: bl       #0x39a94f0
062a9690: b        #0x62a96a4
062a9694: ldr      w9, [x10]
062a9698: add      w9, w9, #2
062a969c: add      x8, x8, w9, sxtw #4
062a96a0: add      x0, x8, #0x138
062a96a4: ldp      x8, x1, [x0]
062a96a8: mov      x0, x25
062a96ac: blr      x8
062a96b0: cbz      x0, #0x62a9b70
062a96b4: ldr      x8, [x0]
062a96b8: ldr      x1, [x27]
062a96bc: mov      x25, x0
062a96c0: ldrh     w9, [x8, #0x12e]
062a96c4: cbz      x9, #0x62a96e8
062a96c8: ldr      x10, [x8, #0xb0]
062a96cc: add      x10, x10, #8
062a96d0: ldur     x11, [x10, #-8]
062a96d4: cmp      x11, x1
062a96d8: b.eq     #0x62a96f8
062a96dc: subs     x9, x9, #1
062a96e0: add      x10, x10, #0x10
062a96e4: b.ne     #0x62a96d0
062a96e8: mov      x0, x25
062a96ec: mov      w2, wzr
062a96f0: bl       #0x39a94f0
062a96f4: b        #0x62a9704
062a96f8: ldrsw    x9, [x10]
062a96fc: add      x8, x8, x9, lsl #4
062a9700: add      x0, x8, #0x138
062a9704: ldp      x8, x2, [x0]
062a9708: mov      x0, x25
062a970c: mov      w1, w21
062a9710: blr      x8
062a9714: ldrb     w8, [x19, #5]
062a9718: mov      x25, x0
062a971c: tbnz     w8, #3, #0x62a9738
062a9720: adrp     x8, #0x9b85000
062a9724: ldr      x8, [x8, #0x458]
062a9728: mov      x0, x25
062a972c: ldr      x1, [x8]
062a9730: bl       #0x39d35c8
062a9734: cbnz     x0, #0x62a98fc
062a9738: ldr      x1, [x24]
062a973c: mov      x0, x25
062a9740: bl       #0x39d35c8
062a9744: cbz      x0, #0x62a97c4
062a9748: ldr      x8, [x0]
062a974c: mov      x22, x23
062a9750: mov      x23, x27
062a9754: ldr      x27, [x19, #8]
062a9758: ldrh     w9, [x8, #0x12e]
062a975c: ldr      x1, [x24]
062a9760: mov      x26, x0
062a9764: cbz      x9, #0x62a9788
062a9768: ldr      x10, [x8, #0xb0]
062a976c: add      x10, x10, #8
062a9770: ldur     x11, [x10, #-8]
062a9774: cmp      x11, x1
062a9778: b.eq     #0x62a9798
062a977c: subs     x9, x9, #1
062a9780: add      x10, x10, #0x10
062a9784: b.ne     #0x62a9770
062a9788: mov      x0, x26
062a978c: mov      w2, wzr
062a9790: bl       #0x39a94f0
062a9794: b        #0x62a97a4
062a9798: ldrsw    x9, [x10]
062a979c: add      x8, x8, x9, lsl #4
062a97a0: add      x0, x8, #0x138
062a97a4: ldp      x8, x3, [x0]
062a97a8: ldr      x2, [sp, #0x28]
062a97ac: mov      x0, x26
062a97b0: mov      x1, x27
062a97b4: blr      x8
062a97b8: fmul     s11, s11, s0
062a97bc: mov      x27, x23
062a97c0: mov      x23, x22
062a97c4: cbz      x25, #0x62a98fc
062a97c8: adrp     x8, #0x9b85000
062a97cc: ldr      x9, [x25]
062a97d0: ldr      x8, [x8, #0x480]
062a97d4: ldrb     w11, [x9, #0x130]
062a97d8: ldr      x8, [x8]
062a97dc: ldrb     w10, [x8, #0x130]
062a97e0: cmp      w11, w10
062a97e4: b.lo     #0x62a9854
062a97e8: ldr      x9, [x9, #0xc8]
062a97ec: add      x9, x9, x10, lsl #3
062a97f0: ldur     x9, [x9, #-8]
062a97f4: cmp      x9, x8
062a97f8: b.ne     #0x62a9854
062a97fc: mov      x0, x25
062a9800: mov      x1, xzr
062a9804: bl       #0x6b27858 ; Oak.ResistDamageAilmentAppliedStageOption.CanExecute
062a9808: tbz      w0, #0, #0x62a9854
062a980c: ldp      x8, x22, [sp, #0x20]
062a9810: ldr      x1, [x19, #8]
062a9814: mov      x0, x25
062a9818: mov      x3, xzr
062a981c: and      x8, x8, #0xffffffff00000000
062a9820: orr      x2, x8, x22
062a9824: str      x2, [sp, #0x20]
062a9828: bl       #0x6b278e4 ; Oak.ResistDamageAilmentAppliedStageOption.GetDamageModifier
062a982c: ldr      x8, [sp, #0x18]
062a9830: ldr      x1, [x19, #8]
062a9834: mov      x0, x25
062a9838: mov      x3, xzr
062a983c: and      x8, x8, #0xffffffff00000000
062a9840: orr      x2, x8, x22
062a9844: fmul     s11, s11, s0
062a9848: str      x2, [sp, #0x18]
062a984c: bl       #0x6b27988 ; Oak.ResistDamageAilmentAppliedStageOption.GetAilmentModifier
062a9850: mov      v10.16b, v0.16b
062a9854: ldrb     w8, [x19, #5]
062a9858: tbnz     w8, #3, #0x62a98fc
062a985c: adrp     x9, #0x9b85000
062a9860: ldr      x8, [x25]
062a9864: ldr      x9, [x9, #0x478]
062a9868: ldr      x10, [x9]
062a986c: ldrb     w9, [x8, #0x130]
062a9870: ldrb     w11, [x10, #0x130]
062a9874: cmp      w9, w11
062a9878: b.lo     #0x62a98b0
062a987c: ldr      x12, [x8, #0xc8]
062a9880: add      x11, x12, x11, lsl #3
062a9884: ldur     x11, [x11, #-8]
062a9888: cmp      x11, x10
062a988c: b.ne     #0x62a98b0
062a9890: mov      x0, x25
062a9894: mov      x1, xzr
062a9898: bl       #0x6a38048 ; Oak.PlitviceSpecialAppliedStageOption.CanExecute
062a989c: ldr      x8, [x25]
062a98a0: tst      w0, #1
062a98a4: fcsel    s10, s13, s10, ne
062a98a8: fcsel    s11, s13, s11, ne
062a98ac: ldrb     w9, [x8, #0x130]
062a98b0: adrp     x10, #0x9b83000
062a98b4: ldr      x10, [x10, #0x990]
062a98b8: ldr      x10, [x10]
062a98bc: ldrb     w11, [x10, #0x130]
062a98c0: cmp      w9, w11
062a98c4: b.lo     #0x62a98fc
062a98c8: ldr      x8, [x8, #0xc8]
062a98cc: add      x8, x8, x11, lsl #3
062a98d0: ldur     x8, [x8, #-8]
062a98d4: cmp      x8, x10
062a98d8: b.ne     #0x62a98fc
062a98dc: mov      x0, x25
062a98e0: mov      x1, xzr
062a98e4: bl       #0x69eeb98 ; Oak.DeathRattleAppliedStageOption.CanExecute
062a98e8: tbz      w0, #0, #0x62a98fc
062a98ec: mov      w1, #1
062a98f0: mov      x0, x19
062a98f4: mov      x2, xzr
062a98f8: bl       #0x66c0bdc ; Oak.DamageInfo.set_notMortal
062a98fc: add      w21, w21, #1
062a9900: b        #0x62a94d0
062a9904: ldr      w21, [sp, #0x14]
062a9908: b        #0x62a9914
062a990c: fmov     s10, #1.00000000
062a9910: fmov     s11, #1.00000000
062a9914: adrp     x8, #0x9b7c000
062a9918: ldr      x8, [x8, #0x320]
062a991c: ldr      x0, [x8]
062a9920: ldr      w8, [x0, #0xe0]
062a9924: cbnz     w8, #0x62a992c
062a9928: bl       #0x39d35c4
062a992c: mov      x0, xzr
062a9930: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
062a9934: cbz      x0, #0x62a9b70
062a9938: ldr      x8, [x0, #0x18]
062a993c: mov      w9, #0x4a0
062a9940: and      w9, w21, w9
062a9944: cmp      w9, #0
062a9948: fmov     s0, #1.00000000
062a994c: mov      x20, x0
062a9950: fcsel    s12, s12, s0, eq
062a9954: cmp      w8, #1
062a9958: b.lt     #0x62a99f4
062a995c: adrp     x24, #0x9b46000
062a9960: ldr      x24, [x24, #0x58]
062a9964: mov      x22, xzr
062a9968: and      x8, x8, #0xffffffff
062a996c: add      x23, x20, #0x20
062a9970: cmp      x22, w8, uxtw
062a9974: b.hs     #0x62a9b74
062a9978: ldr      w21, [x23, x22, lsl #2]
062a997c: mov      x0, x19
062a9980: mov      x2, xzr
062a9984: mov      w1, w21
062a9988: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
062a998c: lsr      x8, x0, #0x20
062a9990: cbz      w8, #0x62a99e4
062a9994: ldr      x0, [x19, #0x10]
062a9998: ldrh     w2, [x19, #4]
062a999c: scvtf    s0, w8
062a99a0: fmul     s0, s12, s0
062a99a4: mov      w1, w21
062a99a8: mov      v1.16b, v11.16b
062a99ac: mov      v2.16b, v8.16b
062a99b0: mov      w3, wzr
062a99b4: mov      v3.16b, v9.16b
062a99b8: bl       #0x62a6eac ; Oak.DamageCalculator.GetDamage
062a99bc: ldr      x2, [x24]
062a99c0: mov      w1, w0
062a99c4: add      x0, sp, #0x88
062a99c8: str      xzr, [sp, #0x88]
062a99cc: bl       #0x4b3c128
062a99d0: ldr      x2, [sp, #0x88]
062a99d4: mov      x0, x19
062a99d8: mov      w1, w21
062a99dc: mov      x3, xzr
062a99e0: bl       #0x66c0224 ; Oak.DamageInfo.set_Item
062a99e4: ldr      w8, [x20, #0x18]
062a99e8: add      x22, x22, #1
062a99ec: cmp      x22, w8, sxtw
062a99f0: b.lt     #0x62a9970
062a99f4: adrp     x21, #0x9b46000
062a99f8: ldr      x21, [x21, #0x18]
062a99fc: mov      w20, #1
062a9a00: mov      x0, x19
062a9a04: mov      w1, w20
062a9a08: mov      x2, xzr
062a9a0c: bl       #0x66c1514 ; Oak.DamageInfo.get_Item
062a9a10: lsr      x8, x0, #0x20
062a9a14: fmov     s0, w8
062a9a18: fcmp     s0, #0.0
062a9a1c: str      x0, [sp, #0xc0]
062a9a20: b.eq     #0x62a9a78
062a9a24: mov      x0, x19
062a9a28: mov      w1, w20
062a9a2c: mov      x2, xzr
062a9a30: bl       #0x66c1514 ; Oak.DamageInfo.get_Item
062a9a34: tst      w0, #0xff
062a9a38: str      x0, [sp, #0xc0]
062a9a3c: b.eq     #0x62a9a64
062a9a40: ldr      x1, [x21]
062a9a44: lsr      x8, x0, #0x20
062a9a48: fmov     s0, w8
062a9a4c: fmul     s0, s10, s0
062a9a50: add      x0, sp, #0x88
062a9a54: str      xzr, [sp, #0x88]
062a9a58: bl       #0x4b43f40
062a9a5c: ldr      x2, [sp, #0x88]
062a9a60: b        #0x62a9a68
062a9a64: mov      x2, xzr
062a9a68: mov      x0, x19
062a9a6c: mov      w1, w20
062a9a70: mov      x3, xzr
062a9a74: bl       #0x66c173c ; Oak.DamageInfo.set_Item
062a9a78: add      w20, w20, #1
062a9a7c: cmp      w20, #5
062a9a80: b.ne     #0x62a9a00
062a9a84: mov      x0, x19
062a9a88: bl       #0x62a9b78 ; Oak.DamageCalculator.ApplyConvertDamagedBehaviour
062a9a8c: ldp      x20, x19, [sp, #0x150]
062a9a90: ldp      x22, x21, [sp, #0x140]
062a9a94: ldp      x24, x23, [sp, #0x130]
062a9a98: ldp      x26, x25, [sp, #0x120]
062a9a9c: ldp      x28, x27, [sp, #0x110]
062a9aa0: ldp      x29, x30, [sp, #0x100]
062a9aa4: ldp      d9, d8, [sp, #0xf0]
062a9aa8: ldp      d11, d10, [sp, #0xe0]
062a9aac: ldp      d13, d12, [sp, #0xd0]
062a9ab0: add      sp, sp, #0x160
062a9ab4: ret      
062a9ab8: ldr      x20, [x19, #0x10]
062a9abc: cbz      x20, #0x62a9b70
062a9ac0: adrp     x10, #0x9b44000
062a9ac4: ldr      x8, [x20]
062a9ac8: ldr      x10, [x10, #0xdb0]
062a9acc: ldrh     w9, [x8, #0x12e]
062a9ad0: ldr      x1, [x10]
062a9ad4: cbz      x9, #0x62a9af8
062a9ad8: ldr      x10, [x8, #0xb0]
062a9adc: add      x10, x10, #8
062a9ae0: ldur     x11, [x10, #-8]
062a9ae4: cmp      x11, x1
062a9ae8: b.eq     #0x62a9b08
062a9aec: subs     x9, x9, #1
062a9af0: add      x10, x10, #0x10
062a9af4: b.ne     #0x62a9ae0
062a9af8: mov      w2, #0xb
062a9afc: mov      x0, x20
062a9b00: bl       #0x39a94f0
062a9b04: b        #0x62a9b18
062a9b08: ldr      w9, [x10]
062a9b0c: add      w9, w9, #0xb
062a9b10: add      x8, x8, w9, sxtw #4
062a9b14: add      x0, x8, #0x138
062a9b18: ldp      x8, x1, [x0]
062a9b1c: mov      x0, x20
062a9b20: blr      x8
062a9b24: cbz      x0, #0x62a8b14
062a9b28: adrp     x8, #0x9b70000
062a9b2c: ldr      x8, [x8, #0x70]
062a9b30: ldr      x9, [x0]
062a9b34: ldr      x8, [x8]
062a9b38: ldrb     w11, [x9, #0x130]
062a9b3c: ldrb     w10, [x8, #0x130]
062a9b40: cmp      w11, w10
062a9b44: b.lo     #0x62a8b14
062a9b48: ldr      x9, [x9, #0xc8]
062a9b4c: add      x9, x9, x10, lsl #3
062a9b50: ldur     x9, [x9, #-8]
062a9b54: cmp      x9, x8
062a9b58: b.ne     #0x62a8b14
062a9b5c: mov      w1, #1
062a9b60: mov      x0, x19
062a9b64: mov      x2, xzr
062a9b68: bl       #0x66c0bdc ; Oak.DamageInfo.set_notMortal
062a9b6c: b        #0x62a8b14
062a9b70: bl       #0x39d36e4
062a9b74: bl       #0x39d36ec