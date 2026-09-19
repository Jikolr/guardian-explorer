08c0f610: sub      sp, sp, #0xd0
08c0f614: str      d8, [sp, #0x80]
08c0f618: stp      x30, x25, [sp, #0x90]
08c0f61c: stp      x24, x23, [sp, #0xa0]
08c0f620: stp      x22, x21, [sp, #0xb0]
08c0f624: stp      x20, x19, [sp, #0xc0]
08c0f628: adrp     x21, #0xa279000
08c0f62c: ldrb     w8, [x21, #0x650]
08c0f630: mov      x20, x1
08c0f634: mov      x19, x0
08c0f638: tbnz     w8, #0, #0x8c0f68c
08c0f63c: adrp     x0, #0x9b81000
08c0f640: ldr      x0, [x0, #0x230]
08c0f644: bl       #0x39d34bc
08c0f648: adrp     x0, #0x9b44000
08c0f64c: ldr      x0, [x0, #0xea0]
08c0f650: bl       #0x39d34bc
08c0f654: adrp     x0, #0x9b3f000
08c0f658: ldr      x0, [x0, #0xed8]
08c0f65c: bl       #0x39d34bc
08c0f660: adrp     x0, #0x9b45000
08c0f664: ldr      x0, [x0, #0xbd0]
08c0f668: bl       #0x39d34bc
08c0f66c: adrp     x0, #0x9b43000
08c0f670: ldr      x0, [x0, #0x1d8]
08c0f674: bl       #0x39d34bc
08c0f678: adrp     x0, #0x9b77000
08c0f67c: ldr      x0, [x0, #0x548]
08c0f680: bl       #0x39d34bc
08c0f684: mov      w8, #1
08c0f688: strb     w8, [x21, #0x650]
08c0f68c: mov      w0, #0x49ad
08c0f690: mov      x1, xzr
08c0f694: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0f698: tbz      w0, #0, #0x8c0f6d4
08c0f69c: mov      w0, #0x49ad
08c0f6a0: mov      x1, xzr
08c0f6a4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0f6a8: cbz      x0, #0x8c0f9ec
08c0f6ac: mov      x1, x19
08c0f6b0: mov      x2, x20
08c0f6b4: ldp      x20, x19, [sp, #0xc0]
08c0f6b8: ldp      x22, x21, [sp, #0xb0]
08c0f6bc: ldp      x24, x23, [sp, #0xa0]
08c0f6c0: ldp      x30, x25, [sp, #0x90]
08c0f6c4: ldr      d8, [sp, #0x80]
08c0f6c8: mov      x3, xzr
08c0f6cc: add      sp, sp, #0xd0
08c0f6d0: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08c0f6d4: cbz      x20, #0x8c0f70c
08c0f6d8: adrp     x8, #0x9b77000
08c0f6dc: ldr      x8, [x8, #0x548]
08c0f6e0: ldr      x9, [x20]
08c0f6e4: ldr      x8, [x8]
08c0f6e8: ldrb     w11, [x9, #0x130]
08c0f6ec: ldrb     w10, [x8, #0x130]
08c0f6f0: cmp      w11, w10
08c0f6f4: b.lo     #0x8c0f70c
08c0f6f8: ldr      x9, [x9, #0xc8]
08c0f6fc: add      x9, x9, x10, lsl #3
08c0f700: ldur     x9, [x9, #-8]
08c0f704: cmp      x9, x8
08c0f708: b.eq     #0x8c0f72c
08c0f70c: ldp      x20, x19, [sp, #0xc0]
08c0f710: ldp      x22, x21, [sp, #0xb0]
08c0f714: ldp      x24, x23, [sp, #0xa0]
08c0f718: ldp      x30, x25, [sp, #0x90]
08c0f71c: ldr      d8, [sp, #0x80]
08c0f720: mov      w0, wzr
08c0f724: add      sp, sp, #0xd0
08c0f728: ret      
08c0f72c: ldr      x21, [x20, #0x18]
08c0f730: cbz      x21, #0x8c0f70c
08c0f734: adrp     x8, #0x9b81000
08c0f738: ldr      x8, [x8, #0x230]
08c0f73c: ldr      x9, [x21]
08c0f740: ldr      x8, [x8]
08c0f744: ldrb     w11, [x9, #0x130]
08c0f748: ldrb     w10, [x8, #0x130]
08c0f74c: cmp      w11, w10
08c0f750: b.lo     #0x8c0f768
08c0f754: ldr      x9, [x9, #0xc8]
08c0f758: add      x9, x9, x10, lsl #3
08c0f75c: ldur     x9, [x9, #-8]
08c0f760: cmp      x9, x8
08c0f764: b.eq     #0x8c0f70c
08c0f768: adrp     x22, #0x9b44000
08c0f76c: ldr      x0, [x19, #0x10]
08c0f770: ldr      x22, [x22, #0xea0]
08c0f774: ldr      x1, [x22]
08c0f778: bl       #0x39d35c8
08c0f77c: cbz      x0, #0x8c0f70c
08c0f780: mov      x1, x0
08c0f784: mov      x0, x21
08c0f788: mov      x2, xzr
08c0f78c: bl       #0x6a8bd50 ; Oak.Party.Contains
08c0f790: tbz      w0, #0, #0x8c0f70c
08c0f794: ldr      x0, [x20, #0x18]
08c0f798: cbz      x0, #0x8c0f9ec
08c0f79c: mov      x1, xzr
08c0f7a0: bl       #0x6a8be88 ; Oak.Party.GetEnumerator
08c0f7a4: mov      x20, x0
08c0f7a8: cbz      x0, #0x8c0f9fc
08c0f7ac: adrp     x24, #0x9b43000
08c0f7b0: adrp     x25, #0x9b45000
08c0f7b4: ldr      x24, [x24, #0x1d8]
08c0f7b8: ldr      x25, [x25, #0xbd0]
08c0f7bc: mov      w23, wzr
08c0f7c0: ldr      x8, [x20]
08c0f7c4: ldr      x1, [x24]
08c0f7c8: ldrh     w9, [x8, #0x12e]
08c0f7cc: cbz      x9, #0x8c0f7f0
08c0f7d0: ldr      x10, [x8, #0xb0]
08c0f7d4: add      x10, x10, #8
08c0f7d8: ldur     x11, [x10, #-8]
08c0f7dc: cmp      x11, x1
08c0f7e0: b.eq     #0x8c0f800
08c0f7e4: subs     x9, x9, #1
08c0f7e8: add      x10, x10, #0x10
08c0f7ec: b.ne     #0x8c0f7d8
08c0f7f0: mov      x0, x20
08c0f7f4: mov      w2, wzr
08c0f7f8: bl       #0x39a94f0
08c0f7fc: b        #0x8c0f80c
08c0f800: ldrsw    x9, [x10]
08c0f804: add      x8, x8, x9, lsl #4
08c0f808: add      x0, x8, #0x138
08c0f80c: ldp      x8, x1, [x0]
08c0f810: mov      x0, x20
08c0f814: blr      x8
08c0f818: tbz      w0, #0, #0x8c0f8fc
08c0f81c: ldr      x8, [x20]
08c0f820: ldr      x1, [x25]
08c0f824: ldrh     w9, [x8, #0x12e]
08c0f828: cbz      x9, #0x8c0f84c
08c0f82c: ldr      x10, [x8, #0xb0]
08c0f830: add      x10, x10, #8
08c0f834: ldur     x11, [x10, #-8]
08c0f838: cmp      x11, x1
08c0f83c: b.eq     #0x8c0f85c
08c0f840: subs     x9, x9, #1
08c0f844: add      x10, x10, #0x10
08c0f848: b.ne     #0x8c0f834
08c0f84c: mov      x0, x20
08c0f850: mov      w2, wzr
08c0f854: bl       #0x39a94f0
08c0f858: b        #0x8c0f868
08c0f85c: ldrsw    x9, [x10]
08c0f860: add      x8, x8, x9, lsl #4
08c0f864: add      x0, x8, #0x138
08c0f868: ldp      x8, x1, [x0]
08c0f86c: mov      x0, x20
08c0f870: blr      x8
08c0f874: mov      x21, x0
08c0f878: cbz      x0, #0x8c0f9f4
08c0f87c: ldr      x8, [x21]
08c0f880: ldr      x1, [x22]
08c0f884: ldrh     w9, [x8, #0x12e]
08c0f888: cbz      x9, #0x8c0f8ac
08c0f88c: ldr      x10, [x8, #0xb0]
08c0f890: add      x10, x10, #8
08c0f894: ldur     x11, [x10, #-8]
08c0f898: cmp      x11, x1
08c0f89c: b.eq     #0x8c0f8bc
08c0f8a0: subs     x9, x9, #1
08c0f8a4: add      x10, x10, #0x10
08c0f8a8: b.ne     #0x8c0f894
08c0f8ac: mov      w2, #1
08c0f8b0: mov      x0, x21
08c0f8b4: bl       #0x39a94f0
08c0f8b8: b        #0x8c0f8cc
08c0f8bc: ldr      w9, [x10]
08c0f8c0: add      w9, w9, #1
08c0f8c4: add      x8, x8, w9, sxtw #4
08c0f8c8: add      x0, x8, #0x138
08c0f8cc: ldp      x8, x1, [x0]
08c0f8d0: mov      x0, x21
08c0f8d4: blr      x8
08c0f8d8: cbz      x0, #0x8c0f9f8
08c0f8dc: mov      x1, xzr
08c0f8e0: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08c0f8e4: cbz      x0, #0x8c0f9f0
08c0f8e8: ldr      w8, [x0, #0x178]
08c0f8ec: ldr      w9, [x19, #0x80]
08c0f8f0: cmp      w8, w9
08c0f8f4: cinc     w23, w23, eq
08c0f8f8: b        #0x8c0f7c0
08c0f8fc: mov      x21, xzr
08c0f900: mov      w22, #0xa
08c0f904: cbz      x20, #0x8c0f968
08c0f908: adrp     x10, #0x9b3f000
08c0f90c: ldr      x8, [x20]
08c0f910: ldr      x10, [x10, #0xed8]
08c0f914: ldrh     w9, [x8, #0x12e]
08c0f918: ldr      x1, [x10]
08c0f91c: cbz      x9, #0x8c0f940
08c0f920: ldr      x10, [x8, #0xb0]
08c0f924: add      x10, x10, #8
08c0f928: ldur     x11, [x10, #-8]
08c0f92c: cmp      x11, x1
08c0f930: b.eq     #0x8c0f950
08c0f934: subs     x9, x9, #1
08c0f938: add      x10, x10, #0x10
08c0f93c: b.ne     #0x8c0f928
08c0f940: mov      x0, x20
08c0f944: mov      w2, wzr
08c0f948: bl       #0x39a94f0
08c0f94c: b        #0x8c0f95c
08c0f950: ldrsw    x9, [x10]
08c0f954: add      x8, x8, x9, lsl #4
08c0f958: add      x0, x8, #0x138
08c0f95c: ldp      x8, x1, [x0]
08c0f960: mov      x0, x20
08c0f964: blr      x8
08c0f968: cbnz     x21, #0x8c0fa00
08c0f96c: cmp      w22, #0xa
08c0f970: b.eq     #0x8c0f978
08c0f974: cbnz     w22, #0x8c0f70c
08c0f978: ldr      x8, [x19, #0x60]
08c0f97c: ldr      q0, [x19, #0x50]
08c0f980: add      x0, sp, #0x60
08c0f984: mov      x1, xzr
08c0f988: str      x8, [sp, #0x70]
08c0f98c: str      q0, [sp, #0x60]
08c0f990: bl       #0x3ac5138
08c0f994: mov      v8.16b, v0.16b
08c0f998: ldur     q0, [x19, #0x68]
08c0f99c: ldr      x8, [x19, #0x78]
08c0f9a0: add      x0, sp, #0x40
08c0f9a4: mov      x1, xzr
08c0f9a8: str      q0, [sp, #0x40]
08c0f9ac: str      x8, [sp, #0x50]
08c0f9b0: bl       #0x3ac5138
08c0f9b4: scvtf    s1, w23
08c0f9b8: fmul     s1, s8, s1
08c0f9bc: fcmp     s1, s0
08c0f9c0: fcsel    s0, s1, s0, mi
08c0f9c4: add      x8, sp, #8
08c0f9c8: mov      x0, xzr
08c0f9cc: bl       #0x3ac68b0
08c0f9d0: ldr      x8, [sp, #0x18]
08c0f9d4: ldur     q0, [sp, #8]
08c0f9d8: str      x8, [sp, #0x30]
08c0f9dc: str      q0, [sp, #0x20]
08c0f9e0: str      x8, [x19, #0x48]
08c0f9e4: stur     q0, [x19, #0x38]
08c0f9e8: b        #0x8c0f70c
08c0f9ec: bl       #0x39d36e4
08c0f9f0: bl       #0x39d36e4
08c0f9f4: bl       #0x39d36e4
08c0f9f8: bl       #0x39d36e4
08c0f9fc: bl       #0x39d36e4
08c0fa00: mov      x0, x21
08c0fa04: bl       #0x39d36dc
08c0fa08: mov      x22, x0
08c0fa0c: mov      w23, wzr
08c0fa10: b        #0x8c0fa30
08c0fa14: b        #0x8c0fa2c
08c0fa18: b        #0x8c0fa2c
08c0fa1c: b        #0x8c0fa2c
08c0fa20: b        #0x8c0fa2c
08c0fa24: b        #0x8c0fa2c
08c0fa28: b        #0x8c0fa2c
08c0fa2c: mov      x22, x0
08c0fa30: cmp      w1, #1
08c0fa34: b.ne     #0x8c0fa54
08c0fa38: mov      x0, x22
08c0fa3c: bl       #0x9749aa0
08c0fa40: ldr      x21, [x0]
08c0fa44: bl       #0x9749ab0
08c0fa48: mov      w22, wzr
08c0fa4c: cbnz     x20, #0x8c0f908
08c0fa50: b        #0x8c0f968
08c0fa54: mov      x21, xzr
08c0fa58: b        #0x8c0fa60
08c0fa5c: mov      x22, x0
08c0fa60: cbz      x20, #0x8c0fac4
08c0fa64: adrp     x10, #0x9b3f000
08c0fa68: ldr      x8, [x20]
08c0fa6c: ldr      x10, [x10, #0xed8]
08c0fa70: ldrh     w9, [x8, #0x12e]
08c0fa74: ldr      x1, [x10]
08c0fa78: cbz      x9, #0x8c0fa9c
08c0fa7c: ldr      x10, [x8, #0xb0]
08c0fa80: add      x10, x10, #8
08c0fa84: ldur     x11, [x10, #-8]
08c0fa88: cmp      x11, x1
08c0fa8c: b.eq     #0x8c0faac
08c0fa90: subs     x9, x9, #1
08c0fa94: add      x10, x10, #0x10
08c0fa98: b.ne     #0x8c0fa84
08c0fa9c: mov      x0, x20
08c0faa0: mov      w2, wzr
08c0faa4: bl       #0x39a94f0
08c0faa8: b        #0x8c0fab8
08c0faac: ldrsw    x9, [x10]
08c0fab0: add      x8, x8, x9, lsl #4
08c0fab4: add      x0, x8, #0x138
08c0fab8: ldp      x8, x1, [x0]
08c0fabc: mov      x0, x20
08c0fac0: blr      x8
08c0fac4: cbnz     x21, #0x8c0fad0
08c0fac8: mov      x0, x22
08c0facc: bl       #0x3ab82d0
08c0fad0: mov      x0, x21
08c0fad4: bl       #0x39d36dc
08c0fad8: bl       #0x35bb99c