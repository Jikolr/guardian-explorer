03bad2bc: stp      d9, d8, [sp, #-0x40]!
03bad2c0: str      x30, [sp, #0x10]
03bad2c4: stp      x22, x21, [sp, #0x20]
03bad2c8: stp      x20, x19, [sp, #0x30]
03bad2cc: adrp     x21, #0xa25e000
03bad2d0: ldrb     w8, [x21, #0x24c]
03bad2d4: mov      x19, x1
03bad2d8: mov      x20, x0
03bad2dc: tbnz     w8, #0, #0x3bad300
03bad2e0: adrp     x0, #0x9b44000
03bad2e4: ldr      x0, [x0, #0xe90]
03bad2e8: bl       #0x39d34bc
03bad2ec: adrp     x0, #0x9b44000
03bad2f0: ldr      x0, [x0, #0xda8]
03bad2f4: bl       #0x39d34bc
03bad2f8: mov      w8, #1
03bad2fc: strb     w8, [x21, #0x24c]
03bad300: mov      w0, #0x522
03bad304: mov      x1, xzr
03bad308: bl       #0x3bd8b58
03bad30c: tbz      w0, #0, #0x3bad340
03bad310: mov      w0, #0x522
03bad314: mov      x1, xzr
03bad318: bl       #0x3bd8adc
03bad31c: cbz      x0, #0x3bad42c
03bad320: mov      x1, x20
03bad324: mov      x2, x19
03bad328: ldp      x20, x19, [sp, #0x30]
03bad32c: ldp      x22, x21, [sp, #0x20]
03bad330: ldr      x30, [sp, #0x10]
03bad334: mov      x3, xzr
03bad338: ldp      d9, d8, [sp], #0x40
03bad33c: b        #0x3bc32e8
03bad340: mov      x0, x19
03bad344: mov      x1, xzr
03bad348: bl       #0x3bc7cec
03bad34c: cbz      x19, #0x3bad42c
03bad350: adrp     x22, #0x9b44000
03bad354: ldr      x1, [x20, #0x90]
03bad358: ldr      x22, [x22, #0xe90]
03bad35c: mov      x21, x0
03bad360: mov      x0, x19
03bad364: ldr      x2, [x22]
03bad368: bl       #0x4056d94
03bad36c: ldr      x1, [x20, #0x98]
03bad370: ldr      x2, [x22]
03bad374: mov      x0, x19
03bad378: mov      v8.16b, v0.16b
03bad37c: bl       #0x4056d94
03bad380: cbz      x21, #0x3bad42c
03bad384: adrp     x10, #0x9b44000
03bad388: ldr      x8, [x21]
03bad38c: ldr      x10, [x10, #0xda8]
03bad390: mov      v9.16b, v0.16b
03bad394: ldrh     w9, [x8, #0x12e]
03bad398: ldr      x1, [x10]
03bad39c: cbz      x9, #0x3bad3c0
03bad3a0: ldr      x10, [x8, #0xb0]
03bad3a4: add      x10, x10, #8
03bad3a8: ldur     x11, [x10, #-8]
03bad3ac: cmp      x11, x1
03bad3b0: b.eq     #0x3bad3d0
03bad3b4: subs     x9, x9, #1
03bad3b8: add      x10, x10, #0x10
03bad3bc: b.ne     #0x3bad3a8
03bad3c0: mov      w2, #4
03bad3c4: mov      x0, x21
03bad3c8: bl       #0x39a94f0
03bad3cc: b        #0x3bad3e0
03bad3d0: ldr      w9, [x10]
03bad3d4: add      w9, w9, #4
03bad3d8: add      x8, x8, w9, sxtw #4
03bad3dc: add      x0, x8, #0x138
03bad3e0: ldp      x8, x1, [x0]
03bad3e4: mov      x0, x21
03bad3e8: blr      x8
03bad3ec: ldr      x1, [x20, #0xa0]
03bad3f0: ldr      x2, [x22]
03bad3f4: scvtf    s0, w0
03bad3f8: fmul     s0, s9, s0
03bad3fc: mov      x0, x19
03bad400: fadd     s8, s8, s0
03bad404: bl       #0x4056d94
03bad408: mov      x0, x21
03bad40c: ldp      x20, x19, [sp, #0x30]
03bad410: ldp      x22, x21, [sp, #0x20]
03bad414: ldr      x30, [sp, #0x10]
03bad418: mov      v1.16b, v0.16b
03bad41c: mov      v0.16b, v8.16b
03bad420: mov      x1, xzr
03bad424: ldp      d9, d8, [sp], #0x40
03bad428: b        #0x669d0bc
03bad42c: bl       #0x39d36e4