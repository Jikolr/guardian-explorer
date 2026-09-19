03bbbb40: stp      x30, x21, [sp, #-0x20]!
03bbbb44: stp      x20, x19, [sp, #0x10]
03bbbb48: adrp     x21, #0xa25e000
03bbbb4c: ldrb     w8, [x21, #0x2e5]
03bbbb50: mov      x19, x1
03bbbb54: mov      x20, x0
03bbbb58: tbnz     w8, #0, #0x3bbbb7c
03bbbb5c: adrp     x0, #0x9b45000
03bbbb60: ldr      x0, [x0, #0x438]
03bbbb64: bl       #0x39d34bc
03bbbb68: adrp     x0, #0x9b44000
03bbbb6c: ldr      x0, [x0, #0xe90]
03bbbb70: bl       #0x39d34bc
03bbbb74: mov      w8, #1
03bbbb78: strb     w8, [x21, #0x2e5]
03bbbb7c: mov      w0, #0x753
03bbbb80: mov      x1, xzr
03bbbb84: bl       #0x3bd8b58
03bbbb88: tbz      w0, #0, #0x3bbbbb4
03bbbb8c: mov      w0, #0x753
03bbbb90: mov      x1, xzr
03bbbb94: bl       #0x3bd8adc
03bbbb98: cbz      x0, #0x3bbbc28
03bbbb9c: mov      x1, x20
03bbbba0: mov      x2, x19
03bbbba4: ldp      x20, x19, [sp, #0x10]
03bbbba8: mov      x3, xzr
03bbbbac: ldp      x30, x21, [sp], #0x20
03bbbbb0: b        #0x3bc32e8
03bbbbb4: mov      x0, x19
03bbbbb8: mov      x1, xzr
03bbbbbc: bl       #0x3bc85cc
03bbbbc0: cbz      x19, #0x3bbbc28
03bbbbc4: adrp     x8, #0x9b45000
03bbbbc8: ldr      x1, [x20, #0x90]
03bbbbcc: ldr      x8, [x8, #0x438]
03bbbbd0: mov      x21, x0
03bbbbd4: mov      x0, x19
03bbbbd8: ldr      x2, [x8]
03bbbbdc: bl       #0x4056b14
03bbbbe0: cmp      w0, #1
03bbbbe4: b.lt     #0x3bbbc08
03bbbbe8: cbz      x21, #0x3bbbc28
03bbbbec: mov      w1, w0
03bbbbf0: mov      x0, x21
03bbbbf4: mov      x2, xzr
03bbbbf8: bl       #0x8c39b9c
03bbbbfc: tbz      w0, #0, #0x3bbbc08
03bbbc00: ldr      x1, [x20, #0x98]
03bbbc04: b        #0x3bbbc0c
03bbbc08: ldr      x1, [x20, #0xa0]
03bbbc0c: adrp     x8, #0x9b44000
03bbbc10: ldr      x8, [x8, #0xe90]
03bbbc14: mov      x0, x19
03bbbc18: ldp      x20, x19, [sp, #0x10]
03bbbc1c: ldr      x2, [x8]
03bbbc20: ldp      x30, x21, [sp], #0x20
03bbbc24: b        #0x4056d94
03bbbc28: bl       #0x39d36e4