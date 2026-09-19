08bba280: str      x30, [sp, #-0x30]!
08bba284: stp      x22, x21, [sp, #0x10]
08bba288: stp      x20, x19, [sp, #0x20]
08bba28c: adrp     x21, #0xa279000
08bba290: adrp     x22, #0x9c43000
08bba294: adrp     x19, #0x9c43000
08bba298: adrp     x20, #0x9c43000
08bba29c: ldrb     w8, [x21, #0x394]
08bba2a0: ldr      x22, [x22, #0x960]
08bba2a4: ldr      x19, [x19, #0x968]
08bba2a8: ldr      x20, [x20, #0x458]
08bba2ac: tbnz     w8, #0, #0x8bba2dc
08bba2b0: adrp     x0, #0x9c43000
08bba2b4: ldr      x0, [x0, #0x458]
08bba2b8: bl       #0x39d34bc
08bba2bc: adrp     x0, #0x9c43000
08bba2c0: ldr      x0, [x0, #0x968]
08bba2c4: bl       #0x39d34bc
08bba2c8: adrp     x0, #0x9c43000
08bba2cc: ldr      x0, [x0, #0x960]
08bba2d0: bl       #0x39d34bc
08bba2d4: mov      w8, #1
08bba2d8: strb     w8, [x21, #0x394]
08bba2dc: ldr      x0, [x22]
08bba2e0: bl       #0x39d36d8
08bba2e4: ldr      x1, [x19]
08bba2e8: mov      x19, x0
08bba2ec: bl       #0x4f51940
08bba2f0: ldr      x8, [x20]
08bba2f4: ldp      x22, x21, [sp, #0x10]
08bba2f8: ldr      x8, [x8, #0xb8]
08bba2fc: str      x19, [x8]
08bba300: ldp      x20, x19, [sp, #0x20]
08bba304: ldr      x30, [sp], #0x30
08bba308: ret      