08c0fc7c: str      x30, [sp, #-0x30]!
08c0fc80: stp      x22, x21, [sp, #0x10]
08c0fc84: stp      x20, x19, [sp, #0x20]
08c0fc88: adrp     x22, #0xa279000
08c0fc8c: ldrb     w8, [x22, #0x652]
08c0fc90: mov      w19, w2
08c0fc94: mov      w21, w1
08c0fc98: mov      x20, x0
08c0fc9c: tbnz     w8, #0, #0x8c0fd08
08c0fca0: adrp     x0, #0x9b44000
08c0fca4: ldr      x0, [x0, #0xf68]
08c0fca8: bl       #0x39d34bc
08c0fcac: adrp     x0, #0x9b3f000
08c0fcb0: ldr      x0, [x0, #0xee0]
08c0fcb4: bl       #0x39d34bc
08c0fcb8: adrp     x0, #0x9b47000
08c0fcbc: ldr      x0, [x0, #0xa0]
08c0fcc0: bl       #0x39d34bc
08c0fcc4: adrp     x0, #0x9b5d000
08c0fcc8: ldr      x0, [x0, #0x1c8]
08c0fccc: bl       #0x39d34bc
08c0fcd0: adrp     x0, #0x9c44000
08c0fcd4: ldr      x0, [x0, #0xa98]
08c0fcd8: bl       #0x39d34bc
08c0fcdc: adrp     x0, #0x9c44000
08c0fce0: ldr      x0, [x0, #0xc48]
08c0fce4: bl       #0x39d34bc
08c0fce8: adrp     x0, #0x9c44000
08c0fcec: ldr      x0, [x0, #0xaa0]
08c0fcf0: bl       #0x39d34bc
08c0fcf4: adrp     x0, #0x9b6d000
08c0fcf8: ldr      x0, [x0, #0x10]
08c0fcfc: bl       #0x39d34bc
08c0fd00: mov      w8, #1
08c0fd04: strb     w8, [x22, #0x652]
08c0fd08: mov      w0, #0x44c4
08c0fd0c: mov      x1, xzr
08c0fd10: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0fd14: tbz      w0, #0, #0x8c0fd40
08c0fd18: mov      w0, #0x44c4
08c0fd1c: mov      x1, xzr
08c0fd20: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0fd24: cbz      x0, #0x8c0fe64
08c0fd28: and      w3, w19, #1
08c0fd2c: mov      x1, x20
08c0fd30: mov      w2, w21
08c0fd34: mov      x4, xzr
08c0fd38: bl       #0x86acec8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_2519
08c0fd3c: b        #0x8c0fe54
08c0fd40: cbz      x20, #0x8c0fe64
08c0fd44: adrp     x8, #0x9b47000
08c0fd48: ldr      x8, [x8, #0xa0]
08c0fd4c: ldr      x20, [x20, #0x40]
08c0fd50: ldr      x0, [x8]
08c0fd54: ldr      w8, [x0, #0xe0]
08c0fd58: cbnz     w8, #0x8c0fd60
08c0fd5c: bl       #0x39d35c4
08c0fd60: adrp     x8, #0x9c44000
08c0fd64: ldr      x8, [x8, #0xc48]
08c0fd68: fmov     s0, wzr
08c0fd6c: mov      x0, x20
08c0fd70: mov      x2, xzr
08c0fd74: ldr      x1, [x8]
08c0fd78: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08c0fd7c: adrp     x8, #0x9b44000
08c0fd80: ldr      x8, [x8, #0xf68]
08c0fd84: str      s0, [sp, #0xc]
08c0fd88: ldr      x0, [x8]
08c0fd8c: ldr      w8, [x0, #0xe0]
08c0fd90: cbnz     w8, #0x8c0fd98
08c0fd94: bl       #0x39d35c4
08c0fd98: mov      x0, xzr
08c0fd9c: bl       #0x6963ce8 ; GameStrings.get_Instance
08c0fda0: adrp     x8, #0x9c44000
08c0fda4: adrp     x9, #0x9c44000
08c0fda8: ldr      x8, [x8, #0xaa0]
08c0fdac: ldr      x9, [x9, #0xa98]
08c0fdb0: adrp     x10, #0x9b3f000
08c0fdb4: ldr      x10, [x10, #0xee0]
08c0fdb8: tst      w19, #1
08c0fdbc: csel     x8, x8, x9, ne
08c0fdc0: ldr      x19, [x8]
08c0fdc4: ldr      x8, [x10]
08c0fdc8: mov      x20, x0
08c0fdcc: mov      w1, #1
08c0fdd0: mov      x0, x8
08c0fdd4: bl       #0x39d3534
08c0fdd8: adrp     x8, #0x9b6d000
08c0fddc: ldr      x8, [x8, #0x10]
08c0fde0: mov      x21, x0
08c0fde4: add      x0, sp, #0xc
08c0fde8: mov      x2, xzr
08c0fdec: ldr      x1, [x8]
08c0fdf0: bl       #0x5c6b7b4
08c0fdf4: adrp     x8, #0x9b5d000
08c0fdf8: ldr      x8, [x8, #0x1c8]
08c0fdfc: mov      x1, x0
08c0fe00: mov      x2, xzr
08c0fe04: ldr      x8, [x8]
08c0fe08: mov      x0, x8
08c0fe0c: bl       #0x5ab2818
08c0fe10: cbz      x21, #0x8c0fe64
08c0fe14: mov      x22, x0
08c0fe18: cbz      x0, #0x8c0fe30
08c0fe1c: ldr      x8, [x21]
08c0fe20: mov      x0, x22
08c0fe24: ldr      x1, [x8, #0x40]
08c0fe28: bl       #0x39d35c8
08c0fe2c: cbz      x0, #0x8c0fe6c
08c0fe30: ldr      w8, [x21, #0x18]
08c0fe34: cbz      w8, #0x8c0fe68
08c0fe38: str      x22, [x21, #0x20]
08c0fe3c: cbz      x20, #0x8c0fe64
08c0fe40: mov      x0, x20
08c0fe44: mov      x1, x19
08c0fe48: mov      x2, x21
08c0fe4c: mov      x3, xzr
08c0fe50: bl       #0x69673dc ; GameStrings.Format
08c0fe54: ldp      x20, x19, [sp, #0x20]
08c0fe58: ldp      x22, x21, [sp, #0x10]
08c0fe5c: ldr      x30, [sp], #0x30
08c0fe60: ret      
08c0fe64: bl       #0x39d36e4
08c0fe68: bl       #0x39d36ec
08c0fe6c: bl       #0x39d3708
08c0fe70: mov      x1, xzr
08c0fe74: bl       #0x39d35b4