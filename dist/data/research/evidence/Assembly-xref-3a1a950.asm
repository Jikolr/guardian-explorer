03a1a900: bl       #0x39a1dc0
03a1a904: mov      x0, x20
03a1a908: ldp      x20, x19, [sp, #0x20]
03a1a90c: ldp      x22, x21, [sp, #0x10]
03a1a910: ldr      x30, [sp], #0x30
03a1a914: ret      
03a1a918: mov      x19, x0
03a1a91c: add      x0, sp, #8
03a1a920: bl       #0x39a1dc0
03a1a924: mov      x0, x19
03a1a928: bl       #0x3ab82d0
03a1a92c: adrp     x8, #0xa286000
03a1a930: adrp     x9, #0xa286000
03a1a934: str      x0, [x8, #0x4a8]
03a1a938: str      x1, [x9, #0x4b0]
03a1a93c: ret      
03a1a940: stp      x30, x23, [sp, #-0x30]!
03a1a944: stp      x22, x21, [sp, #0x10]
03a1a948: stp      x20, x19, [sp, #0x20]
03a1a94c: mov      x21, x0
03a1a950: adrp     x0, #0x17a2000
03a1a954: add      x0, x0, #0xb72
03a1a958: mov      x20, x1
03a1a95c: bl       #0x39cf804
03a1a960: mov      x19, x0
03a1a964: adrp     x22, #0xa286000
03a1a968: str      x0, [x22, #0x4b8]
03a1a96c: cbz      x0, #0x3a1ab00
03a1a970: adrp     x23, #0xa286000
03a1a974: str      x19, [x23, #0x4c0]
03a1a978: ldrsw    x8, [x19, #0xac]
03a1a97c: mov      x9, #-0x3333333333333334
03a1a980: movk     x9, #0xcccd
03a1a984: adrp     x10, #0xa286000
03a1a988: umulh    x8, x8, x9
03a1a98c: lsr      x9, x8, #5
03a1a990: str      w9, [x21]
03a1a994: str      w9, [x10, #0x4c8]
03a1a998: ldr      w9, [x19, #0xb4]
03a1a99c: sbfx     x0, x8, #5, #0x20
03a1a9a0: mov      w1, #0x18
03a1a9a4: asr      w9, w9, #6
03a1a9a8: str      w9, [x20]
03a1a9ac: bl       #0x39a3794
03a1a9b0: adrp     x20, #0xa286000
03a1a9b4: ldr      x8, [x20, #0x4b0]
03a1a9b8: adrp     x9, #0xa286000
03a1a9bc: str      x0, [x9, #0x4d0]
03a1a9c0: mov      w1, #8
03a1a9c4: ldrsw    x0, [x8, #0x30]
03a1a9c8: bl       #0x39a3794
03a1a9cc: ldr      x8, [x23, #0x4c0]
03a1a9d0: adrp     x9, #0xa286000
03a1a9d4: str      x0, [x9, #0x4d8]
03a1a9d8: mov      x9, #0x8ba3
03a1a9dc: ldrsw    x8, [x8, #0xa4]
03a1a9e0: movk     x9, #0xba2e, lsl #16
03a1a9e4: movk     x9, #0xa2e8, lsl #32
03a1a9e8: movk     x9, #0x2e8b, lsl #48
03a1a9ec: umulh    x8, x8, x9
03a1a9f0: lsr      x0, x8, #4
03a1a9f4: mov      w1, #8
03a1a9f8: bl       #0x39a3794
03a1a9fc: ldr      x8, [x23, #0x4c0]
03a1aa00: adrp     x9, #0xa286000
03a1aa04: str      x0, [x9, #0x4e0]
03a1aa08: mov      x9, #0xe38f
03a1aa0c: ldrsw    x8, [x8, #0x34]
03a1aa10: movk     x9, #0x8e38, lsl #16
03a1aa14: movk     x9, #0x38e3, lsl #32
03a1aa18: movk     x9, #0xe38e, lsl #48
03a1aa1c: umulh    x8, x8, x9
03a1aa20: lsr      x0, x8, #5
03a1aa24: mov      w1, #8
03a1aa28: bl       #0x39a3794
03a1aa2c: ldr      x8, [x20, #0x4b0]
03a1aa30: adrp     x9, #0xa286000
03a1aa34: str      x0, [x9, #0x4a0]
03a1aa38: mov      w1, #8
03a1aa3c: ldrsw    x0, [x8, #0x40]
03a1aa40: bl       #0x39a3794
03a1aa44: ldr      x13, [x20, #0x4b0]
03a1aa48: adrp     x8, #0xa286000
03a1aa4c: str      x0, [x8, #0x4e8]
03a1aa50: ldr      w8, [x13, #0x30]
03a1aa54: cmp      w8, #1
03a1aa58: b.lt     #0x3a1ab00
03a1aa5c: mov      w10, #0x7ffe
03a1aa60: mov      x8, xzr
03a1aa64: mov      w9, #1
03a1aa68: movk     w10, #0x1346, lsl #16
03a1aa6c: mov      w11, #0x58
03a1aa70: mov      w12, #0x40080000
03a1aa74: ldr      x13, [x13, #0x38]
03a1aa78: ldr      x13, [x13, x8, lsl #3]
03a1aa7c: ldrb     w14, [x13, #0xa]
03a1aa80: cmp      w14, #0x1e
03a1aa84: b.hi     #0x3a1aaec
03a1aa88: lsl      w14, w9, w14
03a1aa8c: tst      w14, w10
03a1aa90: b.eq     #0x3a1aab8
03a1aa94: ldrsw    x14, [x13]
03a1aa98: cmn      w14, #1
03a1aa9c: b.eq     #0x3a1aae4
03a1aaa0: ldr      x15, [x23, #0x4c0]
03a1aaa4: ldr      x16, [x22, #0x4b8]
03a1aaa8: ldrsw    x15, [x15, #0xa0]
03a1aaac: add      x15, x16, x15
03a1aab0: madd     x14, x14, x11, x15
03a1aab4: b        #0x3a1aae8
03a1aab8: tst      w14, w12
03a1aabc: b.eq     #0x3a1aaec
03a1aac0: ldrsw    x14, [x13]
03a1aac4: cmn      w14, #1
03a1aac8: b.eq     #0x3a1aae4
03a1aacc: ldr      x15, [x23, #0x4c0]
03a1aad0: ldr      x16, [x22, #0x4b8]
03a1aad4: ldrsw    x15, [x15, #0x68]
03a1aad8: add      x15, x16, x15
03a1aadc: add      x14, x15, x14, lsl #4
03a1aae0: b        #0x3a1aae8
03a1aae4: mov      x14, xzr
03a1aae8: str      x14, [x13]
03a1aaec: ldr      x13, [x20, #0x4b0]
03a1aaf0: add      x8, x8, #1
03a1aaf4: ldrsw    x14, [x13, #0x30]
03a1aaf8: cmp      x8, x14
03a1aafc: b.lt     #0x3a1aa74
03a1ab00: cmp      x19, #0
03a1ab04: ldp      x20, x19, [sp, #0x20]
03a1ab08: ldp      x22, x21, [sp, #0x10]
03a1ab0c: cset     w0, ne
03a1ab10: ldp      x30, x23, [sp], #0x30
03a1ab14: ret      
03a1ab18: sub      sp, sp, #0x30
03a1ab1c: stp      x30, x21, [sp, #0x10]
03a1ab20: stp      x20, x19, [sp, #0x20]
03a1ab24: mov      x19, x0
03a1ab28: ldaxr    x0, [x19]
03a1ab2c: stlxr    w8, x0, [x19]
03a1ab30: cbnz     w8, #0x3a1ab28
03a1ab34: dmb      ish
03a1ab38: tbz      w0, #0, #0x3a1ac94
03a1ab3c: ubfx     x8, x0, #0x1d, #3
03a1ab40: sub      w8, w8, #1
03a1ab44: cmp      w8, #6
03a1ab48: b.hi     #0x3a1ab74
03a1ab4c: adrp     x9, #0x2015000
03a1ab50: add      x9, x9, #0xe42
03a1ab54: adr      x10, #0x3a1ab68
03a1ab58: ldrb     w11, [x9, x8]
03a1ab5c: add      x10, x10, x11, lsl #2
03a1ab60: ubfx     w8, w0, #1, #0x1c
03a1ab64: br       x10
03a1ab68: bl       #0x3a1ad7c
03a1ab6c: cbnz     x0, #0x3a1ac8c
03a1ab70: b        #0x3a1ac94
03a1ab74: mov      x0, xzr
03a1ab78: b        #0x3a1ac94
03a1ab7c: and      w1, w1, #1
03a1ab80: mov      w0, w8
03a1ab84: bl       #0x3a1acc8
03a1ab88: cbnz     x0, #0x3a1ac8c
03a1ab8c: b        #0x3a1ac94
03a1ab90: adrp     x9, #0xa286000
03a1ab94: ldr      x9, [x9, #0x4b0]
03a1ab98: ldr      x9, [x9, #0x38]
03a1ab9c: ldr      x0, [x9, w8, uxtw #3]
03a1aba0: cbnz     x0, #0x3a1ac8c
03a1aba4: b        #0x3a1ac94
03a1aba8: adrp     x9, #0xa286000
03a1abac: ldr      x9, [x9, #0x4c0]
03a1abb0: adrp     x10, #0xa286000
03a1abb4: ldr      x10, [x10, #0x4b8]
03a1abb8: mov      w1, #1
03a1abbc: ldrsw    x9, [x9, #0xb8]
03a1abc0: add      x9, x10, x9
03a1abc4: add      x20, x9, w8, uxtw #3
03a1abc8: ldr      w0, [x20]
03a1abcc: bl       #0x3a1acc8
03a1abd0: ldr      x8, [x0, #0x80]
03a1abd4: ldrsw    x9, [x20, #4]
03a1abd8: add      x0, x8, x9, lsl #5
03a1abdc: cbnz     x0, #0x3a1ac8c
03a1abe0: b        #0x3a1ac94
03a1abe4: adrp     x20, #0xa286000
03a1abe8: ldr      x9, [x20, #0x4f0]
03a1abec: ldr      x0, [x9, w8, uxtw #3]
03a1abf0: cbnz     x0, #0x3a1ac88
03a1abf4: adrp     x9, #0xa286000
03a1abf8: ldr      x9, [x9, #0x4c0]
03a1abfc: adrp     x10, #0xa286000
03a1ac00: ldr      x10, [x10, #0x4b8]
03a1ac04: mov      w21, w8
03a1ac08: ldrsw    x11, [x9, #8]
03a1ac0c: ldrsw    x9, [x9, #0x10]
03a1ac10: add      x8, x10, x11
03a1ac14: add      x8, x8, x21, lsl #3
03a1ac18: ldp      w1, w11, [x8]
03a1ac1c: add      x8, x10, x9