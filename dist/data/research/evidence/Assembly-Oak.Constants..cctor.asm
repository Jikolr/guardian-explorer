07d5caec: sub      sp, sp, #0x1d0
07d5caf0: str      d8, [sp, #0x180]
07d5caf4: str      x29, [sp, #0x188]
07d5caf8: stp      x30, x25, [sp, #0x190]
07d5cafc: stp      x24, x23, [sp, #0x1a0]
07d5cb00: stp      x22, x21, [sp, #0x1b0]
07d5cb04: stp      x20, x19, [sp, #0x1c0]
07d5cb08: adrp     x24, #0xa272000
07d5cb0c: adrp     x20, #0x9b46000
07d5cb10: adrp     x23, #0x9c00000
07d5cb14: adrp     x22, #0x9c00000
07d5cb18: adrp     x21, #0x9b3f000
07d5cb1c: ldrb     w8, [x24, #0x41]
07d5cb20: ldr      x20, [x20, #0x140]
07d5cb24: ldr      x23, [x23, #0x208]
07d5cb28: ldr      x22, [x22, #0x210]
07d5cb2c: ldr      x21, [x21, #0x9a8]
07d5cb30: add      x19, sp, #0xa0
07d5cb34: tbnz     w8, #0, #0x7d5cbc4
07d5cb38: adrp     x0, #0x9b72000
07d5cb3c: ldr      x0, [x0, #0x3d8]
07d5cb40: bl       #0x39d34bc
07d5cb44: adrp     x0, #0x9b46000
07d5cb48: ldr      x0, [x0, #0x140]
07d5cb4c: bl       #0x39d34bc
07d5cb50: adrp     x0, #0x9c0e000
07d5cb54: ldr      x0, [x0, #0x2a8]
07d5cb58: bl       #0x39d34bc
07d5cb5c: adrp     x0, #0x9c00000
07d5cb60: ldr      x0, [x0, #0x210]
07d5cb64: bl       #0x39d34bc
07d5cb68: adrp     x0, #0x9c00000
07d5cb6c: ldr      x0, [x0, #0x208]
07d5cb70: bl       #0x39d34bc
07d5cb74: adrp     x0, #0x9b3f000
07d5cb78: ldr      x0, [x0, #0x9a8]
07d5cb7c: bl       #0x39d34bc
07d5cb80: adrp     x0, #0x9c0e000
07d5cb84: ldr      x0, [x0, #0x2b0]
07d5cb88: bl       #0x39d34bc
07d5cb8c: adrp     x0, #0x9b7f000
07d5cb90: ldr      x0, [x0, #0x70]
07d5cb94: bl       #0x39d34bc
07d5cb98: adrp     x0, #0x9b7f000
07d5cb9c: ldr      x0, [x0, #0x68]
07d5cba0: bl       #0x39d34bc
07d5cba4: adrp     x0, #0x9b47000
07d5cba8: ldr      x0, [x0, #0x508]
07d5cbac: bl       #0x39d34bc
07d5cbb0: adrp     x0, #0x9bd8000
07d5cbb4: ldr      x0, [x0, #0x2b8]
07d5cbb8: bl       #0x39d34bc
07d5cbbc: mov      w8, #1
07d5cbc0: strb     w8, [x24, #0x41]
07d5cbc4: ldr      x8, [x20]
07d5cbc8: adrp     x10, #0x176c000
07d5cbcc: adrp     x9, #0x1770000
07d5cbd0: ldr      q1, [x10, #0xdf0]
07d5cbd4: adrp     x10, #0x1768000
07d5cbd8: ldr      q0, [x9, #0x540]
07d5cbdc: ldr      x9, [x8, #0xb8]
07d5cbe0: ldr      d2, [x10, #0x6c0]
07d5cbe4: adrp     x10, #0x176e000
07d5cbe8: adrp     x11, #0x176d000
07d5cbec: stp      q0, q1, [x9]
07d5cbf0: str      d2, [x9, #0x20]
07d5cbf4: ldr      q0, [x10, #0xe0]
07d5cbf8: ldr      x9, [x8, #0xb8]
07d5cbfc: adrp     x10, #0x1768000
07d5cc00: mov      w0, #0xa
07d5cc04: mov      x1, xzr
07d5cc08: stur     q0, [x9, #0x28]
07d5cc0c: ldr      d0, [x10, #0x290]
07d5cc10: ldr      x9, [x8, #0xb8]
07d5cc14: mov      w10, #0xcccd
07d5cc18: movk     w10, #0x3e4c, lsl #16
07d5cc1c: str      d0, [x9, #0x38]
07d5cc20: str      w10, [x9, #0x40]
07d5cc24: ldr      x9, [x8, #0xb8]
07d5cc28: stur     d0, [x9, #0x44]
07d5cc2c: str      w10, [x9, #0x4c]
07d5cc30: ldr      q0, [x11, #0x390]
07d5cc34: ldr      x8, [x8, #0xb8]
07d5cc38: mov      w9, #0xb852
07d5cc3c: movk     w9, #0x3e9e, lsl #16
07d5cc40: str      q0, [x8, #0x50]
07d5cc44: str      w9, [x8, #0x60]
07d5cc48: add      x8, sp, #0x140
07d5cc4c: bl       #0x3ac6f60
07d5cc50: ldr      w8, [sp, #0x150]
07d5cc54: ldr      q0, [x19, #0xa0]
07d5cc58: ldr      x9, [x20]
07d5cc5c: adrp     x11, #0x1769000
07d5cc60: str      w8, [sp, #0x170]
07d5cc64: str      q0, [x19, #0xc0]
07d5cc68: ldr      x10, [x9, #0xb8]
07d5cc6c: mov      x0, xzr
07d5cc70: str      w8, [x10, #0x74]
07d5cc74: stur     q0, [x10, #0x64]
07d5cc78: ldr      x8, [x9, #0xb8]
07d5cc7c: ldr      d0, [x11, #0x148]
07d5cc80: mov      w9, #0x42a00000
07d5cc84: str      d0, [x8, #0x78]
07d5cc88: add      x8, sp, #0x120
07d5cc8c: fmov     s0, w9
07d5cc90: bl       #0x3ac68b0
07d5cc94: ldr      x8, [sp, #0x130]
07d5cc98: ldr      q0, [x19, #0x80]
07d5cc9c: ldr      x9, [x20]
07d5cca0: mov      x0, xzr
07d5cca4: str      x8, [sp, #0x150]
07d5cca8: str      q0, [x19, #0xa0]
07d5ccac: ldr      x10, [x9, #0xb8]
07d5ccb0: str      x8, [x10, #0x90]
07d5ccb4: str      q0, [x10, #0x80]
07d5ccb8: ldr      x8, [x9, #0xb8]
07d5ccbc: mov      w9, #0x3f000000
07d5ccc0: str      w9, [x8, #0x98]
07d5ccc4: mov      w9, #0x42c80000
07d5ccc8: fmov     s8, w9
07d5cccc: add      x8, sp, #0x100
07d5ccd0: mov      v0.16b, v8.16b
07d5ccd4: bl       #0x3ac68b0
07d5ccd8: ldr      x8, [sp, #0x110]
07d5ccdc: ldr      q0, [x19, #0x60]
07d5cce0: ldr      x9, [x20]
07d5cce4: mov      x0, xzr
07d5cce8: str      x8, [sp, #0x130]
07d5ccec: str      q0, [x19, #0x80]
07d5ccf0: ldr      x9, [x9, #0xb8]
07d5ccf4: stur     x8, [x9, #0xac]
07d5ccf8: stur     q0, [x9, #0x9c]
07d5ccfc: add      x8, sp, #0xe0
07d5cd00: mov      v0.16b, v8.16b
07d5cd04: bl       #0x3ac68b0
07d5cd08: ldr      x8, [sp, #0xf0]
07d5cd0c: ldr      q0, [x19, #0x40]
07d5cd10: ldr      x9, [x20]
07d5cd14: mov      x0, xzr
07d5cd18: str      x8, [sp, #0x110]
07d5cd1c: str      q0, [x19, #0x60]
07d5cd20: ldr      x9, [x9, #0xb8]
07d5cd24: stur     x8, [x9, #0xc4]
07d5cd28: stur     q0, [x9, #0xb4]
07d5cd2c: add      x8, sp, #0xc0
07d5cd30: fmov     s0, #1.50000000
07d5cd34: bl       #0x3ac68b0
07d5cd38: ldr      x8, [sp, #0xd0]
07d5cd3c: ldr      q0, [x19, #0x20]
07d5cd40: ldr      x9, [x20]
07d5cd44: mov      x0, xzr
07d5cd48: str      x8, [sp, #0xf0]
07d5cd4c: str      q0, [x19, #0x40]
07d5cd50: ldr      x9, [x9, #0xb8]
07d5cd54: stur     x8, [x9, #0xdc]
07d5cd58: stur     q0, [x9, #0xcc]
07d5cd5c: add      x8, sp, #0xa0
07d5cd60: fmov     s0, #1.50000000
07d5cd64: bl       #0x3ac68b0
07d5cd68: ldr      x8, [sp, #0xb0]
07d5cd6c: ldr      q0, [x19]
07d5cd70: ldr      x9, [x20]
07d5cd74: mov      x0, xzr
07d5cd78: str      x8, [sp, #0xd0]
07d5cd7c: str      q0, [x19, #0x20]
07d5cd80: ldr      x9, [x9, #0xb8]
07d5cd84: stur     x8, [x9, #0xf4]
07d5cd88: stur     q0, [x9, #0xe4]
07d5cd8c: add      x8, sp, #0x80
07d5cd90: fmov     s0, #2.50000000
07d5cd94: bl       #0x3ac68b0
07d5cd98: ldr      x8, [sp, #0x90]
07d5cd9c: ldr      q0, [sp, #0x80]
07d5cda0: ldr      x9, [x20]
07d5cda4: mov      x0, xzr
07d5cda8: str      x8, [sp, #0xb0]
07d5cdac: str      q0, [x19]
07d5cdb0: ldr      x9, [x9, #0xb8]
07d5cdb4: add      x10, x9, #0xfc
07d5cdb8: stur     q0, [x9, #0xfc]
07d5cdbc: str      x8, [x10, #0x10]
07d5cdc0: add      x8, sp, #0x60
07d5cdc4: fmov     s0, #2.50000000
07d5cdc8: bl       #0x3ac68b0
07d5cdcc: ldr      x8, [sp, #0x70]
07d5cdd0: ldr      q0, [sp, #0x60]
07d5cdd4: ldr      x9, [x20]
07d5cdd8: mov      x0, xzr
07d5cddc: str      x8, [sp, #0x90]
07d5cde0: str      q0, [sp, #0x80]
07d5cde4: ldr      x9, [x9, #0xb8]
07d5cde8: add      x9, x9, #0x114
07d5cdec: str      x8, [x9, #0x10]
07d5cdf0: str      q0, [x9]
07d5cdf4: add      x8, sp, #0x40
07d5cdf8: fmov     s0, #2.50000000
07d5cdfc: bl       #0x3ac68b0
07d5ce00: ldr      x8, [sp, #0x50]
07d5ce04: ldr      q0, [sp, #0x40]
07d5ce08: ldr      x9, [x20]
07d5ce0c: mov      x0, xzr
07d5ce10: str      x8, [sp, #0x70]
07d5ce14: str      q0, [sp, #0x60]
07d5ce18: ldr      x9, [x9, #0xb8]
07d5ce1c: add      x9, x9, #0x12c
07d5ce20: str      x8, [x9, #0x10]
07d5ce24: str      q0, [x9]
07d5ce28: add      x8, sp, #0x20
07d5ce2c: fmov     s0, #2.50000000
07d5ce30: bl       #0x3ac68b0
07d5ce34: ldr      x8, [sp, #0x30]
07d5ce38: ldr      q0, [sp, #0x20]
07d5ce3c: ldr      x9, [x20]
07d5ce40: mov      x0, xzr
07d5ce44: str      x8, [sp, #0x50]
07d5ce48: str      q0, [sp, #0x40]
07d5ce4c: ldr      x9, [x9, #0xb8]
07d5ce50: add      x9, x9, #0x144
07d5ce54: str      x8, [x9, #0x10]
07d5ce58: str      q0, [x9]
07d5ce5c: add      x8, sp, #8
07d5ce60: fmov     s0, #10.00000000
07d5ce64: bl       #0x3ac68b0
07d5ce68: ldr      x8, [sp, #0x18]
07d5ce6c: ldur     q0, [sp, #8]
07d5ce70: ldr      x9, [x20]
07d5ce74: adrp     x10, #0x176a000
07d5ce78: str      x8, [sp, #0x30]
07d5ce7c: str      q0, [sp, #0x20]
07d5ce80: ldr      x11, [x9, #0xb8]
07d5ce84: ldr      d1, [x10, #0xb50]
07d5ce88: adrp     x10, #0x1770000
07d5ce8c: ldr      q2, [x10, #0x780]
07d5ce90: add      x10, x11, #0x15c
07d5ce94: str      x8, [x10, #0x10]
07d5ce98: str      q0, [x10]
07d5ce9c: ldr      x8, [x9, #0xb8]
07d5cea0: adrp     x10, #0x176e000
07d5cea4: ldr      q0, [x10, #0x8f0]
07d5cea8: adrp     x10, #0x1770000
07d5ceac: add      x8, x8, #0x174
07d5ceb0: str      d1, [x8]
07d5ceb4: ldr      q1, [x10, #0xfe0]
07d5ceb8: adrp     x10, #0x176f000
07d5cebc: stur     q2, [x8, #8]
07d5cec0: ldr      q2, [x10, #0xdb0]
07d5cec4: stur     q0, [x8, #0x18]
07d5cec8: stur     q1, [x8, #0x28]
07d5cecc: adrp     x10, #0x176a000
07d5ced0: stur     q2, [x8, #0x38]
07d5ced4: ldr      x8, [x9, #0xb8]
07d5ced8: ldr      d0, [x10, #0x300]
07d5cedc: mov      w9, #4
07d5cee0: add      x10, x8, #0x1bc
07d5cee4: str      d0, [x10]
07d5cee8: adrp     x10, #0x176e000
07d5ceec: ldr      q0, [x10, #0xc00]
07d5cef0: str      w9, [x8, #0x1c4]
07d5cef4: add      x9, x8, #0x1c8
07d5cef8: mov      x10, #0x42c80000
07d5cefc: str      q0, [x9]
07d5cf00: mov      w9, #0xee80
07d5cf04: movk     x10, #0x18, lsl #32
07d5cf08: movk     w9, #0x36, lsl #16
07d5cf0c: stp      x10, x9, [x8, #0x1d8]
07d5cf10: ldr      x0, [x23]
07d5cf14: bl       #0x39d36d8
07d5cf18: ldr      x1, [x22]
07d5cf1c: mov      x19, x0
07d5cf20: bl       #0x5419a44
07d5cf24: ldr      x0, [x21]
07d5cf28: mov      w1, #2
07d5cf2c: bl       #0x39d3534
07d5cf30: cbz      x0, #0x7d5d798
07d5cf34: ldr      w8, [x0, #0x18]
07d5cf38: mov      x2, x0
07d5cf3c: cbz      w8, #0x7d5d794
07d5cf40: mov      w9, #1
07d5cf44: cmp      w8, #1
07d5cf48: str      w9, [x2, #0x20]
07d5cf4c: b.eq     #0x7d5d794
07d5cf50: mov      w8, #2
07d5cf54: str      w8, [x2, #0x24]
07d5cf58: cbz      x19, #0x7d5d798
07d5cf5c: adrp     x24, #0x9c0e000
07d5cf60: ldr      x24, [x24, #0x2a8]
07d5cf64: mov      w1, #1
07d5cf68: mov      x0, x19
07d5cf6c: ldr      x3, [x24]
07d5cf70: bl       #0x541a3bc
07d5cf74: ldr      x0, [x21]
07d5cf78: mov      w1, #2
07d5cf7c: bl       #0x39d3534
07d5cf80: cbz      x0, #0x7d5d798
07d5cf84: ldr      w8, [x0, #0x18]
07d5cf88: mov      x2, x0
07d5cf8c: cbz      w8, #0x7d5d794
07d5cf90: mov      w9, #2
07d5cf94: cmp      w8, #1
07d5cf98: str      w9, [x2, #0x20]
07d5cf9c: b.eq     #0x7d5d794
07d5cfa0: mov      w8, #4
07d5cfa4: str      w8, [x2, #0x24]
07d5cfa8: ldr      x3, [x24]
07d5cfac: mov      w1, #0xb
07d5cfb0: mov      x0, x19
07d5cfb4: bl       #0x541a3bc
07d5cfb8: ldr      x0, [x21]
07d5cfbc: mov      w1, #2
07d5cfc0: bl       #0x39d3534
07d5cfc4: cbz      x0, #0x7d5d798
07d5cfc8: ldr      w8, [x0, #0x18]
07d5cfcc: mov      x2, x0
07d5cfd0: cbz      w8, #0x7d5d794
07d5cfd4: mov      w9, #3
07d5cfd8: cmp      w8, #1
07d5cfdc: str      w9, [x2, #0x20]
07d5cfe0: b.eq     #0x7d5d794
07d5cfe4: mov      w8, #5
07d5cfe8: str      w8, [x2, #0x24]
07d5cfec: ldr      x3, [x24]
07d5cff0: mov      w1, #0x15
07d5cff4: mov      x0, x19
07d5cff8: bl       #0x541a3bc
07d5cffc: ldr      x8, [x20]
07d5d000: ldr      x8, [x8, #0xb8]
07d5d004: str      x19, [x8, #0x1e8]
07d5d008: ldr      x0, [x23]
07d5d00c: bl       #0x39d36d8
07d5d010: ldr      x1, [x22]
07d5d014: mov      x19, x0
07d5d018: bl       #0x5419a44
07d5d01c: ldr      x0, [x21]
07d5d020: mov      w1, #2
07d5d024: bl       #0x39d3534
07d5d028: cbz      x0, #0x7d5d798
07d5d02c: ldr      w8, [x0, #0x18]
07d5d030: mov      x2, x0
07d5d034: cbz      w8, #0x7d5d794
07d5d038: mov      w9, #1
07d5d03c: cmp      w8, #1
07d5d040: str      w9, [x2, #0x20]
07d5d044: b.eq     #0x7d5d794
07d5d048: mov      w8, #2
07d5d04c: str      w8, [x2, #0x24]
07d5d050: cbz      x19, #0x7d5d798
07d5d054: ldr      x3, [x24]
07d5d058: mov      w1, #1
07d5d05c: mov      x0, x19
07d5d060: bl       #0x541a3bc
07d5d064: ldr      x0, [x21]
07d5d068: mov      w1, #2
07d5d06c: bl       #0x39d3534
07d5d070: cbz      x0, #0x7d5d798
07d5d074: ldr      w8, [x0, #0x18]
07d5d078: mov      x2, x0
07d5d07c: cbz      w8, #0x7d5d794
07d5d080: mov      w9, #3
07d5d084: cmp      w8, #1
07d5d088: str      w9, [x2, #0x20]
07d5d08c: b.eq     #0x7d5d794
07d5d090: mov      w8, #5
07d5d094: str      w8, [x2, #0x24]
07d5d098: ldr      x3, [x24]
07d5d09c: mov      w1, #5
07d5d0a0: mov      x0, x19
07d5d0a4: bl       #0x541a3bc
07d5d0a8: ldr      x0, [x21]
07d5d0ac: mov      w1, #2
07d5d0b0: bl       #0x39d3534
07d5d0b4: cbz      x0, #0x7d5d798
07d5d0b8: ldr      w8, [x0, #0x18]
07d5d0bc: mov      x2, x0
07d5d0c0: cbz      w8, #0x7d5d794
07d5d0c4: mov      w21, #4
07d5d0c8: cmp      w8, #1
07d5d0cc: str      w21, [x2, #0x20]
07d5d0d0: b.eq     #0x7d5d794
07d5d0d4: adrp     x25, #0x9b47000
07d5d0d8: mov      w8, #7
07d5d0dc: ldr      x25, [x25, #0x508]
07d5d0e0: str      w8, [x2, #0x24]
07d5d0e4: ldr      x3, [x24]
07d5d0e8: adrp     x24, #0x9bd8000
07d5d0ec: adrp     x23, #0x9b7f000
07d5d0f0: adrp     x22, #0x9b7f000
07d5d0f4: ldr      x24, [x24, #0x2b8]
07d5d0f8: ldr      x23, [x23, #0x68]
07d5d0fc: ldr      x22, [x22, #0x70]
07d5d100: mov      w1, #0xa
07d5d104: mov      x0, x19
07d5d108: bl       #0x541a3bc
07d5d10c: ldr      x8, [x20]
07d5d110: adrp     x10, #0x1769000
07d5d114: ldr      d0, [x10, #0x588]
07d5d118: mov      w10, #0x438
07d5d11c: ldr      x8, [x8, #0xb8]
07d5d120: str      x19, [x8, #0x1f0]
07d5d124: str      w21, [x8, #0x1f8]
07d5d128: ldr      x9, [x25]
07d5d12c: str      x9, [x8, #0x200]
07d5d130: ldr      x9, [x24]
07d5d134: str      d0, [x8, #0x210]
07d5d138: str      w10, [x8, #0x218]
07d5d13c: str      x9, [x8, #0x208]
07d5d140: ldr      x0, [x23]
07d5d144: bl       #0x39d36d8
07d5d148: ldr      x1, [x22]
07d5d14c: mov      x19, x0
07d5d150: bl       #0x462b2ec
07d5d154: cbz      x19, #0x7d5d798
07d5d158: adrp     x21, #0x9c0e000
07d5d15c: ldr      x21, [x21, #0x2b0]
07d5d160: ldr      w10, [x19, #0x1c]
07d5d164: ldr      x8, [x19, #0x10]
07d5d168: ldr      x9, [x21]
07d5d16c: add      w10, w10, #1
07d5d170: str      w10, [x19, #0x1c]
07d5d174: cbz      x8, #0x7d5d798
07d5d178: ldrsw    x10, [x19, #0x18]
07d5d17c: ldr      w11, [x8, #0x18]
07d5d180: cmp      w10, w11
07d5d184: b.hs     #0x7d5d1a0
07d5d188: add      w9, w10, #1
07d5d18c: add      x8, x8, x10
07d5d190: mov      w10, #1
07d5d194: str      w9, [x19, #0x18]
07d5d198: strb     w10, [x8, #0x20]
07d5d19c: b        #0x7d5d1b8
07d5d1a0: ldr      x8, [x9, #0x20]
07d5d1a4: mov      w1, #1
07d5d1a8: mov      x0, x19
07d5d1ac: ldr      x8, [x8, #0xc0]
07d5d1b0: ldr      x2, [x8, #0x70]
07d5d1b4: bl       #0x462bae4
07d5d1b8: ldr      w10, [x19, #0x1c]
07d5d1bc: ldr      x8, [x19, #0x10]
07d5d1c0: ldr      x9, [x21]
07d5d1c4: add      w10, w10, #1
07d5d1c8: str      w10, [x19, #0x1c]
07d5d1cc: cbz      x8, #0x7d5d798
07d5d1d0: ldrsw    x10, [x19, #0x18]
07d5d1d4: ldr      w11, [x8, #0x18]
07d5d1d8: cmp      w10, w11
07d5d1dc: b.hs     #0x7d5d1f8
07d5d1e0: add      w9, w10, #1
07d5d1e4: add      x8, x8, x10
07d5d1e8: mov      w10, #4
07d5d1ec: str      w9, [x19, #0x18]
07d5d1f0: strb     w10, [x8, #0x20]
07d5d1f4: b        #0x7d5d210
07d5d1f8: ldr      x8, [x9, #0x20]
07d5d1fc: mov      w1, #4
07d5d200: mov      x0, x19
07d5d204: ldr      x8, [x8, #0xc0]
07d5d208: ldr      x2, [x8, #0x70]
07d5d20c: bl       #0x462bae4
07d5d210: ldr      w10, [x19, #0x1c]
07d5d214: ldr      x8, [x19, #0x10]
07d5d218: ldr      x9, [x21]
07d5d21c: add      w10, w10, #1
07d5d220: str      w10, [x19, #0x1c]
07d5d224: cbz      x8, #0x7d5d798
07d5d228: ldrsw    x10, [x19, #0x18]
07d5d22c: ldr      w11, [x8, #0x18]
07d5d230: cmp      w10, w11
07d5d234: b.hs     #0x7d5d250
07d5d238: add      w9, w10, #1
07d5d23c: add      x8, x8, x10
07d5d240: mov      w10, #2
07d5d244: str      w9, [x19, #0x18]
07d5d248: strb     w10, [x8, #0x20]
07d5d24c: b        #0x7d5d268
07d5d250: ldr      x8, [x9, #0x20]
07d5d254: mov      w1, #2
07d5d258: mov      x0, x19
07d5d25c: ldr      x8, [x8, #0xc0]
07d5d260: ldr      x2, [x8, #0x70]
07d5d264: bl       #0x462bae4
07d5d268: ldr      x8, [x20]
07d5d26c: ldr      x8, [x8, #0xb8]
07d5d270: str      x19, [x8, #0x220]
07d5d274: ldr      x0, [x23]
07d5d278: bl       #0x39d36d8
07d5d27c: ldr      x1, [x22]
07d5d280: mov      x19, x0
07d5d284: bl       #0x462b2ec
07d5d288: cbz      x19, #0x7d5d798
07d5d28c: ldr      w10, [x19, #0x1c]
07d5d290: ldr      x8, [x19, #0x10]
07d5d294: ldr      x9, [x21]
07d5d298: add      w10, w10, #1
07d5d29c: str      w10, [x19, #0x1c]
07d5d2a0: cbz      x8, #0x7d5d798
07d5d2a4: ldrsw    x10, [x19, #0x18]
07d5d2a8: ldr      w11, [x8, #0x18]
07d5d2ac: cmp      w10, w11
07d5d2b0: b.hs     #0x7d5d2cc
07d5d2b4: add      w9, w10, #1
07d5d2b8: add      x8, x8, x10
07d5d2bc: mov      w10, #8
07d5d2c0: str      w9, [x19, #0x18]
07d5d2c4: strb     w10, [x8, #0x20]
07d5d2c8: b        #0x7d5d2e4
07d5d2cc: ldr      x8, [x9, #0x20]
07d5d2d0: mov      w1, #8
07d5d2d4: mov      x0, x19
07d5d2d8: ldr      x8, [x8, #0xc0]
07d5d2dc: ldr      x2, [x8, #0x70]
07d5d2e0: bl       #0x462bae4
07d5d2e4: ldr      w10, [x19, #0x1c]
07d5d2e8: ldr      x8, [x19, #0x10]
07d5d2ec: ldr      x9, [x21]
07d5d2f0: add      w10, w10, #1
07d5d2f4: str      w10, [x19, #0x1c]
07d5d2f8: cbz      x8, #0x7d5d798
07d5d2fc: ldrsw    x10, [x19, #0x18]
07d5d300: ldr      w11, [x8, #0x18]
07d5d304: adrp     x21, #0x9b72000
07d5d308: ldr      x21, [x21, #0x3d8]
07d5d30c: cmp      w10, w11
07d5d310: b.hs     #0x7d5d32c
07d5d314: add      w9, w10, #1
07d5d318: add      x8, x8, x10
07d5d31c: mov      w10, #0x10
07d5d320: str      w9, [x19, #0x18]
07d5d324: strb     w10, [x8, #0x20]
07d5d328: b        #0x7d5d344
07d5d32c: ldr      x8, [x9, #0x20]
07d5d330: mov      w1, #0x10
07d5d334: mov      x0, x19
07d5d338: ldr      x8, [x8, #0xc0]
07d5d33c: ldr      x2, [x8, #0x70]
07d5d340: bl       #0x462bae4
07d5d344: ldr      x8, [x20]
07d5d348: mov      w1, #4
07d5d34c: ldr      x8, [x8, #0xb8]
07d5d350: str      x19, [x8, #0x228]
07d5d354: ldr      x0, [x21]
07d5d358: bl       #0x39d3534
07d5d35c: cbz      x0, #0x7d5d798
07d5d360: ldr      w8, [x0, #0x18]
07d5d364: cbz      w8, #0x7d5d794
07d5d368: mov      w9, #0x8774
07d5d36c: movk     w9, #0xff8c, lsl #16
07d5d370: cmp      w8, #1
07d5d374: str      w9, [x0, #0x20]
07d5d378: b.eq     #0x7d5d794
07d5d37c: mov      w19, #0x241b
07d5d380: movk     w19, #0xff26, lsl #16
07d5d384: cmp      w8, #2
07d5d388: str      w19, [x0, #0x24]
07d5d38c: b.ls     #0x7d5d794
07d5d390: mov      w22, #0x1e26
07d5d394: movk     w22, #0xff0a, lsl #16
07d5d398: cmp      w8, #3
07d5d39c: str      w22, [x0, #0x28]
07d5d3a0: b.eq     #0x7d5d794
07d5d3a4: mov      w8, #0xffd3
07d5d3a8: movk     w8, #0xfff8, lsl #16
07d5d3ac: str      w8, [x0, #0x2c]
07d5d3b0: ldr      x8, [x20]
07d5d3b4: mov      w1, #4
07d5d3b8: ldr      x8, [x8, #0xb8]
07d5d3bc: str      x0, [x8, #0x230]
07d5d3c0: ldr      x0, [x21]
07d5d3c4: bl       #0x39d3534
07d5d3c8: cbz      x0, #0x7d5d798
07d5d3cc: ldr      w8, [x0, #0x18]
07d5d3d0: cbz      w8, #0x7d5d794
07d5d3d4: mov      w9, #0x6124
07d5d3d8: movk     w9, #0xffa6, lsl #16
07d5d3dc: cmp      w8, #1
07d5d3e0: str      w9, [x0, #0x20]
07d5d3e4: b.eq     #0x7d5d794
07d5d3e8: mov      w9, #0x1712
07d5d3ec: movk     w9, #0xff25, lsl #16
07d5d3f0: cmp      w8, #2
07d5d3f4: str      w9, [x0, #0x24]
07d5d3f8: b.ls     #0x7d5d794
07d5d3fc: mov      w9, #0x1b0b
07d5d400: movk     w9, #0xff3b, lsl #16
07d5d404: cmp      w8, #3
07d5d408: str      w9, [x0, #0x28]
07d5d40c: b.eq     #0x7d5d794
07d5d410: mov      w8, #-0x1c2d
07d5d414: str      w8, [x0, #0x2c]
07d5d418: ldr      x8, [x20]
07d5d41c: mov      w1, #4
07d5d420: ldr      x8, [x8, #0xb8]
07d5d424: str      x0, [x8, #0x238]
07d5d428: ldr      x0, [x21]
07d5d42c: bl       #0x39d3534
07d5d430: cbz      x0, #0x7d5d798
07d5d434: ldr      w8, [x0, #0x18]
07d5d438: cbz      w8, #0x7d5d794
07d5d43c: mov      w9, #0x4dd0
07d5d440: movk     w9, #0xff14, lsl #16
07d5d444: cmp      w8, #1
07d5d448: str      w9, [x0, #0x20]
07d5d44c: b.eq     #0x7d5d794
07d5d450: mov      w9, #0x1424
07d5d454: movk     w9, #0xff17, lsl #16
07d5d458: cmp      w8, #2
07d5d45c: str      w9, [x0, #0x24]
07d5d460: b.ls     #0x7d5d794
07d5d464: add      w9, w22, #0x25
07d5d468: cmp      w8, #3
07d5d46c: str      w9, [x0, #0x28]
07d5d470: b.eq     #0x7d5d794
07d5d474: mov      w22, #0xe3ff
07d5d478: movk     w22, #0xffd3, lsl #16
07d5d47c: str      w22, [x0, #0x2c]
07d5d480: ldr      x8, [x20]
07d5d484: mov      w1, #4
07d5d488: ldr      x8, [x8, #0xb8]
07d5d48c: str      x0, [x8, #0x240]
07d5d490: ldr      x0, [x21]
07d5d494: bl       #0x39d3534
07d5d498: cbz      x0, #0x7d5d798
07d5d49c: ldr      w8, [x0, #0x18]
07d5d4a0: cbz      w8, #0x7d5d794
07d5d4a4: mov      w9, #0x83a9
07d5d4a8: movk     w9, #0xff29, lsl #16
07d5d4ac: cmp      w8, #1
07d5d4b0: str      w9, [x0, #0x20]
07d5d4b4: b.eq     #0x7d5d794
07d5d4b8: mov      w9, #0x1728
07d5d4bc: movk     w9, #0xff09, lsl #16
07d5d4c0: cmp      w8, #2
07d5d4c4: str      w9, [x0, #0x24]
07d5d4c8: b.ls     #0x7d5d794
07d5d4cc: mov      w9, #0x2643
07d5d4d0: movk     w9, #0xff00, lsl #16
07d5d4d4: cmp      w8, #3
07d5d4d8: str      w9, [x0, #0x28]
07d5d4dc: b.eq     #0x7d5d794
07d5d4e0: add      w8, w22, #0xa00
07d5d4e4: str      w8, [x0, #0x2c]
07d5d4e8: ldr      x8, [x20]
07d5d4ec: mov      w1, #4
07d5d4f0: ldr      x8, [x8, #0xb8]
07d5d4f4: str      x0, [x8, #0x248]
07d5d4f8: ldr      x0, [x21]
07d5d4fc: bl       #0x39d3534
07d5d500: cbz      x0, #0x7d5d798
07d5d504: ldr      w8, [x0, #0x18]
07d5d508: cbz      w8, #0x7d5d794
07d5d50c: mov      w9, #0x7c47
07d5d510: movk     w9, #0xff2a, lsl #16
07d5d514: cmp      w8, #1
07d5d518: str      w9, [x0, #0x20]
07d5d51c: b.eq     #0x7d5d794
07d5d520: mov      w23, #0x1928
07d5d524: movk     w23, #0xff13, lsl #16
07d5d528: add      w9, w23, #0x8f0
07d5d52c: cmp      w8, #2
07d5d530: str      w9, [x0, #0x24]
07d5d534: b.ls     #0x7d5d794
07d5d538: mov      w9, #0x280d
07d5d53c: movk     w9, #0xff14, lsl #16
07d5d540: cmp      w8, #3
07d5d544: str      w9, [x0, #0x28]
07d5d548: b.eq     #0x7d5d794
07d5d54c: mov      w8, #0xffd9
07d5d550: movk     w8, #0xffd3, lsl #16
07d5d554: str      w8, [x0, #0x2c]
07d5d558: ldr      x8, [x20]
07d5d55c: mov      w1, #3
07d5d560: ldr      x8, [x8, #0xb8]
07d5d564: str      x0, [x8, #0x250]
07d5d568: ldr      x0, [x21]
07d5d56c: bl       #0x39d3534
07d5d570: cbz      x0, #0x7d5d798
07d5d574: ldr      w8, [x0, #0x18]
07d5d578: cbz      w8, #0x7d5d794
07d5d57c: mov      w9, #0x8fff
07d5d580: movk     w9, #0xff67, lsl #16
07d5d584: cmp      w8, #1
07d5d588: str      w9, [x0, #0x20]
07d5d58c: b.eq     #0x7d5d794
07d5d590: mov      w22, #0x67af
07d5d594: movk     w22, #0xff4d, lsl #16
07d5d598: cmp      w8, #2
07d5d59c: str      w22, [x0, #0x24]
07d5d5a0: b.ls     #0x7d5d794
07d5d5a4: str      w23, [x0, #0x28]
07d5d5a8: ldr      x8, [x20]
07d5d5ac: mov      w1, #3
07d5d5b0: ldr      x8, [x8, #0xb8]
07d5d5b4: str      x0, [x8, #0x258]
07d5d5b8: ldr      x0, [x21]
07d5d5bc: bl       #0x39d3534
07d5d5c0: cbz      x0, #0x7d5d798
07d5d5c4: ldr      w8, [x0, #0x18]
07d5d5c8: cbz      w8, #0x7d5d794
07d5d5cc: mov      w9, #-0x123d
07d5d5d0: cmp      w8, #1
07d5d5d4: str      w9, [x0, #0x20]
07d5d5d8: b.eq     #0x7d5d794
07d5d5dc: mov      w9, #0xbf9c
07d5d5e0: movk     w9, #0xffc7, lsl #16
07d5d5e4: cmp      w8, #2
07d5d5e8: str      w9, [x0, #0x24]
07d5d5ec: b.ls     #0x7d5d794
07d5d5f0: str      w19, [x0, #0x28]
07d5d5f4: ldr      x8, [x20]
07d5d5f8: mov      w1, #3
07d5d5fc: ldr      x8, [x8, #0xb8]
07d5d600: str      x0, [x8, #0x260]
07d5d604: ldr      x0, [x21]
07d5d608: bl       #0x39d3534
07d5d60c: cbz      x0, #0x7d5d798
07d5d610: ldr      w8, [x0, #0x18]
07d5d614: cbz      w8, #0x7d5d794
07d5d618: mov      w9, #0xd1ff
07d5d61c: movk     w9, #0xff8b, lsl #16
07d5d620: cmp      w8, #1
07d5d624: str      w9, [x0, #0x20]
07d5d628: b.eq     #0x7d5d794
07d5d62c: mov      w9, #0xb8f4
07d5d630: movk     w9, #0xff4c, lsl #16
07d5d634: cmp      w8, #2
07d5d638: str      w9, [x0, #0x24]
07d5d63c: b.ls     #0x7d5d794
07d5d640: mov      w8, #0x1e2e
07d5d644: movk     w8, #0xff04, lsl #16
07d5d648: str      w8, [x0, #0x28]
07d5d64c: ldr      x8, [x20]
07d5d650: mov      w1, #2
07d5d654: ldr      x8, [x8, #0xb8]
07d5d658: str      x0, [x8, #0x268]
07d5d65c: ldr      x0, [x21]
07d5d660: bl       #0x39d3534
07d5d664: cbz      x0, #0x7d5d798
07d5d668: ldr      w8, [x0, #0x18]
07d5d66c: cbz      w8, #0x7d5d794
07d5d670: cmp      w8, #1
07d5d674: str      w22, [x0, #0x20]
07d5d678: b.eq     #0x7d5d794
07d5d67c: mov      w8, #0x1828
07d5d680: movk     w8, #0xff12, lsl #16
07d5d684: str      w8, [x0, #0x24]
07d5d688: ldr      x8, [x20]
07d5d68c: mov      w1, #2
07d5d690: ldr      x8, [x8, #0xb8]
07d5d694: str      x0, [x8, #0x270]
07d5d698: ldr      x0, [x21]
07d5d69c: bl       #0x39d3534
07d5d6a0: cbz      x0, #0x7d5d798
07d5d6a4: ldr      w8, [x0, #0x18]
07d5d6a8: cbz      w8, #0x7d5d794
07d5d6ac: mov      w9, #0xc193
07d5d6b0: movk     w9, #0xffc9, lsl #16
07d5d6b4: cmp      w8, #1
07d5d6b8: str      w9, [x0, #0x20]
07d5d6bc: b.eq     #0x7d5d794
07d5d6c0: mov      w8, #0x1d12
07d5d6c4: movk     w8, #0xff1e, lsl #16
07d5d6c8: str      w8, [x0, #0x24]
07d5d6cc: ldr      x8, [x20]
07d5d6d0: mov      w1, #2
07d5d6d4: ldr      x8, [x8, #0xb8]
07d5d6d8: str      x0, [x8, #0x278]
07d5d6dc: ldr      x0, [x21]
07d5d6e0: bl       #0x39d3534
07d5d6e4: cbz      x0, #0x7d5d798
07d5d6e8: ldr      w8, [x0, #0x18]
07d5d6ec: cbz      w8, #0x7d5d794
07d5d6f0: mov      w9, #0xb6ff
07d5d6f4: movk     w9, #0xff2a, lsl #16
07d5d6f8: cmp      w8, #1
07d5d6fc: str      w9, [x0, #0x20]
07d5d700: b.eq     #0x7d5d794
07d5d704: mov      w8, #0x1a24
07d5d708: movk     w8, #0xff0f, lsl #16
07d5d70c: str      w8, [x0, #0x24]
07d5d710: ldr      x8, [x20]
07d5d714: mov      w1, #3
07d5d718: ldr      x8, [x8, #0xb8]
07d5d71c: str      x0, [x8, #0x280]
07d5d720: ldr      x0, [x21]
07d5d724: bl       #0x39d3534
07d5d728: cbz      x0, #0x7d5d798
07d5d72c: ldr      w8, [x0, #0x18]
07d5d730: cbz      w8, #0x7d5d794
07d5d734: mov      w9, #0xffa6
07d5d738: movk     w9, #0xff2d, lsl #16
07d5d73c: cmp      w8, #1
07d5d740: str      w9, [x0, #0x20]
07d5d744: b.eq     #0x7d5d794
07d5d748: mov      w9, #0xcee3
07d5d74c: movk     w9, #0xff35, lsl #16
07d5d750: cmp      w8, #2
07d5d754: str      w9, [x0, #0x24]
07d5d758: b.ls     #0x7d5d794
07d5d75c: mov      w8, #0x40dc
07d5d760: movk     w8, #0xff41, lsl #16
07d5d764: str      w8, [x0, #0x28]
07d5d768: ldr      x8, [x20]
07d5d76c: ldp      x20, x19, [sp, #0x1c0]
07d5d770: ldp      x22, x21, [sp, #0x1b0]
07d5d774: ldp      x24, x23, [sp, #0x1a0]
07d5d778: ldr      x8, [x8, #0xb8]
07d5d77c: ldp      x30, x25, [sp, #0x190]
07d5d780: ldr      x29, [sp, #0x188]
07d5d784: ldr      d8, [sp, #0x180]
07d5d788: str      x0, [x8, #0x288]
07d5d78c: add      sp, sp, #0x1d0
07d5d790: ret      
07d5d794: bl       #0x39d36ec
07d5d798: bl       #0x39d36e4