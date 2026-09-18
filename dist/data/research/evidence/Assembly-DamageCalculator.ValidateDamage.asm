// ['damageInfo']
062a748c: stp      d13, d12, [sp, #-0x90]!
062a7490: stp      d11, d10, [sp, #0x10]
062a7494: stp      d9, d8, [sp, #0x20]
062a7498: stp      x29, x30, [sp, #0x30]
062a749c: stp      x28, x27, [sp, #0x40]
062a74a0: stp      x26, x25, [sp, #0x50]
062a74a4: stp      x24, x23, [sp, #0x60]
062a74a8: stp      x22, x21, [sp, #0x70]
062a74ac: stp      x20, x19, [sp, #0x80]
062a74b0: sub      sp, sp, #0x680
062a74b4: adrp     x20, #0xa267000
062a74b8: ldrb     w8, [x20, #0x581]
062a74bc: mov      x19, x0
062a74c0: tbnz     w8, #0, #0x62a758c
062a74c4: adrp     x0, #0x9b45000
062a74c8: ldr      x0, [x0, #0x3f8]
062a74cc: bl       #0x39d34bc
062a74d0: adrp     x0, #0x9b45000
062a74d4: ldr      x0, [x0, #0xd88]
062a74d8: bl       #0x39d34bc
062a74dc: adrp     x0, #0x9b7c000
062a74e0: ldr      x0, [x0, #0x320]
062a74e4: bl       #0x39d34bc
062a74e8: adrp     x0, #0x9b45000
062a74ec: ldr      x0, [x0, #0xbe8]
062a74f0: bl       #0x39d34bc
062a74f4: adrp     x0, #0x9b83000
062a74f8: ldr      x0, [x0, #0x6c8]
062a74fc: bl       #0x39d34bc
062a7500: adrp     x0, #0x9b45000
062a7504: ldr      x0, [x0, #0x190]
062a7508: bl       #0x39d34bc
062a750c: adrp     x0, #0x9b44000
062a7510: ldr      x0, [x0, #0xea0]
062a7514: bl       #0x39d34bc
062a7518: adrp     x0, #0x9b85000
062a751c: ldr      x0, [x0, #0x440]
062a7520: bl       #0x39d34bc
062a7524: adrp     x0, #0x9b85000
062a7528: ldr      x0, [x0, #0x448]
062a752c: bl       #0x39d34bc
062a7530: adrp     x0, #0x9b85000
062a7534: ldr      x0, [x0, #0x450]
062a7538: bl       #0x39d34bc
062a753c: adrp     x0, #0x9b47000
062a7540: ldr      x0, [x0, #0x3a0]
062a7544: bl       #0x39d34bc
062a7548: adrp     x0, #0x9b46000
062a754c: ldr      x0, [x0, #0x58]
062a7550: bl       #0x39d34bc
062a7554: adrp     x0, #0x9b7c000
062a7558: ldr      x0, [x0, #0x328]
062a755c: bl       #0x39d34bc
062a7560: adrp     x0, #0x9b47000
062a7564: ldr      x0, [x0, #0x80]
062a7568: bl       #0x39d34bc
062a756c: adrp     x0, #0x9b7c000
062a7570: ldr      x0, [x0, #0x330]
062a7574: bl       #0x39d34bc
062a7578: adrp     x0, #0x9b47000
062a757c: ldr      x0, [x0, #0x88]
062a7580: bl       #0x39d34bc
062a7584: mov      w8, #1
062a7588: strb     w8, [x20, #0x581]
062a758c: mov      w0, #0x66db
062a7590: mov      x1, xzr
062a7594: str      xzr, [sp, #0x678]
062a7598: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a759c: tbz      w0, #0, #0x62a75e8
062a75a0: mov      w0, #0x66db
062a75a4: mov      x1, xzr
062a75a8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a75ac: mov      x20, x0
062a75b0: add      x0, sp, #0x380
062a75b4: mov      w2, #0x2f8
062a75b8: mov      x1, x19
062a75bc: bl       #0x9749b40
062a75c0: cbz      x20, #0x62a8008
062a75c4: add      x0, sp, #0x88
062a75c8: add      x1, sp, #0x380
062a75cc: mov      w2, #0x2f8
062a75d0: bl       #0x9749b40
062a75d4: add      x1, sp, #0x88
062a75d8: mov      x0, x20
062a75dc: mov      x2, xzr
062a75e0: bl       #0x86e6428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_3394
062a75e4: b        #0x62a7fdc
062a75e8: adrp     x22, #0x9b45000
062a75ec: ldr      x8, [x19, #8]
062a75f0: ldr      x22, [x22, #0x3f8]
062a75f4: cbz      x8, #0x62a7650
062a75f8: ldr      x10, [x8]
062a75fc: ldr      x9, [x22]
062a7600: ldrb     w12, [x10, #0x130]
062a7604: ldrb     w11, [x9, #0x130]
062a7608: cmp      w12, w11
062a760c: b.lo     #0x62a7650
062a7610: ldr      x10, [x10, #0xc8]
062a7614: add      x10, x10, x11, lsl #3
062a7618: ldur     x10, [x10, #-8]
062a761c: cmp      x10, x9
062a7620: b.ne     #0x62a7650
062a7624: adrp     x9, #0x9b45000
062a7628: ldr      x9, [x9, #0xbe8]
062a762c: ldr      w20, [x8, #0x60]
062a7630: ldr      x0, [x9]
062a7634: ldr      w9, [x0, #0xe0]
062a7638: cbnz     w9, #0x62a7640
062a763c: bl       #0x39d35c4
062a7640: mov      w0, w20
062a7644: mov      x1, xzr
062a7648: bl       #0x62e0644 ; Oak.EntityGroupsExtensions.IsPlayer
062a764c: tbz      w0, #0, #0x62a7fdc
062a7650: mov      x0, x19
062a7654: mov      x1, xzr
062a7658: bl       #0x66c03d0 ; Oak.DamageInfo.GetTotalDamage
062a765c: mov      w20, w0
062a7660: mov      x0, xzr
062a7664: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
062a7668: cbz      x0, #0x62a8008
062a766c: add      x8, x0, #0x5c8
062a7670: ldr      x9, [x8, #0x10]
062a7674: ldr      q0, [x8]
062a7678: add      x0, sp, #0x70
062a767c: mov      x1, xzr
062a7680: str      x9, [sp, #0x80]
062a7684: str      q0, [sp, #0x70]
062a7688: bl       #0x3ac5138
062a768c: scvtf    s1, w20
062a7690: fcmp     s0, s1
062a7694: b.gt     #0x62a7fdc
062a7698: mov      x0, x19
062a769c: mov      x1, xzr
062a76a0: bl       #0x66beaf4 ; Oak.DamageInfo.get_modifier
062a76a4: tst      w0, #0xff
062a76a8: str      x0, [sp, #0x678]
062a76ac: b.eq     #0x62a7fdc
062a76b0: ldp      x0, x8, [x19, #8]
062a76b4: cmp      x0, x8
062a76b8: b.eq     #0x62a7fdc
062a76bc: adrp     x27, #0x9b44000
062a76c0: ldr      x27, [x27, #0xea0]
062a76c4: ldr      x1, [x27]
062a76c8: bl       #0x39d35c8
062a76cc: cbz      x0, #0x62a7714
062a76d0: ldr      x8, [x0]
062a76d4: ldr      x1, [x27]
062a76d8: mov      x21, x0
062a76dc: ldrh     w9, [x8, #0x12e]
062a76e0: cbz      x9, #0x62a7704
062a76e4: ldr      x10, [x8, #0xb0]
062a76e8: add      x10, x10, #8
062a76ec: ldur     x11, [x10, #-8]
062a76f0: cmp      x11, x1
062a76f4: b.eq     #0x62a771c
062a76f8: subs     x9, x9, #1
062a76fc: add      x10, x10, #0x10
062a7700: b.ne     #0x62a76ec
062a7704: mov      w2, #1
062a7708: mov      x0, x21
062a770c: bl       #0x39a94f0
062a7710: b        #0x62a772c
062a7714: mov      w21, #-1
062a7718: b        #0x62a774c
062a771c: ldr      w9, [x10]
062a7720: add      w9, w9, #1
062a7724: add      x8, x8, w9, sxtw #4
062a7728: add      x0, x8, #0x138
062a772c: ldp      x8, x1, [x0]
062a7730: mov      x0, x21
062a7734: blr      x8
062a7738: cbz      x0, #0x62a8008
062a773c: mov      x1, xzr
062a7740: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
062a7744: cbz      x0, #0x62a8008
062a7748: ldr      w21, [x0, #0xa4]
062a774c: adrp     x8, #0x9b83000
062a7750: ldr      x8, [x8, #0x6c8]
062a7754: ldr      x0, [x8]
062a7758: ldr      w8, [x0, #0xe0]
062a775c: cbnz     w8, #0x62a7764
062a7760: bl       #0x39d35c4
062a7764: mov      w0, w21
062a7768: mov      x1, xzr
062a776c: bl       #0x622e744 ; Oak.GlobalBalanceModifier.BasicAttackModifier
062a7770: ldr      x0, [x19, #8]
062a7774: mov      v8.16b, v0.16b
062a7778: fmov     s11, wzr
062a777c: str      w20, [sp, #0xc]
062a7780: cbz      x0, #0x62a77d8
062a7784: ldr      x9, [x0]
062a7788: ldr      x8, [x22]
062a778c: ldrb     w11, [x9, #0x130]
062a7790: ldrb     w10, [x8, #0x130]
062a7794: cmp      w11, w10
062a7798: b.lo     #0x62a77d8
062a779c: ldr      x9, [x9, #0xc8]
062a77a0: add      x9, x9, x10, lsl #3
062a77a4: ldur     x9, [x9, #-8]
062a77a8: cmp      x9, x8
062a77ac: b.ne     #0x62a77d8
062a77b0: mov      x1, xzr
062a77b4: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
062a77b8: cbz      x0, #0x62a8008
062a77bc: ldr      x8, [x0]
062a77c0: ldr      x9, [x8, #0x2a8]
062a77c4: ldr      x1, [x8, #0x2b0]
062a77c8: blr      x9
062a77cc: ldr      x0, [x19, #8]
062a77d0: fmov     s1, wzr
062a77d4: fadd     s11, s0, s1
062a77d8: ldr      x1, [x27]
062a77dc: bl       #0x39d35c8
062a77e0: cbz      x0, #0x62a7dc0
062a77e4: adrp     x28, #0x9b45000
062a77e8: adrp     x29, #0x9b85000
062a77ec: adrp     x26, #0x9b85000
062a77f0: adrp     x20, #0x9b85000
062a77f4: ldr      w23, [x19, #4]
062a77f8: ldr      x28, [x28, #0x190]
062a77fc: ldr      x29, [x29, #0x440]
062a7800: ldr      x26, [x26, #0x450]
062a7804: ldr      x20, [x20, #0x448]
062a7808: mov      x21, x0
062a780c: mov      w22, wzr
062a7810: fmov     s12, #1.00000000
062a7814: ldr      x8, [x21]
062a7818: ldr      x1, [x27]
062a781c: ldrh     w9, [x8, #0x12e]
062a7820: cbz      x9, #0x62a7844
062a7824: ldr      x10, [x8, #0xb0]
062a7828: add      x10, x10, #8
062a782c: ldur     x11, [x10, #-8]
062a7830: cmp      x11, x1
062a7834: b.eq     #0x62a7854
062a7838: subs     x9, x9, #1
062a783c: add      x10, x10, #0x10
062a7840: b.ne     #0x62a782c
062a7844: mov      x0, x21
062a7848: mov      w2, wzr
062a784c: bl       #0x39a94f0
062a7850: b        #0x62a7860
062a7854: ldrsw    x9, [x10]
062a7858: add      x8, x8, x9, lsl #4
062a785c: add      x0, x8, #0x138
062a7860: ldp      x8, x1, [x0]
062a7864: mov      x0, x21
062a7868: blr      x8
062a786c: cbz      x0, #0x62a8008
062a7870: ldr      x8, [x0]
062a7874: ldr      x1, [x28]
062a7878: mov      x24, x0
062a787c: ldrh     w9, [x8, #0x12e]
062a7880: cbz      x9, #0x62a78a4
062a7884: ldr      x10, [x8, #0xb0]
062a7888: add      x10, x10, #8
062a788c: ldur     x11, [x10, #-8]
062a7890: cmp      x11, x1
062a7894: b.eq     #0x62a78b4
062a7898: subs     x9, x9, #1
062a789c: add      x10, x10, #0x10
062a78a0: b.ne     #0x62a788c
062a78a4: mov      w2, #2
062a78a8: mov      x0, x24
062a78ac: bl       #0x39a94f0
062a78b0: b        #0x62a78c4
062a78b4: ldr      w9, [x10]
062a78b8: add      w9, w9, #2
062a78bc: add      x8, x8, w9, sxtw #4
062a78c0: add      x0, x8, #0x138
062a78c4: ldp      x8, x1, [x0]
062a78c8: mov      x0, x24
062a78cc: blr      x8
062a78d0: cbz      x0, #0x62a8008
062a78d4: ldr      x8, [x0]
062a78d8: ldr      x1, [x29]
062a78dc: mov      x24, x0
062a78e0: ldrh     w9, [x8, #0x12e]
062a78e4: cbz      x9, #0x62a7908
062a78e8: ldr      x10, [x8, #0xb0]
062a78ec: add      x10, x10, #8
062a78f0: ldur     x11, [x10, #-8]
062a78f4: cmp      x11, x1
062a78f8: b.eq     #0x62a7918
062a78fc: subs     x9, x9, #1
062a7900: add      x10, x10, #0x10
062a7904: b.ne     #0x62a78f0
062a7908: mov      x0, x24
062a790c: mov      w2, wzr
062a7910: bl       #0x39a94f0
062a7914: b        #0x62a7924
062a7918: ldrsw    x9, [x10]
062a791c: add      x8, x8, x9, lsl #4
062a7920: add      x0, x8, #0x138
062a7924: ldp      x8, x1, [x0]
062a7928: mov      x0, x24
062a792c: blr      x8
062a7930: cmp      w22, w0
062a7934: b.ge     #0x62a7ad8
062a7938: ldr      x8, [x21]
062a793c: ldr      x1, [x27]
062a7940: ldrh     w9, [x8, #0x12e]
062a7944: cbz      x9, #0x62a7968
062a7948: ldr      x10, [x8, #0xb0]
062a794c: add      x10, x10, #8
062a7950: ldur     x11, [x10, #-8]
062a7954: cmp      x11, x1
062a7958: b.eq     #0x62a7978
062a795c: subs     x9, x9, #1
062a7960: add      x10, x10, #0x10
062a7964: b.ne     #0x62a7950
062a7968: mov      x0, x21
062a796c: mov      w2, wzr
062a7970: bl       #0x39a94f0
062a7974: b        #0x62a7984
062a7978: ldrsw    x9, [x10]
062a797c: add      x8, x8, x9, lsl #4
062a7980: add      x0, x8, #0x138
062a7984: ldp      x8, x1, [x0]
062a7988: mov      x0, x21
062a798c: blr      x8
062a7990: cbz      x0, #0x62a8008
062a7994: ldr      x8, [x0]
062a7998: ldr      x1, [x28]
062a799c: mov      x24, x0
062a79a0: ldrh     w9, [x8, #0x12e]
062a79a4: cbz      x9, #0x62a79c8
062a79a8: ldr      x10, [x8, #0xb0]
062a79ac: add      x10, x10, #8
062a79b0: ldur     x11, [x10, #-8]
062a79b4: cmp      x11, x1
062a79b8: b.eq     #0x62a79d8
062a79bc: subs     x9, x9, #1
062a79c0: add      x10, x10, #0x10
062a79c4: b.ne     #0x62a79b0
062a79c8: mov      w2, #2
062a79cc: mov      x0, x24
062a79d0: bl       #0x39a94f0
062a79d4: b        #0x62a79e8
062a79d8: ldr      w9, [x10]
062a79dc: add      w9, w9, #2
062a79e0: add      x8, x8, w9, sxtw #4
062a79e4: add      x0, x8, #0x138
062a79e8: ldp      x8, x1, [x0]
062a79ec: mov      x0, x24
062a79f0: blr      x8
062a79f4: cbz      x0, #0x62a8008
062a79f8: ldr      x8, [x0]
062a79fc: ldr      x1, [x26]
062a7a00: mov      x24, x0
062a7a04: ldrh     w9, [x8, #0x12e]
062a7a08: cbz      x9, #0x62a7a2c
062a7a0c: ldr      x10, [x8, #0xb0]
062a7a10: add      x10, x10, #8
062a7a14: ldur     x11, [x10, #-8]
062a7a18: cmp      x11, x1
062a7a1c: b.eq     #0x62a7a3c
062a7a20: subs     x9, x9, #1
062a7a24: add      x10, x10, #0x10
062a7a28: b.ne     #0x62a7a14
062a7a2c: mov      x0, x24
062a7a30: mov      w2, wzr
062a7a34: bl       #0x39a94f0
062a7a38: b        #0x62a7a48
062a7a3c: ldrsw    x9, [x10]
062a7a40: add      x8, x8, x9, lsl #4
062a7a44: add      x0, x8, #0x138
062a7a48: ldp      x8, x2, [x0]
062a7a4c: mov      x0, x24
062a7a50: mov      w1, w22
062a7a54: blr      x8
062a7a58: ldr      x1, [x20]
062a7a5c: bl       #0x39d35c8
062a7a60: cbz      x0, #0x62a7ad0
062a7a64: ldr      x8, [x0]
062a7a68: ldr      x25, [x19, #0x10]
062a7a6c: ldr      x1, [x20]
062a7a70: mov      x24, x0
062a7a74: ldrh     w9, [x8, #0x12e]
062a7a78: cbz      x9, #0x62a7a9c
062a7a7c: ldr      x10, [x8, #0xb0]
062a7a80: add      x10, x10, #8
062a7a84: ldur     x11, [x10, #-8]
062a7a88: cmp      x11, x1
062a7a8c: b.eq     #0x62a7aac
062a7a90: subs     x9, x9, #1
062a7a94: add      x10, x10, #0x10
062a7a98: b.ne     #0x62a7a84
062a7a9c: mov      x0, x24
062a7aa0: mov      w2, wzr
062a7aa4: bl       #0x39a94f0
062a7aa8: b        #0x62a7ab8
062a7aac: ldrsw    x9, [x10]
062a7ab0: add      x8, x8, x9, lsl #4
062a7ab4: add      x0, x8, #0x138
062a7ab8: ldp      x8, x3, [x0]
062a7abc: mov      x0, x24
062a7ac0: mov      x1, x25
062a7ac4: mov      x2, x23
062a7ac8: blr      x8
062a7acc: fmul     s12, s12, s0
062a7ad0: add      w22, w22, #1
062a7ad4: b        #0x62a7814
062a7ad8: ldrh     w8, [x19, #4]
062a7adc: tbnz     w8, #0, #0x62a7aec
062a7ae0: fmov     s9, #1.00000000
062a7ae4: tbnz     w8, #1, #0x62a7b80
062a7ae8: b        #0x62a7c0c
062a7aec: ldr      x8, [x21]
062a7af0: ldr      x1, [x27]
062a7af4: ldrh     w9, [x8, #0x12e]
062a7af8: cbz      x9, #0x62a7b1c
062a7afc: ldr      x10, [x8, #0xb0]
062a7b00: add      x10, x10, #8
062a7b04: ldur     x11, [x10, #-8]
062a7b08: cmp      x11, x1
062a7b0c: b.eq     #0x62a7b2c
062a7b10: subs     x9, x9, #1
062a7b14: add      x10, x10, #0x10
062a7b18: b.ne     #0x62a7b04
062a7b1c: mov      w2, #1
062a7b20: mov      x0, x21
062a7b24: bl       #0x39a94f0
062a7b28: b        #0x62a7b3c
062a7b2c: ldr      w9, [x10]
062a7b30: add      w9, w9, #1
062a7b34: add      x8, x8, w9, sxtw #4
062a7b38: add      x0, x8, #0x138
062a7b3c: ldp      x8, x1, [x0]
062a7b40: mov      x0, x21
062a7b44: blr      x8
062a7b48: cbz      x0, #0x62a8008
062a7b4c: add      x8, sp, #0x380
062a7b50: mov      x1, xzr
062a7b54: bl       #0x8c86c68 ; Oak.CharacterStatsBehaviour.get_MeleeAttackMultiplier
062a7b58: ldr      q0, [sp, #0x380]
062a7b5c: ldr      x8, [sp, #0x390]
062a7b60: add      x0, sp, #0x50
062a7b64: mov      x1, xzr
062a7b68: str      q0, [sp, #0x50]
062a7b6c: str      x8, [sp, #0x60]
062a7b70: bl       #0x3ac5138
062a7b74: ldrh     w8, [x19, #4]
062a7b78: mov      v9.16b, v0.16b
062a7b7c: tbz      w8, #1, #0x62a7c0c
062a7b80: ldr      x8, [x21]
062a7b84: ldr      x1, [x27]
062a7b88: ldrh     w9, [x8, #0x12e]
062a7b8c: cbz      x9, #0x62a7bb0
062a7b90: ldr      x10, [x8, #0xb0]
062a7b94: add      x10, x10, #8
062a7b98: ldur     x11, [x10, #-8]
062a7b9c: cmp      x11, x1
062a7ba0: b.eq     #0x62a7bc0
062a7ba4: subs     x9, x9, #1
062a7ba8: add      x10, x10, #0x10
062a7bac: b.ne     #0x62a7b98
062a7bb0: mov      w2, #1
062a7bb4: mov      x0, x21
062a7bb8: bl       #0x39a94f0
062a7bbc: b        #0x62a7bd0
062a7bc0: ldr      w9, [x10]
062a7bc4: add      w9, w9, #1
062a7bc8: add      x8, x8, w9, sxtw #4
062a7bcc: add      x0, x8, #0x138
062a7bd0: ldp      x8, x1, [x0]
062a7bd4: mov      x0, x21
062a7bd8: blr      x8
062a7bdc: cbz      x0, #0x62a8008
062a7be0: add      x8, sp, #0x380
062a7be4: mov      x1, xzr
062a7be8: bl       #0x8c86ce0 ; Oak.CharacterStatsBehaviour.get_ProjectileAttackMultiplier
062a7bec: ldr      q0, [sp, #0x380]
062a7bf0: ldr      x8, [sp, #0x390]
062a7bf4: add      x0, sp, #0x30
062a7bf8: mov      x1, xzr
062a7bfc: str      q0, [sp, #0x30]
062a7c00: str      x8, [sp, #0x40]
062a7c04: bl       #0x3ac5138
062a7c08: fmul     s9, s9, s0
062a7c0c: adrp     x8, #0x9b7c000
062a7c10: ldr      x8, [x8, #0x320]
062a7c14: ldr      x0, [x8]
062a7c18: ldr      w8, [x0, #0xe0]
062a7c1c: cbnz     w8, #0x62a7c24
062a7c20: bl       #0x39d35c4
062a7c24: mov      x0, xzr
062a7c28: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
062a7c2c: cbz      x0, #0x62a8008
062a7c30: ldr      x8, [x0, #0x18]
062a7c34: mov      x22, x0
062a7c38: cmp      w8, #1
062a7c3c: b.lt     #0x62a7dc0
062a7c40: adrp     x25, #0x9b47000
062a7c44: adrp     x29, #0x9b46000
062a7c48: adrp     x28, #0x9b7c000
062a7c4c: ldr      x25, [x25, #0x88]
062a7c50: ldr      x29, [x29, #0x58]
062a7c54: ldr      x28, [x28, #0x330]
062a7c58: mov      x20, xzr
062a7c5c: add      x23, x19, #0x10c
062a7c60: and      x8, x8, #0xffffffff
062a7c64: mov      w26, #0x7f800000
062a7c68: cmp      x20, w8, uxtw
062a7c6c: b.hs     #0x62a800c
062a7c70: ldr      x8, [x21]
062a7c74: add      x9, x22, x20, lsl #2
062a7c78: ldr      w24, [x9, #0x20]
062a7c7c: ldr      x1, [x27]
062a7c80: ldrh     w9, [x8, #0x12e]
062a7c84: cbz      x9, #0x62a7ca8
062a7c88: ldr      x10, [x8, #0xb0]
062a7c8c: add      x10, x10, #8
062a7c90: ldur     x11, [x10, #-8]
062a7c94: cmp      x11, x1
062a7c98: b.eq     #0x62a7cb8
062a7c9c: subs     x9, x9, #1
062a7ca0: add      x10, x10, #0x10
062a7ca4: b.ne     #0x62a7c90
062a7ca8: mov      w2, #1
062a7cac: mov      x0, x21
062a7cb0: bl       #0x39a94f0
062a7cb4: b        #0x62a7cc8
062a7cb8: ldr      w9, [x10]
062a7cbc: add      w9, w9, #1
062a7cc0: add      x8, x8, w9, sxtw #4
062a7cc4: add      x0, x8, #0x138
062a7cc8: ldp      x8, x1, [x0]
062a7ccc: mov      x0, x21
062a7cd0: blr      x8
062a7cd4: cbz      x0, #0x62a8008
062a7cd8: ldr      x8, [x0]
062a7cdc: mov      w1, w24
062a7ce0: ldr      x9, [x8, #0x298]
062a7ce4: ldr      x2, [x8, #0x2a0]
062a7ce8: blr      x9
062a7cec: mov      x0, x19
062a7cf0: mov      x1, xzr
062a7cf4: mov      v10.16b, v0.16b
062a7cf8: bl       #0x66beaf4 ; Oak.DamageInfo.get_modifier
062a7cfc: ldr      x1, [x25]
062a7d00: str      x0, [sp, #0x678]
062a7d04: add      x0, sp, #0x678
062a7d08: bl       #0x4b43f58
062a7d0c: fmul     s0, s10, s0
062a7d10: fmul     s0, s12, s0
062a7d14: fmul     s10, s9, s0
062a7d18: fcmp     s10, #0.0
062a7d1c: b.ls     #0x62a7db0
062a7d20: ldrb     w8, [x23]
062a7d24: cbz      w8, #0x62a7d78
062a7d28: ldr      x1, [x28]
062a7d2c: mov      x0, x23
062a7d30: bl       #0x4b3c4fc
062a7d34: mov      w1, w0
062a7d38: mov      x0, x19
062a7d3c: mov      x2, xzr
062a7d40: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
062a7d44: ldr      x1, [x28]
062a7d48: lsr      x8, x0, #0x20
062a7d4c: mov      x0, x23
062a7d50: scvtf    s13, w8
062a7d54: bl       #0x4b3c4fc
062a7d58: ldr      x2, [x29]
062a7d5c: fadd     s0, s10, s13
062a7d60: fmov     s1, w26
062a7d64: mov      w24, w0
062a7d68: str      xzr, [sp, #0x380]
062a7d6c: fcvtzs   w8, s0
062a7d70: fcmp     s0, s1
062a7d74: b        #0x62a7d8c
062a7d78: ldr      x2, [x29]
062a7d7c: fmov     s0, w26
062a7d80: fcvtzs   w8, s10
062a7d84: fcmp     s10, s0
062a7d88: str      xzr, [sp, #0x380]
062a7d8c: mov      w9, #-0xffffffff80000000
062a7d90: csel     w1, w9, w8, eq
062a7d94: add      x0, sp, #0x380
062a7d98: bl       #0x4b3c128
062a7d9c: ldr      x2, [sp, #0x380]
062a7da0: mov      x0, x19
062a7da4: mov      w1, w24
062a7da8: mov      x3, xzr
062a7dac: bl       #0x66c0224 ; Oak.DamageInfo.set_Item
062a7db0: ldr      w8, [x22, #0x18]
062a7db4: add      x20, x20, #1
062a7db8: cmp      x20, w8, sxtw
062a7dbc: b.lt     #0x62a7c68
062a7dc0: adrp     x8, #0x9b7c000
062a7dc4: ldr      x8, [x8, #0x320]
062a7dc8: ldrh     w20, [x19, #4]
062a7dcc: ldr      x0, [x8]
062a7dd0: ldr      w8, [x0, #0xe0]
062a7dd4: cbnz     w8, #0x62a7ddc
062a7dd8: bl       #0x39d35c4
062a7ddc: mov      x0, xzr
062a7de0: bl       #0x66bc09c ; Oak.ElementalTypeExtensions.get_ElementalTypes
062a7de4: cbz      x0, #0x62a8008
062a7de8: ldr      x8, [x0, #0x18]
062a7dec: mov      w9, #0x4a0
062a7df0: fmov     s0, #2.00000000
062a7df4: and      w9, w20, w9
062a7df8: fadd     s0, s11, s0
062a7dfc: cmp      w9, #0
062a7e00: fmov     s1, #1.00000000
062a7e04: mov      x21, x0
062a7e08: fcsel    s9, s0, s1, eq
062a7e0c: cmp      w8, #1
062a7e10: b.lt     #0x62a7eac
062a7e14: adrp     x24, #0x9b46000
062a7e18: ldr      x24, [x24, #0x58]
062a7e1c: mov      x20, xzr
062a7e20: and      x8, x8, #0xffffffff
062a7e24: add      x23, x21, #0x20
062a7e28: cmp      x20, w8, uxtw
062a7e2c: b.hs     #0x62a800c
062a7e30: ldr      w22, [x23, x20, lsl #2]
062a7e34: mov      x0, x19
062a7e38: mov      x2, xzr
062a7e3c: mov      w1, w22
062a7e40: bl       #0x66c00a4 ; Oak.DamageInfo.get_Item
062a7e44: lsr      x8, x0, #0x20
062a7e48: cbz      w8, #0x62a7e9c
062a7e4c: ldr      x0, [x19, #0x10]
062a7e50: ldrh     w2, [x19, #4]
062a7e54: scvtf    s0, w8
062a7e58: fmul     s0, s9, s0
062a7e5c: fmov     s1, #1.00000000
062a7e60: fmov     s3, #1.00000000
062a7e64: mov      w3, #1
062a7e68: mov      w1, w22
062a7e6c: mov      v2.16b, v8.16b
062a7e70: bl       #0x62a6eac ; Oak.DamageCalculator.GetDamage
062a7e74: ldr      x2, [x24]
062a7e78: mov      w1, w0
062a7e7c: add      x0, sp, #0x380
062a7e80: str      xzr, [sp, #0x380]
062a7e84: bl       #0x4b3c128
062a7e88: ldr      x2, [sp, #0x380]
062a7e8c: mov      x0, x19
062a7e90: mov      w1, w22
062a7e94: mov      x3, xzr
062a7e98: bl       #0x66c0224 ; Oak.DamageInfo.set_Item
062a7e9c: ldr      w8, [x21, #0x18]
062a7ea0: add      x20, x20, #1
062a7ea4: cmp      x20, w8, sxtw
062a7ea8: b.lt     #0x62a7e28
062a7eac: mov      x0, x19
062a7eb0: mov      x1, xzr
062a7eb4: bl       #0x66c03d0 ; Oak.DamageInfo.GetTotalDamage
062a7eb8: mov      w21, w0
062a7ebc: mov      x0, xzr
062a7ec0: bl       #0x6c2400c ; Oak.ConstantsData.get_Value
062a7ec4: cbz      x0, #0x62a8008
062a7ec8: add      x8, x0, #0x4b4
062a7ecc: ldr      x9, [x8, #0x10]
062a7ed0: ldr      q0, [x8]
062a7ed4: add      x0, sp, #0x10
062a7ed8: mov      x1, xzr
062a7edc: str      x9, [sp, #0x20]
062a7ee0: str      q0, [sp, #0x10]
062a7ee4: bl       #0x3ac5138
062a7ee8: scvtf    s1, w21
062a7eec: mov      w8, #0x7f800000
062a7ef0: adrp     x23, #0x9b45000
062a7ef4: fmul     s0, s0, s1
062a7ef8: fmov     s1, w8
062a7efc: ldr      w22, [sp, #0xc]
062a7f00: ldr      x23, [x23, #0x3f8]
062a7f04: fcvtzs   w8, s0
062a7f08: fcmp     s0, s1
062a7f0c: mov      w9, #-0xffffffff80000000
062a7f10: csel     w21, w9, w8, eq
062a7f14: cmp      w21, #1
062a7f18: b.lt     #0x62a7fdc
062a7f1c: cmp      w21, w22
062a7f20: b.ge     #0x62a7fdc
062a7f24: adrp     x20, #0x9b45000
062a7f28: ldr      x20, [x20, #0xd88]
062a7f2c: ldr      x0, [x20]
062a7f30: ldr      w8, [x0, #0xe0]
062a7f34: cbnz     w8, #0x62a7f40
062a7f38: bl       #0x39d35c4
062a7f3c: ldr      x0, [x20]
062a7f40: ldr      x8, [x0, #0xb8]
062a7f44: ldr      x8, [x8]
062a7f48: cbz      x8, #0x62a8008
062a7f4c: ldrb     w8, [x8, #0x48]
062a7f50: cbz      w8, #0x62a7fdc
062a7f54: ldp      x10, x8, [x19, #8]
062a7f58: ldr      x9, [x23]
062a7f5c: cbz      x10, #0x62a7f74
062a7f60: ldr      x11, [x10]
062a7f64: ldrb     w12, [x9, #0x130]
062a7f68: ldrb     w13, [x11, #0x130]
062a7f6c: cmp      w13, w12
062a7f70: b.hs     #0x62a7f7c
062a7f74: mov      x2, xzr
062a7f78: b        #0x62a7f90
062a7f7c: ldr      x11, [x11, #0xc8]
062a7f80: add      x11, x11, x12, lsl #3
062a7f84: ldur     x11, [x11, #-8]
062a7f88: cmp      x11, x9
062a7f8c: csel     x2, x10, xzr, eq
062a7f90: cbz      x8, #0x62a7fa8
062a7f94: ldr      x10, [x8]
062a7f98: ldrb     w11, [x9, #0x130]
062a7f9c: ldrb     w12, [x10, #0x130]
062a7fa0: cmp      w12, w11
062a7fa4: b.hs     #0x62a7fb0
062a7fa8: mov      x3, xzr
062a7fac: b        #0x62a7fc4
062a7fb0: ldr      x10, [x10, #0xc8]
062a7fb4: add      x10, x10, x11, lsl #3
062a7fb8: ldur     x10, [x10, #-8]
062a7fbc: cmp      x10, x9
062a7fc0: csel     x3, x8, xzr, eq
062a7fc4: mov      w0, w22
062a7fc8: mov      w1, w21
062a7fcc: mov      x4, xzr
062a7fd0: bl       #0x6234c40 ; Damage.Create
062a7fd4: mov      x1, xzr
062a7fd8: bl       #0x62341f0 ; Oak.MultiPlayHackReporter.ReportDamageHackUser
062a7fdc: add      sp, sp, #0x680
062a7fe0: ldp      x20, x19, [sp, #0x80]
062a7fe4: ldp      x22, x21, [sp, #0x70]
062a7fe8: ldp      x24, x23, [sp, #0x60]
062a7fec: ldp      x26, x25, [sp, #0x50]
062a7ff0: ldp      x28, x27, [sp, #0x40]
062a7ff4: ldp      x29, x30, [sp, #0x30]
062a7ff8: ldp      d9, d8, [sp, #0x20]
062a7ffc: ldp      d11, d10, [sp, #0x10]
062a8000: ldp      d13, d12, [sp], #0x90
062a8004: ret      
062a8008: bl       #0x39d36e4
062a800c: bl       #0x39d36ec