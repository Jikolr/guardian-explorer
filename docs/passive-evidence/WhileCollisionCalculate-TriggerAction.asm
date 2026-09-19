03ba9e70: sub      sp, sp, #0xa0
03ba9e74: str      d10, [sp, #0x40]
03ba9e78: stp      d9, d8, [sp, #0x48]
03ba9e7c: str      x30, [sp, #0x58]
03ba9e80: stp      x26, x25, [sp, #0x60]
03ba9e84: stp      x24, x23, [sp, #0x70]
03ba9e88: stp      x22, x21, [sp, #0x80]
03ba9e8c: stp      x20, x19, [sp, #0x90]
03ba9e90: adrp     x20, #0xa25e000
03ba9e94: ldrb     w8, [x20, #0x22e]
03ba9e98: mov      x21, x1
03ba9e9c: mov      x19, x0
03ba9ea0: tbnz     w8, #0, #0x3ba9f30
03ba9ea4: adrp     x0, #0x9b45000
03ba9ea8: ldr      x0, [x0, #0x9c0]
03ba9eac: bl       #0x39d34bc
03ba9eb0: adrp     x0, #0x9b45000
03ba9eb4: ldr      x0, [x0, #0x9c8]
03ba9eb8: bl       #0x39d34bc
03ba9ebc: adrp     x0, #0x9b45000
03ba9ec0: ldr      x0, [x0, #0x9d0]
03ba9ec4: bl       #0x39d34bc
03ba9ec8: adrp     x0, #0x9b45000
03ba9ecc: ldr      x0, [x0, #0xe68]
03ba9ed0: bl       #0x39d34bc
03ba9ed4: adrp     x0, #0x9b44000
03ba9ed8: ldr      x0, [x0, #0xd98]
03ba9edc: bl       #0x39d34bc
03ba9ee0: adrp     x0, #0x9b45000
03ba9ee4: ldr      x0, [x0, #0x160]
03ba9ee8: bl       #0x39d34bc
03ba9eec: adrp     x0, #0x9b3f000
03ba9ef0: ldr      x0, [x0, #0xed8]
03ba9ef4: bl       #0x39d34bc
03ba9ef8: adrp     x0, #0x9b40000
03ba9efc: ldr      x0, [x0, #0xd78]
03ba9f00: bl       #0x39d34bc
03ba9f04: adrp     x0, #0x9b45000
03ba9f08: ldr      x0, [x0, #0x9d8]
03ba9f0c: bl       #0x39d34bc
03ba9f10: adrp     x0, #0x9b45000
03ba9f14: ldr      x0, [x0, #0x9e0]
03ba9f18: bl       #0x39d34bc
03ba9f1c: adrp     x0, #0x9b45000
03ba9f20: ldr      x0, [x0, #0x68]
03ba9f24: bl       #0x39d34bc
03ba9f28: mov      w8, #1
03ba9f2c: strb     w8, [x20, #0x22e]
03ba9f30: mov      w0, #0x49d
03ba9f34: mov      x1, xzr
03ba9f38: stp      xzr, xzr, [sp, #0x20]
03ba9f3c: str      xzr, [sp, #0x30]
03ba9f40: bl       #0x3bd8b58
03ba9f44: tbz      w0, #0, #0x3ba9f6c
03ba9f48: mov      w0, #0x49d
03ba9f4c: mov      x1, xzr
03ba9f50: bl       #0x3bd8adc
03ba9f54: cbz      x0, #0x3baa32c
03ba9f58: mov      x1, x19
03ba9f5c: mov      x2, x21
03ba9f60: mov      x3, xzr
03ba9f64: bl       #0x3bc68f4
03ba9f68: b        #0x3baa308
03ba9f6c: cbz      x21, #0x3baa32c
03ba9f70: adrp     x8, #0x9b45000
03ba9f74: ldr      x1, [x19, #0xb0]
03ba9f78: ldr      x8, [x8, #0xe68]
03ba9f7c: mov      x0, x21
03ba9f80: ldr      x2, [x8]
03ba9f84: bl       #0x4056cc4
03ba9f88: cbz      x0, #0x3baa32c
03ba9f8c: ldr      x20, [x0, #0x18]
03ba9f90: cbz      x20, #0x3baa32c
03ba9f94: ldrb     w8, [x20, #0x48]
03ba9f98: cbz      w8, #0x3baa304
03ba9f9c: mov      x0, x21
03ba9fa0: mov      x1, xzr
03ba9fa4: bl       #0x3bc69ec
03ba9fa8: ldr      x8, [x19, #0xb8]
03ba9fac: cbz      x8, #0x3baa32c
03ba9fb0: adrp     x23, #0x9b45000
03ba9fb4: ldr      x23, [x23, #0x68]
03ba9fb8: mov      x22, x0
03ba9fbc: mov      x0, x8
03ba9fc0: ldr      x1, [x23]
03ba9fc4: bl       #0x4f91f08
03ba9fc8: tbz      w0, #0, #0x3ba9ff0
03ba9fcc: adrp     x8, #0x9b44000
03ba9fd0: ldr      x1, [x19, #0xb8]
03ba9fd4: ldr      x8, [x8, #0xd98]
03ba9fd8: mov      x0, x21
03ba9fdc: ldr      x2, [x8]
03ba9fe0: bl       #0x4057104
03ba9fe4: mov      x0, x20
03ba9fe8: mov      x1, xzr
03ba9fec: bl       #0x8b39468
03ba9ff0: ldr      x0, [x19, #0xc0]
03ba9ff4: cbz      x0, #0x3baa32c
03ba9ff8: ldr      x1, [x23]
03ba9ffc: bl       #0x4f91f08
03baa000: tbz      w0, #0, #0x3baa0dc
03baa004: adrp     x8, #0x9b44000
03baa008: ldr      x1, [x19, #0xc0]
03baa00c: b        #0x9748a50
03baa010: mov      x0, x21
03baa014: ldr      x2, [x8]
03baa018: bl       #0x4057104
03baa01c: adrp     x23, #0xa25d000
03baa020: ldrb     w8, [x23, #0xc68]
03baa024: mov      v8.16b, v0.16b
03baa028: mov      v9.16b, v1.16b
03baa02c: mov      v10.16b, v2.16b
03baa030: cbnz     w8, #0x3baa048
03baa034: adrp     x0, #0x9b3f000
03baa038: ldr      x0, [x0, #0xac0]
03baa03c: bl       #0x39d34bc
03baa040: mov      w8, #1
03baa044: strb     w8, [x23, #0xc68]
03baa048: adrp     x8, #0x9b3f000
03baa04c: ldr      x8, [x8, #0xac0]
03baa050: ldr      x0, [x8]
03baa054: ldr      w8, [x0, #0xe0]
03baa058: cbnz     w8, #0x3baa060
03baa05c: bl       #0x39d35c4
03baa060: fmul     s0, s8, s8
03baa064: fmul     s1, s9, s9
03baa068: adrp     x8, #0x176b000
03baa06c: fadd     s0, s0, s1
03baa070: ldr      s1, [x8, #0x488]
03baa074: fmul     s2, s10, s10
03baa078: fadd     s0, s2, s0
03baa07c: fsqrt    s2, s0
03baa080: fcmp     s2, s1
03baa084: b.le     #0x3baa098
03baa088: fdiv     s0, s8, s2
03baa08c: fdiv     s1, s9, s2
03baa090: fdiv     s2, s10, s2
03baa094: b        #0x3baa0d0
03baa098: adrp     x23, #0xa25d000
03baa09c: ldrb     w8, [x23, #0x69a]
03baa0a0: cbnz     w8, #0x3baa0b8
03baa0a4: adrp     x0, #0x9b3f000
03baa0a8: ldr      x0, [x0, #0x908]
03baa0ac: bl       #0x39d34bc
03baa0b0: mov      w8, #1
03baa0b4: strb     w8, [x23, #0x69a]
03baa0b8: adrp     x8, #0x9b3f000
03baa0bc: ldr      x8, [x8, #0x908]
03baa0c0: ldr      x8, [x8]
03baa0c4: ldr      x8, [x8, #0xb8]
03baa0c8: ldp      s0, s1, [x8]
03baa0cc: ldr      s2, [x8, #8]
03baa0d0: mov      x0, x20
03baa0d4: mov      x1, xzr
03baa0d8: bl       #0x8b49340
03baa0dc: cbz      x22, #0x3baa32c
03baa0e0: adrp     x10, #0x9b45000
03baa0e4: ldr      x8, [x22]
03baa0e8: ldr      x10, [x10, #0x160]
03baa0ec: ldrh     w9, [x8, #0x12e]
03baa0f0: ldr      x1, [x10]
03baa0f4: cbz      x9, #0x3baa118
03baa0f8: ldr      x10, [x8, #0xb0]
03baa0fc: add      x10, x10, #8
03baa100: ldur     x11, [x10, #-8]
03baa104: cmp      x11, x1
03baa108: b.eq     #0x3baa128
03baa10c: subs     x9, x9, #1
03baa110: add      x10, x10, #0x10
03baa114: b.ne     #0x3baa100
03baa118: mov      w2, #2
03baa11c: mov      x0, x22
03baa120: bl       #0x39a94f0
03baa124: b        #0x3baa138
03baa128: ldr      w9, [x10]
03baa12c: add      w9, w9, #2
03baa130: add      x8, x8, w9, sxtw #4
03baa134: add      x0, x8, #0x138
03baa138: ldp      x8, x1, [x0]
03baa13c: mov      x0, x22
03baa140: blr      x8
03baa144: mov      x0, x20
03baa148: mov      x1, xzr
03baa14c: bl       #0x8b3d0c8
03baa150: mov      x22, x0
03baa154: cbz      x0, #0x3baa330
03baa158: adrp     x9, #0x9b40000
03baa15c: ldr      x23, [x19, #0xc8]
03baa160: ldr      w8, [x22, #0x18]
03baa164: ldr      x9, [x9, #0xd78]
03baa168: str      w8, [sp, #0x1c]
03baa16c: ldr      x0, [x9]
03baa170: add      x1, sp, #0x1c
03baa174: bl       #0x39d35cc
03baa178: mov      x2, x0
03baa17c: mov      x0, x21
03baa180: mov      x1, x23
03baa184: mov      x3, xzr
03baa188: bl       #0x9402c08
03baa18c: mov      x0, x21
03baa190: mov      x1, xzr
03baa194: bl       #0x9401b94
03baa198: adrp     x8, #0x9b45000
03baa19c: ldr      x8, [x8, #0x9d8]
03baa1a0: mov      x24, x0
03baa1a4: ldr      x1, [x8]
03baa1a8: mov      x8, sp
03baa1ac: mov      x0, x22
03baa1b0: bl       #0x474997c
03baa1b4: ldr      q0, [sp]
03baa1b8: ldr      x8, [sp, #0x10]
03baa1bc: adrp     x25, #0x9b45000
03baa1c0: str      q0, [sp, #0x20]
03baa1c4: str      x8, [sp, #0x30]
03baa1c8: ldr      x25, [x25, #0x9c8]
03baa1cc: ldr      x1, [x25]
03baa1d0: add      x0, sp, #0x20
03baa1d4: bl       #0x5750e8c
03baa1d8: tbz      w0, #0, #0x3baa224
03baa1dc: ldr      x0, [sp, #0x30]
03baa1e0: ldr      x23, [x19, #0xd0]
03baa1e4: mov      x1, xzr
03baa1e8: bl       #0x3bc5d10
03baa1ec: mov      x2, x0
03baa1f0: mov      x0, x21
03baa1f4: mov      x1, x23
03baa1f8: mov      x3, xzr
03baa1fc: bl       #0x9402c08
03baa200: ldr      x1, [x19, #0xa0]
03baa204: mov      x0, x21
03baa208: mov      x2, xzr
03baa20c: bl       #0x9401eb8
03baa210: mov      x0, x21
03baa214: mov      x1, x24
03baa218: mov      x2, xzr
03baa21c: bl       #0x9401c08
03baa220: b        #0x3baa1cc
03baa224: mov      x23, xzr
03baa228: adrp     x8, #0x9b45000
03baa22c: ldr      x8, [x8, #0x9c0]
03baa230: ldr      x1, [x8]
03baa234: add      x0, sp, #0x20
03baa238: bl       #0x5750e88
03baa23c: cbnz     x23, #0x3baa33c
03baa240: mov      x0, x21
03baa244: mov      x1, x24
03baa248: mov      x2, xzr
03baa24c: bl       #0x9401c28
03baa250: ldr      w8, [x22, #0x18]
03baa254: cmp      w8, #1
03baa258: b.lt     #0x3baa26c
03baa25c: ldr      x1, [x19, #0xa8]
03baa260: mov      x0, x21
03baa264: mov      x2, xzr
03baa268: bl       #0x9401eb8
03baa26c: mov      x21, xzr
03baa270: mov      w23, #0xa
03baa274: cbz      x22, #0x3baa2d8
03baa278: adrp     x10, #0x9b3f000
03baa27c: ldr      x8, [x22]
03baa280: ldr      x10, [x10, #0xed8]
03baa284: ldrh     w9, [x8, #0x12e]
03baa288: ldr      x1, [x10]
03baa28c: cbz      x9, #0x3baa2b0
03baa290: ldr      x10, [x8, #0xb0]
03baa294: add      x10, x10, #8
03baa298: ldur     x11, [x10, #-8]
03baa29c: cmp      x11, x1
03baa2a0: b.eq     #0x3baa2c0
03baa2a4: subs     x9, x9, #1
03baa2a8: add      x10, x10, #0x10
03baa2ac: b.ne     #0x3baa298
03baa2b0: mov      x0, x22
03baa2b4: mov      w2, wzr
03baa2b8: bl       #0x39a94f0
03baa2bc: b        #0x3baa2cc
03baa2c0: ldrsw    x9, [x10]
03baa2c4: add      x8, x8, x9, lsl #4
03baa2c8: add      x0, x8, #0x138
03baa2cc: ldp      x8, x1, [x0]
03baa2d0: mov      x0, x22
03baa2d4: blr      x8
03baa2d8: cbnz     x21, #0x3baa334
03baa2dc: cmp      w23, #0xa
03baa2e0: b.eq     #0x3baa2e8
03baa2e4: cbnz     w23, #0x3baa308
03baa2e8: mov      x0, x20
03baa2ec: mov      x1, xzr
03baa2f0: bl       #0x8b4905c
03baa2f4: tbz      w0, #0, #0x3baa304
03baa2f8: mov      x0, x20
03baa2fc: mov      x1, xzr
03baa300: bl       #0x8b3bf14
03baa304: ldr      x0, [x19, #0x98]
03baa308: ldp      x20, x19, [sp, #0x90]
03baa30c: ldp      x22, x21, [sp, #0x80]
03baa310: ldp      x24, x23, [sp, #0x70]
03baa314: ldp      x26, x25, [sp, #0x60]
03baa318: ldr      x30, [sp, #0x58]
03baa31c: ldp      d9, d8, [sp, #0x48]
03baa320: ldr      d10, [sp, #0x40]
03baa324: add      sp, sp, #0xa0
03baa328: ret      
03baa32c: bl       #0x39d36e4
03baa330: bl       #0x39d36e4
03baa334: mov      x0, x21
03baa338: bl       #0x39d36dc
03baa33c: mov      x0, x23
03baa340: bl       #0x39d36dc
03baa344: b        #0x3baa35c
03baa348: b        #0x3baa35c
03baa34c: b        #0x3baa35c
03baa350: b        #0x3baa35c
03baa354: b        #0x3baa35c
03baa358: b        #0x3baa35c
03baa35c: mov      x25, x1
03baa360: mov      x26, x0
03baa364: b        #0x3baa3b4
03baa368: b        #0x3baa374
03baa36c: b        #0x3baa374
03baa370: b        #0x3baa374
03baa374: mov      x25, x1
03baa378: mov      x26, x0
03baa37c: cmp      w25, #1
03baa380: b.ne     #0x3baa398
03baa384: mov      x0, x26
03baa388: bl       #0x9749aa0
03baa38c: ldr      x23, [x0]
03baa390: bl       #0x9749ab0
03baa394: b        #0x3baa228
03baa398: mov      x23, xzr
03baa39c: adrp     x8, #0x9b45000
03baa3a0: ldr      x8, [x8, #0x9c0]
03baa3a4: ldr      x1, [x8]
03baa3a8: add      x0, sp, #0x20
03baa3ac: bl       #0x5750e88
03baa3b0: cbnz     x23, #0x3baa3e0
03baa3b4: cmp      w25, #1
03baa3b8: b.ne     #0x3baa3d8
03baa3bc: mov      x0, x26
03baa3c0: bl       #0x9749aa0
03baa3c4: ldr      x21, [x0]
03baa3c8: bl       #0x9749ab0
03baa3cc: mov      w23, wzr
03baa3d0: cbnz     x22, #0x3baa278
03baa3d4: b        #0x3baa2d8
03baa3d8: mov      x21, xzr
03baa3dc: b        #0x3baa3f8
03baa3e0: mov      x0, x23
03baa3e4: bl       #0x39d36dc
03baa3e8: mov      x25, x1
03baa3ec: mov      x26, x0
03baa3f0: b        #0x3baa39c
03baa3f4: mov      x26, x0
03baa3f8: cbz      x22, #0x3baa45c
03baa3fc: adrp     x10, #0x9b3f000
03baa400: ldr      x8, [x22]
03baa404: ldr      x10, [x10, #0xed8]
03baa408: ldrh     w9, [x8, #0x12e]
03baa40c: ldr      x1, [x10]
03baa410: cbz      x9, #0x3baa434
03baa414: ldr      x10, [x8, #0xb0]
03baa418: add      x10, x10, #8
03baa41c: ldur     x11, [x10, #-8]
03baa420: cmp      x11, x1
03baa424: b.eq     #0x3baa444
03baa428: subs     x9, x9, #1
03baa42c: add      x10, x10, #0x10
03baa430: b.ne     #0x3baa41c
03baa434: mov      x0, x22
03baa438: mov      w2, wzr
03baa43c: bl       #0x39a94f0
03baa440: b        #0x3baa450
03baa444: ldrsw    x9, [x10]
03baa448: add      x8, x8, x9, lsl #4
03baa44c: add      x0, x8, #0x138
03baa450: ldp      x8, x1, [x0]
03baa454: mov      x0, x22
03baa458: blr      x8
03baa45c: cbnz     x21, #0x3baa468
03baa460: mov      x0, x26
03baa464: bl       #0x3ab82d0
03baa468: mov      x0, x21
03baa46c: bl       #0x39d36dc
03baa470: bl       #0x35bb99c