03ba988c: sub      sp, sp, #0x60
03ba9890: str      x30, [sp, #0x20]
03ba9894: stp      x24, x23, [sp, #0x30]
03ba9898: stp      x22, x21, [sp, #0x40]
03ba989c: stp      x20, x19, [sp, #0x50]
03ba98a0: adrp     x22, #0xa25e000
03ba98a4: ldrb     w8, [x22, #0x22c]
03ba98a8: mov      x21, x2
03ba98ac: mov      x19, x1
03ba98b0: mov      x20, x0
03ba98b4: tbnz     w8, #0, #0x3ba9914
03ba98b8: adrp     x0, #0x9b45000
03ba98bc: ldr      x0, [x0, #0x9c0]
03ba98c0: bl       #0x39d34bc
03ba98c4: adrp     x0, #0x9b45000
03ba98c8: ldr      x0, [x0, #0x9c8]
03ba98cc: bl       #0x39d34bc
03ba98d0: adrp     x0, #0x9b45000
03ba98d4: ldr      x0, [x0, #0x9d0]
03ba98d8: bl       #0x39d34bc
03ba98dc: adrp     x0, #0x9b40000
03ba98e0: ldr      x0, [x0, #0xd78]
03ba98e4: bl       #0x39d34bc
03ba98e8: adrp     x0, #0x9b45000
03ba98ec: ldr      x0, [x0, #0x9d8]
03ba98f0: bl       #0x39d34bc
03ba98f4: adrp     x0, #0x9b45000
03ba98f8: ldr      x0, [x0, #0x9e0]
03ba98fc: bl       #0x39d34bc
03ba9900: adrp     x0, #0x9b45000
03ba9904: ldr      x0, [x0, #0x9e8]
03ba9908: bl       #0x39d34bc
03ba990c: mov      w8, #1
03ba9910: strb     w8, [x22, #0x22c]
03ba9914: mov      w0, #0x497
03ba9918: mov      x1, xzr
03ba991c: stp      xzr, xzr, [sp, #8]
03ba9920: str      xzr, [sp, #0x18]
03ba9924: bl       #0x3bd8b58
03ba9928: tbz      w0, #0, #0x3ba9954
03ba992c: mov      w0, #0x497
03ba9930: mov      x1, xzr
03ba9934: bl       #0x3bd8adc
03ba9938: cbz      x0, #0x3ba9ae8
03ba993c: mov      x1, x20
03ba9940: mov      x2, x19
03ba9944: mov      x3, x21
03ba9948: mov      x4, xzr
03ba994c: bl       #0x3bcd81c
03ba9950: b        #0x3ba9ad0
03ba9954: mov      x0, x19
03ba9958: mov      x1, xzr
03ba995c: bl       #0x3bc85cc
03ba9960: adrp     x22, #0xa25e000
03ba9964: ldrb     w8, [x22, #0x1bb]
03ba9968: mov      x21, x0
03ba996c: cbnz     w8, #0x3ba9984
03ba9970: adrp     x0, #0x9b45000
03ba9974: ldr      x0, [x0, #0x6c8]
03ba9978: bl       #0x39d34bc
03ba997c: mov      w8, #1
03ba9980: strb     w8, [x22, #0x1bb]
03ba9984: adrp     x8, #0x9b45000
03ba9988: ldr      x8, [x8, #0x6c8]
03ba998c: ldr      x8, [x8]
03ba9990: ldr      x8, [x8, #0xb8]
03ba9994: ldr      x8, [x8]
03ba9998: cbz      x8, #0x3ba9ae8
03ba999c: ldr      x0, [x8, #0xe8]
03ba99a0: cbz      x0, #0x3ba9ae8
03ba99a4: mov      x1, x21
03ba99a8: mov      w2, wzr
03ba99ac: mov      x3, xzr
03ba99b0: bl       #0x8b72e0c
03ba99b4: cbz      x0, #0x3ba9ad0
03ba99b8: adrp     x9, #0x9b40000
03ba99bc: ldr      x22, [x20, #0xc0]
03ba99c0: ldr      w8, [x0, #0x18]
03ba99c4: ldr      x9, [x9, #0xd78]
03ba99c8: mov      x21, x0
03ba99cc: add      x1, sp, #0x2c
03ba99d0: str      w8, [sp, #0x2c]
03ba99d4: ldr      x0, [x9]
03ba99d8: bl       #0x39d35cc
03ba99dc: cbz      x19, #0x3ba9ae8
03ba99e0: mov      x2, x0
03ba99e4: mov      x0, x19
03ba99e8: mov      x1, x22
03ba99ec: mov      x3, xzr
03ba99f0: bl       #0x9402c08
03ba99f4: ldr      w8, [x21, #0x18]
03ba99f8: cmp      w8, #1
03ba99fc: b.lt     #0x3ba9ad0
03ba9a00: mov      x0, x19
03ba9a04: mov      x1, xzr
03ba9a08: bl       #0x9401b94
03ba9a0c: adrp     x8, #0x9b45000
03ba9a10: ldr      x8, [x8, #0x9d8]
03ba9a14: mov      x22, x0
03ba9a18: mov      x0, x21
03ba9a1c: ldr      x1, [x8]
03ba9a20: add      x8, sp, #8
03ba9a24: bl       #0x474997c
03ba9a28: adrp     x24, #0x9b45000
03ba9a2c: ldr      x24, [x24, #0x9c8]
03ba9a30: ldr      x1, [x24]
03ba9a34: add      x0, sp, #8
03ba9a38: bl       #0x5750e8c
03ba9a3c: tbz      w0, #0, #0x3ba9a88
03ba9a40: ldr      x0, [sp, #0x18]
03ba9a44: ldr      x23, [x20, #0xc8]
03ba9a48: mov      x1, xzr
03ba9a4c: bl       #0x3bc5d10
03ba9a50: mov      x2, x0
03ba9a54: mov      x0, x19
03ba9a58: mov      x1, x23
03ba9a5c: mov      x3, xzr
03ba9a60: bl       #0x9402c08
03ba9a64: ldr      x1, [x20, #0xb0]
03ba9a68: mov      x0, x19
03ba9a6c: mov      x2, xzr
03ba9a70: bl       #0x9401eb8
03ba9a74: mov      x0, x19
03ba9a78: mov      x1, x22
03ba9a7c: mov      x2, xzr
03ba9a80: bl       #0x9401c08
03ba9a84: b        #0x3ba9a30
03ba9a88: adrp     x8, #0x9b45000
03ba9a8c: ldr      x8, [x8, #0x9c0]
03ba9a90: add      x0, sp, #8
03ba9a94: ldr      x1, [x8]
03ba9a98: bl       #0x5750e88
03ba9a9c: mov      x0, x19
03ba9aa0: mov      x1, x22
03ba9aa4: mov      x2, xzr
03ba9aa8: bl       #0x9401c28
03ba9aac: ldr      x1, [x20, #0xb8]
03ba9ab0: mov      x0, x19
03ba9ab4: mov      x2, xzr
03ba9ab8: bl       #0x9401eb8
03ba9abc: adrp     x8, #0x9b45000
03ba9ac0: ldr      x8, [x8, #0x9e8]
03ba9ac4: mov      x0, x21
03ba9ac8: ldr      x1, [x8]
03ba9acc: bl       #0x4c06500
03ba9ad0: ldp      x20, x19, [sp, #0x50]
03ba9ad4: ldp      x22, x21, [sp, #0x40]
03ba9ad8: ldp      x24, x23, [sp, #0x30]
03ba9adc: ldr      x30, [sp, #0x20]
03ba9ae0: add      sp, sp, #0x60
03ba9ae4: ret      
03ba9ae8: bl       #0x39d36e4
03ba9aec: b        #0x3ba9af8
03ba9af0: b        #0x3ba9af8
03ba9af4: b        #0x3ba9af8
03ba9af8: mov      x23, x0
03ba9afc: cmp      w1, #1
03ba9b00: b.ne     #0x3ba9b34
03ba9b04: mov      x0, x23
03ba9b08: bl       #0x9749aa0
03ba9b0c: ldr      x24, [x0]
03ba9b10: bl       #0x9749ab0
03ba9b14: adrp     x8, #0x9b45000
03ba9b18: ldr      x8, [x8, #0x9c0]
03ba9b1c: add      x0, sp, #8
03ba9b20: ldr      x1, [x8]
03ba9b24: bl       #0x5750e88
03ba9b28: cbz      x24, #0x3ba9a9c
03ba9b2c: mov      x0, x24
03ba9b30: bl       #0x39d36dc
03ba9b34: mov      x24, xzr
03ba9b38: b        #0x3ba9b40
03ba9b3c: mov      x23, x0
03ba9b40: adrp     x8, #0x9b45000
03ba9b44: ldr      x8, [x8, #0x9c0]
03ba9b48: ldr      x1, [x8]
03ba9b4c: add      x0, sp, #8
03ba9b50: bl       #0x5750e88
03ba9b54: cbnz     x24, #0x3ba9b60
03ba9b58: mov      x0, x23
03ba9b5c: bl       #0x3ab82d0
03ba9b60: mov      x0, x24
03ba9b64: bl       #0x39d36dc
03ba9b68: bl       #0x35bb99c