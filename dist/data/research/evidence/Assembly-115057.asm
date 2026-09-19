0773224c: sub      sp, sp, #0x80
07732250: stp      d9, d8, [sp, #0x10]
07732254: stp      x29, x30, [sp, #0x20]
07732258: stp      x28, x27, [sp, #0x30]
0773225c: stp      x26, x25, [sp, #0x40]
07732260: stp      x24, x23, [sp, #0x50]
07732264: stp      x22, x21, [sp, #0x60]
07732268: stp      x20, x19, [sp, #0x70]
0773226c: adrp     x22, #0xa26f000
07732270: ldrb     w8, [x22, #0x73]
07732274: mov      x25, x6
07732278: mov      w23, w5
0773227c: mov      w26, w4
07732280: mov      w24, w3
07732284: mov      w19, w2
07732288: mov      w20, w1
0773228c: mov      x21, x0
07732290: tbnz     w8, #0, #0x77322e4
07732294: adrp     x0, #0x9b7c000
07732298: ldr      x0, [x0, #0x320]
0773229c: bl       #0x39d34bc
077322a0: adrp     x0, #0x9b9d000
077322a4: ldr      x0, [x0, #0x270]
077322a8: bl       #0x39d34bc
077322ac: adrp     x0, #0x9bee000
077322b0: ldr      x0, [x0, #0xe58]
077322b4: bl       #0x39d34bc
077322b8: adrp     x0, #0x9b79000
077322bc: ldr      x0, [x0, #0x6d8]
077322c0: bl       #0x39d34bc
077322c4: adrp     x0, #0x9b9d000
077322c8: ldr      x0, [x0, #0x5c8]
077322cc: bl       #0x39d34bc
077322d0: adrp     x0, #0x9bee000
077322d4: ldr      x0, [x0, #0xe60]
077322d8: bl       #0x39d34bc
077322dc: mov      w8, #1
077322e0: strb     w8, [x22, #0x73]
077322e4: mov      w0, #0x101c
077322e8: mov      x1, xzr
077322ec: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
077322f0: tbz      w0, #0, #0x773232c
077322f4: mov      w0, #0x101c
077322f8: mov      x1, xzr
077322fc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07732300: cbz      x0, #0x7732600
07732304: mov      x1, x21
07732308: mov      w2, w20
0773230c: mov      w3, w19
07732310: mov      w4, w24
07732314: mov      w5, w26
07732318: mov      w6, w23
0773231c: mov      x7, x25
07732320: str      xzr, [sp]
07732324: bl       #0x864a14c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1009
07732328: b        #0x773266c
0773232c: str      w26, [sp, #0xc]
07732330: cbnz     x25, #0x7732348
07732334: mov      x0, x21
07732338: mov      x1, xzr
0773233c: bl       #0x66ed7a0 ; Oak.Item.get_Options
07732340: mov      x25, x0
07732344: cbz      x0, #0x7732418
07732348: ldr      w8, [x25, #0x18]
0773234c: cmp      w8, #1
07732350: b.lt     #0x7732418
07732354: adrp     x28, #0x9b9d000
07732358: adrp     x29, #0x9bee000
0773235c: adrp     x22, #0x9b9d000
07732360: ldr      x28, [x28, #0x5c8]
07732364: ldr      x29, [x29, #0xe58]
07732368: ldr      x22, [x22, #0x270]
0773236c: mov      w26, wzr
07732370: fmov     s8, wzr
07732374: ldr      x2, [x28]
07732378: mov      x0, x25
0773237c: mov      w1, w26
07732380: bl       #0x4748a8c
07732384: ldr      x4, [x29]
07732388: mov      w1, w19
0773238c: mov      w2, w24
07732390: mov      w3, w23
07732394: bl       #0x40a8490
07732398: cbz      x0, #0x7732404
0773239c: ldr      x8, [x0]
077323a0: ldr      x1, [x22]
077323a4: mov      x27, x0
077323a8: ldrh     w9, [x8, #0x12e]
077323ac: cbz      x9, #0x77323d0
077323b0: ldr      x10, [x8, #0xb0]
077323b4: add      x10, x10, #8
077323b8: ldur     x11, [x10, #-8]
077323bc: cmp      x11, x1
077323c0: b.eq     #0x77323e0
077323c4: subs     x9, x9, #1
077323c8: add      x10, x10, #0x10
077323cc: b.ne     #0x77323b8
077323d0: mov      w2, #5
077323d4: mov      x0, x27
077323d8: bl       #0x39a94f0
077323dc: b        #0x77323f0
077323e0: ldr      w9, [x10]
077323e4: add      w9, w9, #5
077323e8: add      x8, x8, w9, sxtw #4
077323ec: add      x0, x8, #0x138
077323f0: ldp      x8, x2, [x0]
077323f4: mov      x0, x27
077323f8: mov      w1, w20
077323fc: blr      x8
07732400: fadd     s8, s8, s0
07732404: ldr      w8, [x25, #0x18]
07732408: add      w26, w26, #1
0773240c: cmp      w26, w8
07732410: b.lt     #0x7732374
07732414: b        #0x773241c
07732418: fmov     s8, wzr
0773241c: mov      x0, x21
07732420: bl       #0x773075c ; Oak.Weapon.get_EngraveRandomOption
07732424: cbz      x0, #0x7732510
07732428: mov      x0, x21
0773242c: bl       #0x773075c ; Oak.Weapon.get_EngraveRandomOption
07732430: cbz      x0, #0x7732600
07732434: adrp     x27, #0x9b9d000
07732438: adrp     x28, #0x9bee000
0773243c: adrp     x29, #0x9b9d000
07732440: ldr      x27, [x27, #0x5c8]
07732444: ldr      x28, [x28, #0xe60]
07732448: ldr      x29, [x29, #0x270]
0773244c: mov      w25, wzr
07732450: ldr      w8, [x0, #0x18]
07732454: cmp      w25, w8
07732458: b.ge     #0x7732510
0773245c: mov      x0, x21
07732460: bl       #0x773075c ; Oak.Weapon.get_EngraveRandomOption
07732464: cbz      x0, #0x7732600
07732468: ldr      x2, [x27]
0773246c: mov      w1, w25
07732470: bl       #0x4748a8c
07732474: ldr      x5, [x28]
07732478: mov      x1, x0
0773247c: mov      x0, x21
07732480: mov      w2, w19
07732484: mov      w3, w24
07732488: mov      w4, w23
0773248c: bl       #0x4171968
07732490: cbz      x0, #0x77324fc
07732494: ldr      x8, [x0]
07732498: ldr      x1, [x29]
0773249c: mov      x26, x0
077324a0: ldrh     w9, [x8, #0x12e]
077324a4: cbz      x9, #0x77324c8
077324a8: ldr      x10, [x8, #0xb0]
077324ac: add      x10, x10, #8
077324b0: ldur     x11, [x10, #-8]
077324b4: cmp      x11, x1
077324b8: b.eq     #0x77324d8
077324bc: subs     x9, x9, #1
077324c0: add      x10, x10, #0x10
077324c4: b.ne     #0x77324b0
077324c8: mov      w2, #5
077324cc: mov      x0, x26
077324d0: bl       #0x39a94f0
077324d4: b        #0x77324e8
077324d8: ldr      w9, [x10]
077324dc: add      w9, w9, #5
077324e0: add      x8, x8, w9, sxtw #4
077324e4: add      x0, x8, #0x138
077324e8: ldp      x8, x2, [x0]
077324ec: mov      x0, x26
077324f0: mov      w1, w20
077324f4: blr      x8
077324f8: fadd     s8, s8, s0
077324fc: mov      x0, x21
07732500: add      w25, w25, #1
07732504: bl       #0x773075c ; Oak.Weapon.get_EngraveRandomOption
07732508: cbnz     x0, #0x7732450
0773250c: b        #0x7732600
07732510: mov      x0, x21
07732514: bl       #0x7730814 ; Oak.Weapon.get_EngraveStaticOption
07732518: cbz      x0, #0x7732604
0773251c: mov      x0, x21
07732520: bl       #0x7730814 ; Oak.Weapon.get_EngraveStaticOption
07732524: cbz      x0, #0x7732600
07732528: adrp     x27, #0x9b9d000
0773252c: adrp     x28, #0x9bee000
07732530: adrp     x29, #0x9b9d000
07732534: ldr      x27, [x27, #0x5c8]
07732538: ldr      x28, [x28, #0xe60]
0773253c: ldr      x29, [x29, #0x270]
07732540: mov      w25, wzr
07732544: ldr      w8, [x0, #0x18]
07732548: cmp      w25, w8
0773254c: b.ge     #0x7732604
07732550: mov      x0, x21
07732554: bl       #0x7730814 ; Oak.Weapon.get_EngraveStaticOption
07732558: cbz      x0, #0x7732600
0773255c: ldr      x2, [x27]
07732560: mov      w1, w25
07732564: bl       #0x4748a8c
07732568: ldr      x5, [x28]
0773256c: mov      x1, x0
07732570: mov      x0, x21
07732574: mov      w2, w19
07732578: mov      w3, w24
0773257c: mov      w4, w23
07732580: bl       #0x4171968
07732584: cbz      x0, #0x77325f0
07732588: ldr      x8, [x0]
0773258c: ldr      x1, [x29]
07732590: mov      x26, x0
07732594: ldrh     w9, [x8, #0x12e]
07732598: cbz      x9, #0x77325bc
0773259c: ldr      x10, [x8, #0xb0]
077325a0: add      x10, x10, #8
077325a4: ldur     x11, [x10, #-8]
077325a8: cmp      x11, x1
077325ac: b.eq     #0x77325cc
077325b0: subs     x9, x9, #1
077325b4: add      x10, x10, #0x10
077325b8: b.ne     #0x77325a4
077325bc: mov      w2, #5
077325c0: mov      x0, x26
077325c4: bl       #0x39a94f0
077325c8: b        #0x77325dc
077325cc: ldr      w9, [x10]
077325d0: add      w9, w9, #5
077325d4: add      x8, x8, w9, sxtw #4
077325d8: add      x0, x8, #0x138
077325dc: ldp      x8, x2, [x0]
077325e0: mov      x0, x26
077325e4: mov      w1, w20
077325e8: blr      x8
077325ec: fadd     s8, s8, s0
077325f0: mov      x0, x21
077325f4: add      w25, w25, #1
077325f8: bl       #0x7730814 ; Oak.Weapon.get_EngraveStaticOption
077325fc: cbnz     x0, #0x7732544
07732600: bl       #0x39d36e4
07732604: ldr      w8, [sp, #0xc]
07732608: fmov     s9, #1.00000000
0773260c: cmp      w8, w20
07732610: b.ne     #0x773264c
07732614: adrp     x22, #0x9b7c000
07732618: ldr      x22, [x22, #0x320]
0773261c: ldr      x0, [x22]
07732620: ldr      w8, [x0, #0xe0]
07732624: cbnz     w8, #0x7732630
07732628: bl       #0x39d35c4
0773262c: ldr      x0, [x22]
07732630: ldr      x8, [x0, #0xb8]
07732634: ldr      s0, [x8, #0x10]
07732638: mov      w8, #0x42c80000
0773263c: fmov     s1, w8
07732640: fdiv     s0, s0, s1
07732644: fmov     s1, #1.00000000
07732648: fadd     s9, s0, s1
0773264c: mov      x0, x21
07732650: bl       #0x77310e8 ; Oak.Weapon.get_WeaponSpec
07732654: mov      w1, w20
07732658: mov      w2, w19
0773265c: mov      x3, xzr
07732660: bl       #0x670e8d8 ; Oak.WeaponEnhanceExtension.GetElementalAttack
07732664: fadd     s0, s8, s0
07732668: fmul     s0, s9, s0
0773266c: ldp      x20, x19, [sp, #0x70]
07732670: ldp      x22, x21, [sp, #0x60]
07732674: ldp      x24, x23, [sp, #0x50]
07732678: ldp      x26, x25, [sp, #0x40]
0773267c: ldp      x28, x27, [sp, #0x30]
07732680: ldp      x29, x30, [sp, #0x20]
07732684: ldp      d9, d8, [sp, #0x10]
07732688: add      sp, sp, #0x80
0773268c: ret      