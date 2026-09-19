08c0e64c: sub      sp, sp, #0xd0
08c0e650: str      d8, [sp, #0x80]
08c0e654: stp      x30, x25, [sp, #0x90]
08c0e658: stp      x24, x23, [sp, #0xa0]
08c0e65c: stp      x22, x21, [sp, #0xb0]
08c0e660: stp      x20, x19, [sp, #0xc0]
08c0e664: adrp     x20, #0xa279000
08c0e668: ldrb     w8, [x20, #0x64c]
08c0e66c: mov      x19, x0
08c0e670: tbnz     w8, #0, #0x8c0e6f4
08c0e674: adrp     x0, #0x9b44000
08c0e678: ldr      x0, [x0, #0xea0]
08c0e67c: bl       #0x39d34bc
08c0e680: adrp     x0, #0x9b3f000
08c0e684: ldr      x0, [x0, #0xed8]
08c0e688: bl       #0x39d34bc
08c0e68c: adrp     x0, #0x9b45000
08c0e690: ldr      x0, [x0, #0xbd0]
08c0e694: bl       #0x39d34bc
08c0e698: adrp     x0, #0x9b43000
08c0e69c: ldr      x0, [x0, #0x1d8]
08c0e6a0: bl       #0x39d34bc
08c0e6a4: adrp     x0, #0x9b77000
08c0e6a8: ldr      x0, [x0, #0x440]
08c0e6ac: bl       #0x39d34bc
08c0e6b0: adrp     x0, #0x9b77000
08c0e6b4: ldr      x0, [x0, #0x448]
08c0e6b8: bl       #0x39d34bc
08c0e6bc: adrp     x0, #0x9b44000
08c0e6c0: ldr      x0, [x0, #0xf00]
08c0e6c4: bl       #0x39d34bc
08c0e6c8: adrp     x0, #0x9b4e000
08c0e6cc: ldr      x0, [x0, #0xa50]
08c0e6d0: bl       #0x39d34bc
08c0e6d4: adrp     x0, #0x9c44000
08c0e6d8: ldr      x0, [x0, #0xc28]
08c0e6dc: bl       #0x39d34bc
08c0e6e0: adrp     x0, #0x9c44000
08c0e6e4: ldr      x0, [x0, #0xc30]
08c0e6e8: bl       #0x39d34bc
08c0e6ec: mov      w8, #1
08c0e6f0: strb     w8, [x20, #0x64c]
08c0e6f4: mov      w0, #0x49aa
08c0e6f8: mov      x1, xzr
08c0e6fc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e700: tbz      w0, #0, #0x8c0e738
08c0e704: mov      w0, #0x49aa
08c0e708: mov      x1, xzr
08c0e70c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e710: cbz      x0, #0x8c0eaf8
08c0e714: mov      x1, x19
08c0e718: ldp      x20, x19, [sp, #0xc0]
08c0e71c: ldp      x22, x21, [sp, #0xb0]
08c0e720: ldp      x24, x23, [sp, #0xa0]
08c0e724: ldp      x30, x25, [sp, #0x90]
08c0e728: ldr      d8, [sp, #0x80]
08c0e72c: mov      x2, xzr
08c0e730: add      sp, sp, #0xd0
08c0e734: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08c0e738: adrp     x22, #0x9b44000
08c0e73c: ldr      x22, [x22, #0xea0]
08c0e740: ldr      x0, [x19, #0x10]
08c0e744: ldr      x1, [x22]
08c0e748: bl       #0x39d35c8
08c0e74c: cbz      x0, #0x8c0ead0
08c0e750: mov      x20, x0
08c0e754: mov      x0, xzr
08c0e758: bl       #0x6a890f4 ; Oak.PartyManager.get_Instance
08c0e75c: cbz      x0, #0x8c0eaf8
08c0e760: mov      x1, x20
08c0e764: mov      x2, xzr
08c0e768: bl       #0x6a948d4 ; Oak.PartyManager.GetPartyFor
08c0e76c: cbz      x0, #0x8c0ead0
08c0e770: mov      x1, xzr
08c0e774: bl       #0x6a8be88 ; Oak.Party.GetEnumerator
08c0e778: mov      x20, x0
08c0e77c: cbz      x0, #0x8c0eafc
08c0e780: adrp     x24, #0x9b43000
08c0e784: adrp     x25, #0x9b45000
08c0e788: ldr      x24, [x24, #0x1d8]
08c0e78c: ldr      x25, [x25, #0xbd0]
08c0e790: mov      w23, wzr
08c0e794: ldr      x8, [x20]
08c0e798: ldr      x1, [x24]
08c0e79c: ldrh     w9, [x8, #0x12e]
08c0e7a0: cbz      x9, #0x8c0e7c4
08c0e7a4: ldr      x10, [x8, #0xb0]
08c0e7a8: add      x10, x10, #8
08c0e7ac: ldur     x11, [x10, #-8]
08c0e7b0: cmp      x11, x1
08c0e7b4: b.eq     #0x8c0e7d4
08c0e7b8: subs     x9, x9, #1
08c0e7bc: add      x10, x10, #0x10
08c0e7c0: b.ne     #0x8c0e7ac
08c0e7c4: mov      x0, x20
08c0e7c8: mov      w2, wzr
08c0e7cc: bl       #0x39a94f0
08c0e7d0: b        #0x8c0e7e0
08c0e7d4: ldrsw    x9, [x10]
08c0e7d8: add      x8, x8, x9, lsl #4
08c0e7dc: add      x0, x8, #0x138
08c0e7e0: ldp      x8, x1, [x0]
08c0e7e4: mov      x0, x20
08c0e7e8: blr      x8
08c0e7ec: tbz      w0, #0, #0x8c0e8d0
08c0e7f0: ldr      x8, [x20]
08c0e7f4: ldr      x1, [x25]
08c0e7f8: ldrh     w9, [x8, #0x12e]
08c0e7fc: cbz      x9, #0x8c0e820
08c0e800: ldr      x10, [x8, #0xb0]
08c0e804: add      x10, x10, #8
08c0e808: ldur     x11, [x10, #-8]
08c0e80c: cmp      x11, x1
08c0e810: b.eq     #0x8c0e830
08c0e814: subs     x9, x9, #1
08c0e818: add      x10, x10, #0x10
08c0e81c: b.ne     #0x8c0e808
08c0e820: mov      x0, x20
08c0e824: mov      w2, wzr
08c0e828: bl       #0x39a94f0
08c0e82c: b        #0x8c0e83c
08c0e830: ldrsw    x9, [x10]
08c0e834: add      x8, x8, x9, lsl #4
08c0e838: add      x0, x8, #0x138
08c0e83c: ldp      x8, x1, [x0]
08c0e840: mov      x0, x20
08c0e844: blr      x8
08c0e848: mov      x21, x0
08c0e84c: cbz      x0, #0x8c0eaf0
08c0e850: ldr      x8, [x21]
08c0e854: ldr      x1, [x22]
08c0e858: ldrh     w9, [x8, #0x12e]
08c0e85c: cbz      x9, #0x8c0e880
08c0e860: ldr      x10, [x8, #0xb0]
08c0e864: add      x10, x10, #8
08c0e868: ldur     x11, [x10, #-8]
08c0e86c: cmp      x11, x1
08c0e870: b.eq     #0x8c0e890
08c0e874: subs     x9, x9, #1
08c0e878: add      x10, x10, #0x10
08c0e87c: b.ne     #0x8c0e868
08c0e880: mov      w2, #1
08c0e884: mov      x0, x21
08c0e888: bl       #0x39a94f0
08c0e88c: b        #0x8c0e8a0
08c0e890: ldr      w9, [x10]
08c0e894: add      w9, w9, #1
08c0e898: add      x8, x8, w9, sxtw #4
08c0e89c: add      x0, x8, #0x138
08c0e8a0: ldp      x8, x1, [x0]
08c0e8a4: mov      x0, x21
08c0e8a8: blr      x8
08c0e8ac: cbz      x0, #0x8c0eaf4
08c0e8b0: mov      x1, xzr
08c0e8b4: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08c0e8b8: cbz      x0, #0x8c0eaec
08c0e8bc: ldr      w8, [x0, #0x178]
08c0e8c0: ldr      w9, [x19, #0x80]
08c0e8c4: cmp      w8, w9
08c0e8c8: cinc     w23, w23, eq
08c0e8cc: b        #0x8c0e794
08c0e8d0: mov      x21, xzr
08c0e8d4: mov      w22, #7
08c0e8d8: cbz      x20, #0x8c0e93c
08c0e8dc: adrp     x10, #0x9b3f000
08c0e8e0: ldr      x8, [x20]
08c0e8e4: ldr      x10, [x10, #0xed8]
08c0e8e8: ldrh     w9, [x8, #0x12e]
08c0e8ec: ldr      x1, [x10]
08c0e8f0: cbz      x9, #0x8c0e914
08c0e8f4: ldr      x10, [x8, #0xb0]
08c0e8f8: add      x10, x10, #8
08c0e8fc: ldur     x11, [x10, #-8]
08c0e900: cmp      x11, x1
08c0e904: b.eq     #0x8c0e924
08c0e908: subs     x9, x9, #1
08c0e90c: add      x10, x10, #0x10
08c0e910: b.ne     #0x8c0e8fc
08c0e914: mov      x0, x20
08c0e918: mov      w2, wzr
08c0e91c: bl       #0x39a94f0
08c0e920: b        #0x8c0e930
08c0e924: ldrsw    x9, [x10]
08c0e928: add      x8, x8, x9, lsl #4
08c0e92c: add      x0, x8, #0x138
08c0e930: ldp      x8, x1, [x0]
08c0e934: mov      x0, x20
08c0e938: blr      x8
08c0e93c: cbnz     x21, #0x8c0eb00
08c0e940: cmp      w22, #7
08c0e944: b.eq     #0x8c0e94c
08c0e948: cbnz     w22, #0x8c0ead0
08c0e94c: ldr      x8, [x19, #0x60]
08c0e950: ldr      q0, [x19, #0x50]
08c0e954: add      x0, sp, #0x60
08c0e958: mov      x1, xzr
08c0e95c: str      x8, [sp, #0x70]
08c0e960: str      q0, [sp, #0x60]
08c0e964: bl       #0x3ac5138
08c0e968: mov      v8.16b, v0.16b
08c0e96c: ldur     q0, [x19, #0x68]
08c0e970: ldr      x8, [x19, #0x78]
08c0e974: add      x0, sp, #0x40
08c0e978: mov      x1, xzr
08c0e97c: str      q0, [sp, #0x40]
08c0e980: str      x8, [sp, #0x50]
08c0e984: bl       #0x3ac5138
08c0e988: scvtf    s1, w23
08c0e98c: fmul     s1, s8, s1
08c0e990: fcmp     s1, s0
08c0e994: fcsel    s0, s1, s0, mi
08c0e998: add      x8, sp, #8
08c0e99c: mov      x0, xzr
08c0e9a0: bl       #0x3ac68b0
08c0e9a4: ldr      x8, [sp, #0x18]
08c0e9a8: ldur     q0, [sp, #8]
08c0e9ac: adrp     x22, #0x9b44000
08c0e9b0: str      x8, [sp, #0x30]
08c0e9b4: str      q0, [sp, #0x20]
08c0e9b8: str      x8, [x19, #0x48]
08c0e9bc: stur     q0, [x19, #0x38]
08c0e9c0: ldr      x22, [x22, #0xf00]
08c0e9c4: ldr      x0, [x22]
08c0e9c8: ldr      w8, [x0, #0xe0]
08c0e9cc: cbnz     w8, #0x8c0e9d4
08c0e9d0: bl       #0x39d35c4
08c0e9d4: adrp     x23, #0xa25e000
08c0e9d8: ldrb     w8, [x23, #0x1ba]
08c0e9dc: cbnz     w8, #0x8c0e9f4
08c0e9e0: adrp     x0, #0x9b44000
08c0e9e4: ldr      x0, [x0, #0xf00]
08c0e9e8: bl       #0x39d34bc
08c0e9ec: mov      w8, #1
08c0e9f0: strb     w8, [x23, #0x1ba]
08c0e9f4: ldr      x0, [x22]
08c0e9f8: ldr      w8, [x0, #0xe0]
08c0e9fc: cbnz     w8, #0x8c0ea08
08c0ea00: bl       #0x39d35c4
08c0ea04: ldr      x0, [x22]
08c0ea08: adrp     x24, #0x9b4e000
08c0ea0c: ldr      x8, [x0, #0xb8]
08c0ea10: ldr      x24, [x24, #0xa50]
08c0ea14: ldr      x20, [x8]
08c0ea18: ldr      x0, [x24]
08c0ea1c: bl       #0x39d36d8
08c0ea20: adrp     x8, #0x9c44000
08c0ea24: ldr      x8, [x8, #0xc28]
08c0ea28: mov      x1, x19
08c0ea2c: mov      x3, xzr
08c0ea30: mov      x21, x0
08c0ea34: ldr      x2, [x8]
08c0ea38: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08c0ea3c: cbz      x20, #0x8c0eaf8
08c0ea40: adrp     x8, #0x9b77000
08c0ea44: ldr      x8, [x8, #0x440]
08c0ea48: mov      x0, x20
08c0ea4c: mov      x1, x21
08c0ea50: ldr      x2, [x8]
08c0ea54: bl       #0x40e2470
08c0ea58: ldrb     w8, [x23, #0x1ba]
08c0ea5c: cbnz     w8, #0x8c0ea74
08c0ea60: adrp     x0, #0x9b44000
08c0ea64: ldr      x0, [x0, #0xf00]
08c0ea68: bl       #0x39d34bc
08c0ea6c: mov      w8, #1
08c0ea70: strb     w8, [x23, #0x1ba]
08c0ea74: ldr      x0, [x22]
08c0ea78: ldr      w8, [x0, #0xe0]
08c0ea7c: cbnz     w8, #0x8c0ea88
08c0ea80: bl       #0x39d35c4
08c0ea84: ldr      x0, [x22]
08c0ea88: ldr      x8, [x0, #0xb8]
08c0ea8c: ldr      x0, [x24]
08c0ea90: ldr      x20, [x8]
08c0ea94: bl       #0x39d36d8
08c0ea98: adrp     x8, #0x9c44000
08c0ea9c: ldr      x8, [x8, #0xc30]
08c0eaa0: mov      x1, x19
08c0eaa4: mov      x3, xzr
08c0eaa8: mov      x21, x0
08c0eaac: ldr      x2, [x8]
08c0eab0: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08c0eab4: cbz      x20, #0x8c0eaf8
08c0eab8: adrp     x8, #0x9b77000
08c0eabc: ldr      x8, [x8, #0x448]
08c0eac0: mov      x0, x20
08c0eac4: mov      x1, x21
08c0eac8: ldr      x2, [x8]
08c0eacc: bl       #0x40e2470
08c0ead0: ldp      x20, x19, [sp, #0xc0]
08c0ead4: ldp      x22, x21, [sp, #0xb0]
08c0ead8: ldp      x24, x23, [sp, #0xa0]
08c0eadc: ldp      x30, x25, [sp, #0x90]
08c0eae0: ldr      d8, [sp, #0x80]
08c0eae4: add      sp, sp, #0xd0
08c0eae8: ret      
08c0eaec: bl       #0x39d36e4
08c0eaf0: bl       #0x39d36e4
08c0eaf4: bl       #0x39d36e4
08c0eaf8: bl       #0x39d36e4
08c0eafc: bl       #0x39d36e4
08c0eb00: mov      x0, x21
08c0eb04: bl       #0x39d36dc
08c0eb08: mov      x22, x0
08c0eb0c: mov      w23, wzr
08c0eb10: b        #0x8c0eb30
08c0eb14: b        #0x8c0eb2c
08c0eb18: b        #0x8c0eb2c
08c0eb1c: b        #0x8c0eb2c
08c0eb20: b        #0x8c0eb2c
08c0eb24: b        #0x8c0eb2c
08c0eb28: b        #0x8c0eb2c
08c0eb2c: mov      x22, x0
08c0eb30: cmp      w1, #1
08c0eb34: b.ne     #0x8c0eb54
08c0eb38: mov      x0, x22
08c0eb3c: bl       #0x9749aa0
08c0eb40: ldr      x21, [x0]
08c0eb44: bl       #0x9749ab0
08c0eb48: mov      w22, wzr
08c0eb4c: cbnz     x20, #0x8c0e8dc
08c0eb50: b        #0x8c0e93c
08c0eb54: mov      x21, xzr
08c0eb58: b        #0x8c0eb60
08c0eb5c: mov      x22, x0
08c0eb60: cbz      x20, #0x8c0ebc4
08c0eb64: adrp     x10, #0x9b3f000
08c0eb68: ldr      x8, [x20]
08c0eb6c: ldr      x10, [x10, #0xed8]
08c0eb70: ldrh     w9, [x8, #0x12e]
08c0eb74: ldr      x1, [x10]
08c0eb78: cbz      x9, #0x8c0eb9c
08c0eb7c: ldr      x10, [x8, #0xb0]
08c0eb80: add      x10, x10, #8
08c0eb84: ldur     x11, [x10, #-8]
08c0eb88: cmp      x11, x1
08c0eb8c: b.eq     #0x8c0ebac
08c0eb90: subs     x9, x9, #1
08c0eb94: add      x10, x10, #0x10
08c0eb98: b.ne     #0x8c0eb84
08c0eb9c: mov      x0, x20
08c0eba0: mov      w2, wzr
08c0eba4: bl       #0x39a94f0
08c0eba8: b        #0x8c0ebb8
08c0ebac: ldrsw    x9, [x10]
08c0ebb0: add      x8, x8, x9, lsl #4
08c0ebb4: add      x0, x8, #0x138
08c0ebb8: ldp      x8, x1, [x0]
08c0ebbc: mov      x0, x20
08c0ebc0: blr      x8
08c0ebc4: cbnz     x21, #0x8c0ebd0
08c0ebc8: mov      x0, x22
08c0ebcc: bl       #0x3ab82d0
08c0ebd0: mov      x0, x21
08c0ebd4: bl       #0x39d36dc
08c0ebd8: bl       #0x35bb99c