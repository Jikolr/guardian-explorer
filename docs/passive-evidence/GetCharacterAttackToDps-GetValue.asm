03baf84c: stp      x30, x21, [sp, #-0x20]!
03baf850: stp      x20, x19, [sp, #0x10]
03baf854: adrp     x21, #0xa25e000
03baf858: ldrb     w8, [x21, #0x260]
03baf85c: mov      x19, x1
03baf860: mov      x20, x0
03baf864: tbnz     w8, #0, #0x3baf888
03baf868: adrp     x0, #0x9b45000
03baf86c: ldr      x0, [x0, #0x3f8]
03baf870: bl       #0x39d34bc
03baf874: adrp     x0, #0x9b44000
03baf878: ldr      x0, [x0, #0xe98]
03baf87c: bl       #0x39d34bc
03baf880: mov      w8, #1
03baf884: strb     w8, [x21, #0x260]
03baf888: mov      w0, #0x57b
03baf88c: mov      x1, xzr
03baf890: bl       #0x3bd8b58
03baf894: tbz      w0, #0, #0x3baf8c0
03baf898: mov      w0, #0x57b
03baf89c: mov      x1, xzr
03baf8a0: bl       #0x3bd8adc
03baf8a4: cbz      x0, #0x3baf930
03baf8a8: mov      x1, x20
03baf8ac: mov      x2, x19
03baf8b0: ldp      x20, x19, [sp, #0x10]
03baf8b4: mov      x3, xzr
03baf8b8: ldp      x30, x21, [sp], #0x20
03baf8bc: b        #0x3bc32e8
03baf8c0: cbz      x19, #0x3baf930
03baf8c4: adrp     x8, #0x9b44000
03baf8c8: ldr      x1, [x20, #0x90]
03baf8cc: ldr      x8, [x8, #0xe98]
03baf8d0: mov      x0, x19
03baf8d4: ldr      x2, [x8]
03baf8d8: bl       #0x4056cc4
03baf8dc: cbz      x0, #0x3baf930
03baf8e0: ldr      x8, [x0, #0x10]
03baf8e4: cbz      x8, #0x3baf930
03baf8e8: adrp     x9, #0x9b45000
03baf8ec: ldr      x9, [x9, #0x3f8]
03baf8f0: ldr      x10, [x8]
03baf8f4: ldr      x9, [x9]
03baf8f8: ldrb     w12, [x10, #0x130]
03baf8fc: ldrb     w11, [x9, #0x130]
03baf900: cmp      w12, w11
03baf904: b.lo     #0x3baf930
03baf908: ldr      x10, [x10, #0xc8]
03baf90c: add      x10, x10, x11, lsl #3
03baf910: ldur     x10, [x10, #-8]
03baf914: cmp      x10, x9
03baf918: b.ne     #0x3baf930
03baf91c: ldp      x0, x1, [x8, #0x188]
03baf920: ldp      x20, x19, [sp, #0x10]
03baf924: mov      x2, xzr
03baf928: ldp      x30, x21, [sp], #0x20
03baf92c: b        #0x75a2400
03baf930: bl       #0x39d36e4