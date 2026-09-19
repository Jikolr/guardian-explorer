08c0fe88: str      x30, [sp, #-0x30]!
08c0fe8c: stp      x22, x21, [sp, #0x10]
08c0fe90: stp      x20, x19, [sp, #0x20]
08c0fe94: adrp     x21, #0xa279000
08c0fe98: adrp     x22, #0x9c44000
08c0fe9c: adrp     x19, #0x9c44000
08c0fea0: adrp     x20, #0x9c43000
08c0fea4: ldrb     w8, [x21, #0x653]
08c0fea8: ldr      x22, [x22, #0xc60]
08c0feac: ldr      x19, [x19, #0xc68]
08c0feb0: ldr      x20, [x20, #0x640]
08c0feb4: tbnz     w8, #0, #0x8c0fee4
08c0feb8: adrp     x0, #0x9c43000
08c0febc: ldr      x0, [x0, #0x640]
08c0fec0: bl       #0x39d34bc
08c0fec4: adrp     x0, #0x9c44000
08c0fec8: ldr      x0, [x0, #0xc68]
08c0fecc: bl       #0x39d34bc
08c0fed0: adrp     x0, #0x9c44000
08c0fed4: ldr      x0, [x0, #0xc60]
08c0fed8: bl       #0x39d34bc
08c0fedc: mov      w8, #1
08c0fee0: strb     w8, [x21, #0x653]
08c0fee4: ldr      x0, [x22]
08c0fee8: bl       #0x39d36d8
08c0feec: ldr      x1, [x19]
08c0fef0: mov      x19, x0
08c0fef4: bl       #0x4f51940
08c0fef8: ldr      x8, [x20]
08c0fefc: ldp      x22, x21, [sp, #0x10]
08c0ff00: ldr      x8, [x8, #0xb8]
08c0ff04: str      x19, [x8]
08c0ff08: ldp      x20, x19, [sp, #0x20]
08c0ff0c: ldr      x30, [sp], #0x30
08c0ff10: ret      