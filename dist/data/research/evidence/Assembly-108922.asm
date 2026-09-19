0759ce78: sub      sp, sp, #0x50
0759ce7c: stp      x30, x21, [sp, #0x30]
0759ce80: stp      x20, x19, [sp, #0x40]
0759ce84: adrp     x21, #0xa26e000
0759ce88: ldrb     w8, [x21, #0x54f]
0759ce8c: mov      x20, x1
0759ce90: mov      w19, w0
0759ce94: tbnz     w8, #0, #0x759ceb8
0759ce98: adrp     x0, #0x9b81000
0759ce9c: ldr      x0, [x0, #0x188]
0759cea0: bl       #0x39d34bc
0759cea4: adrp     x0, #0x9b81000
0759cea8: ldr      x0, [x0, #0x190]
0759ceac: bl       #0x39d34bc
0759ceb0: mov      w8, #1
0759ceb4: strb     w8, [x21, #0x54f]
0759ceb8: ldr      x0, [x20]
0759cebc: cbz      x0, #0x759cf24
0759cec0: ldr      w8, [x0, #0x18]
0759cec4: cmp      w8, w19
0759cec8: b.le     #0x759cf10
0759cecc: adrp     x8, #0x9b81000
0759ced0: ldr      w20, [x20, #8]
0759ced4: ldr      x8, [x8, #0x190]
0759ced8: mov      w1, w19
0759cedc: ldr      x2, [x8]
0759cee0: add      x8, sp, #0x18
0759cee4: bl       #0x474e8d0
0759cee8: ldur     q0, [sp, #0x18]
0759ceec: ldr      w8, [sp, #0x28]
0759cef0: mov      x0, sp
0759cef4: mov      x1, xzr
0759cef8: str      q0, [sp]
0759cefc: str      w8, [sp, #0x10]
0759cf00: bl       #0x3ac6fb0
0759cf04: cmp      w20, w0
0759cf08: cset     w0, ge
0759cf0c: b        #0x759cf14
0759cf10: mov      w0, wzr
0759cf14: ldp      x20, x19, [sp, #0x40]
0759cf18: ldp      x30, x21, [sp, #0x30]
0759cf1c: add      sp, sp, #0x50
0759cf20: ret      
0759cf24: bl       #0x39d36e4