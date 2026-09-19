06cab818: sub      sp, sp, #0xb0
06cab81c: str      x30, [sp, #0x60]
06cab820: stp      x26, x25, [sp, #0x70]
06cab824: stp      x24, x23, [sp, #0x80]
06cab828: stp      x22, x21, [sp, #0x90]
06cab82c: stp      x20, x19, [sp, #0xa0]
06cab830: adrp     x20, #0xa26b000
06cab834: ldrb     w8, [x20, #0xcb8]
06cab838: mov      x19, x0
06cab83c: tbnz     w8, #0, #0x6cab8a8
06cab840: adrp     x0, #0x9b9d000
06cab844: ldr      x0, [x0, #0x3c8]
06cab848: bl       #0x39d34bc
06cab84c: adrp     x0, #0x9b9d000
06cab850: ldr      x0, [x0, #0x3d0]
06cab854: bl       #0x39d34bc
06cab858: adrp     x0, #0x9b9d000
06cab85c: ldr      x0, [x0, #0x3d8]
06cab860: bl       #0x39d34bc
06cab864: adrp     x0, #0x9b9d000
06cab868: ldr      x0, [x0, #0x3e0]
06cab86c: bl       #0x39d34bc
06cab870: adrp     x0, #0x9b9d000
06cab874: ldr      x0, [x0, #0x3e8]
06cab878: bl       #0x39d34bc
06cab87c: adrp     x0, #0x9b9d000
06cab880: ldr      x0, [x0, #0x3f0]
06cab884: bl       #0x39d34bc
06cab888: adrp     x0, #0x9b91000
06cab88c: ldr      x0, [x0, #0x508]
06cab890: bl       #0x39d34bc
06cab894: adrp     x0, #0x9b79000
06cab898: ldr      x0, [x0, #0x400]
06cab89c: bl       #0x39d34bc
06cab8a0: mov      w8, #1
06cab8a4: strb     w8, [x20, #0xcb8]
06cab8a8: movi     v0.2d, #0000000000000000
06cab8ac: mov      w0, #0x9b92
06cab8b0: mov      x1, xzr
06cab8b4: str      xzr, [sp, #0x50]
06cab8b8: stp      q0, q0, [sp, #0x30]
06cab8bc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06cab8c0: tbz      w0, #0, #0x6cab8e4
06cab8c4: mov      w0, #0x9b92
06cab8c8: mov      x1, xzr
06cab8cc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06cab8d0: cbz      x0, #0x6caba44
06cab8d4: mov      x1, x19
06cab8d8: mov      x2, xzr
06cab8dc: bl       #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
06cab8e0: b        #0x6caba1c
06cab8e4: ldr      x0, [x19, #0x38]
06cab8e8: cbz      x0, #0x6caba44
06cab8ec: adrp     x8, #0x9b9d000
06cab8f0: ldr      x8, [x8, #0x3c8]
06cab8f4: ldr      x1, [x8]
06cab8f8: add      x8, sp, #8
06cab8fc: bl       #0x5553ee0
06cab900: ldur     q0, [sp, #8]
06cab904: ldur     q1, [sp, #0x18]
06cab908: ldr      x8, [sp, #0x28]
06cab90c: adrp     x23, #0x9b9d000
06cab910: adrp     x20, #0x9b91000
06cab914: ldr      x23, [x23, #0x3d8]
06cab918: ldr      x20, [x20, #0x508]
06cab91c: stp      q0, q1, [sp, #0x30]
06cab920: str      x8, [sp, #0x50]
06cab924: adrp     x26, #0x9b79000
06cab928: ldr      x26, [x26, #0x400]
06cab92c: adrp     x24, #0xa268000
06cab930: mov      w25, #1
06cab934: ldr      x1, [x23]
06cab938: add      x0, sp, #0x30
06cab93c: bl       #0x57f51c8
06cab940: tbz      w0, #0, #0x6caba08
06cab944: ldr      x0, [x20]
06cab948: ldp      x22, x21, [sp, #0x40]
06cab94c: ldr      w8, [x0, #0xe0]
06cab950: cbnz     w8, #0x6cab958
06cab954: bl       #0x39d35c4
06cab958: ldrb     w8, [x24, #0x531]
06cab95c: cbnz     w8, #0x6cab96c
06cab960: mov      x0, x20
06cab964: bl       #0x39d34bc
06cab968: strb     w25, [x24, #0x531]
06cab96c: ldr      x0, [x20]
06cab970: ldr      w8, [x0, #0xe0]
06cab974: cbnz     w8, #0x6cab980
06cab978: bl       #0x39d35c4
06cab97c: ldr      x0, [x20]
06cab980: ldr      x8, [x0, #0xb8]
06cab984: ldr      x0, [x8]
06cab988: cbz      x0, #0x6caba38
06cab98c: mov      x1, x22
06cab990: mov      x2, xzr
06cab994: bl       #0x6766984 ; Oak.KnowledgeProgress.GetItemMasteryMaxLevel
06cab998: mov      w1, w0
06cab99c: tbnz     w1, #0x1f, #0x6cab934
06cab9a0: mov      w0, w21
06cab9a4: mov      x2, xzr
06cab9a8: bl       #0x66da708 ; Oak.OptionManager.CreateOption
06cab9ac: mov      x1, x0
06cab9b0: ldr      x0, [x19, #0x20]
06cab9b4: cbz      x0, #0x6caba40
06cab9b8: ldr      w10, [x0, #0x1c]
06cab9bc: ldr      x8, [x0, #0x10]
06cab9c0: ldr      x9, [x26]
06cab9c4: add      w10, w10, #1
06cab9c8: str      w10, [x0, #0x1c]
06cab9cc: cbz      x8, #0x6caba3c
06cab9d0: ldrsw    x10, [x0, #0x18]
06cab9d4: ldr      w11, [x8, #0x18]
06cab9d8: cmp      w10, w11
06cab9dc: b.hs     #0x6cab9f4
06cab9e0: add      w9, w10, #1
06cab9e4: add      x8, x8, x10, lsl #3
06cab9e8: str      w9, [x0, #0x18]
06cab9ec: str      x1, [x8, #0x20]
06cab9f0: b        #0x6cab934
06cab9f4: ldr      x8, [x9, #0x20]
06cab9f8: ldr      x8, [x8, #0xc0]
06cab9fc: ldr      x2, [x8, #0x70]
06caba00: bl       #0x4748d50
06caba04: b        #0x6cab934
06caba08: adrp     x8, #0x9b9d000
06caba0c: ldr      x8, [x8, #0x3d0]
06caba10: add      x0, sp, #0x30
06caba14: ldr      x1, [x8]
06caba18: bl       #0x57f52e0
06caba1c: ldp      x20, x19, [sp, #0xa0]
06caba20: ldp      x22, x21, [sp, #0x90]
06caba24: ldp      x24, x23, [sp, #0x80]
06caba28: ldp      x26, x25, [sp, #0x70]
06caba2c: ldr      x30, [sp, #0x60]
06caba30: add      sp, sp, #0xb0
06caba34: ret      
06caba38: bl       #0x39d36e4
06caba3c: bl       #0x39d36e4
06caba40: bl       #0x39d36e4
06caba44: bl       #0x39d36e4
06caba48: b        #0x6caba64
06caba4c: b        #0x6caba64
06caba50: b        #0x6caba64
06caba54: b        #0x6caba64
06caba58: b        #0x6caba64
06caba5c: b        #0x6caba64
06caba60: b        #0x6caba64
06caba64: mov      x19, x0
06caba68: cmp      w1, #1
06caba6c: b.ne     #0x6cabaa0
06caba70: mov      x0, x19
06caba74: bl       #0x9749aa0
06caba78: ldr      x20, [x0]
06caba7c: bl       #0x9749ab0
06caba80: adrp     x8, #0x9b9d000
06caba84: ldr      x8, [x8, #0x3d0]
06caba88: add      x0, sp, #0x30
06caba8c: ldr      x1, [x8]
06caba90: bl       #0x57f52e0
06caba94: cbz      x20, #0x6caba1c
06caba98: mov      x0, x20
06caba9c: bl       #0x39d36dc
06cabaa0: mov      x20, xzr
06cabaa4: b        #0x6cabaac
06cabaa8: mov      x19, x0
06cabaac: adrp     x8, #0x9b9d000
06cabab0: ldr      x8, [x8, #0x3d0]
06cabab4: ldr      x1, [x8]
06cabab8: add      x0, sp, #0x30
06cababc: bl       #0x57f52e0
06cabac0: cbnz     x20, #0x6cabacc
06cabac4: mov      x0, x19
06cabac8: bl       #0x3ab82d0
06cabacc: mov      x0, x20
06cabad0: bl       #0x39d36dc
06cabad4: bl       #0x35bb99c