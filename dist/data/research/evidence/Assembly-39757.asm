0622fd58: sub      sp, sp, #0x140
0622fd5c: stp      x29, x30, [sp, #0x120]
0622fd60: stp      x20, x19, [sp, #0x130]
0622fd64: mov      x19, x0
0622fd68: add      x8, sp, #0xe0
0622fd6c: fmov     s0, #1.00000000
0622fd70: mov      x0, xzr
0622fd74: add      x20, sp, #0xa0
0622fd78: bl       #0x3ac68b0
0622fd7c: ldr      x8, [sp, #0xf0]
0622fd80: ldr      q0, [x20, #0x40]
0622fd84: mov      x0, xzr
0622fd88: str      x8, [sp, #0x110]
0622fd8c: str      q0, [x20, #0x60]
0622fd90: str      x8, [x19, #0x20]
0622fd94: str      q0, [x19, #0x10]
0622fd98: add      x8, sp, #0xc0
0622fd9c: fmov     s0, #1.00000000
0622fda0: bl       #0x3ac68b0
0622fda4: ldr      x8, [sp, #0xd0]
0622fda8: ldr      q0, [x20, #0x20]
0622fdac: mov      x0, xzr
0622fdb0: str      x8, [sp, #0xf0]
0622fdb4: str      q0, [x20, #0x40]
0622fdb8: str      x8, [x19, #0x38]
0622fdbc: stur     q0, [x19, #0x28]
0622fdc0: add      x8, sp, #0xa0
0622fdc4: fmov     s0, #1.00000000
0622fdc8: bl       #0x3ac68b0
0622fdcc: ldr      x8, [sp, #0xb0]
0622fdd0: ldr      q0, [x20]
0622fdd4: mov      x0, xzr
0622fdd8: str      x8, [sp, #0xd0]
0622fddc: str      q0, [x20, #0x20]
0622fde0: str      x8, [x19, #0x50]
0622fde4: str      q0, [x19, #0x40]
0622fde8: add      x8, sp, #0x80
0622fdec: fmov     s0, #1.00000000
0622fdf0: bl       #0x3ac68b0
0622fdf4: ldr      x8, [sp, #0x90]
0622fdf8: ldr      q0, [sp, #0x80]
0622fdfc: mov      x0, xzr
0622fe00: str      x8, [sp, #0xb0]
0622fe04: str      q0, [x20]
0622fe08: str      x8, [x19, #0x68]
0622fe0c: stur     q0, [x19, #0x58]
0622fe10: add      x8, sp, #0x60
0622fe14: fmov     s0, #1.00000000
0622fe18: bl       #0x3ac68b0
0622fe1c: ldr      x8, [sp, #0x70]
0622fe20: ldr      q0, [sp, #0x60]
0622fe24: mov      x0, xzr
0622fe28: str      x8, [sp, #0x90]
0622fe2c: str      q0, [sp, #0x80]
0622fe30: str      x8, [x19, #0x80]
0622fe34: str      q0, [x19, #0x70]
0622fe38: add      x8, sp, #0x40
0622fe3c: fmov     s0, #1.00000000
0622fe40: bl       #0x3ac68b0
0622fe44: ldr      x8, [sp, #0x50]
0622fe48: ldr      q0, [sp, #0x40]
0622fe4c: mov      x0, xzr
0622fe50: str      x8, [sp, #0x70]
0622fe54: str      q0, [sp, #0x60]
0622fe58: str      x8, [x19, #0x98]
0622fe5c: stur     q0, [x19, #0x88]
0622fe60: add      x8, sp, #0x20
0622fe64: fmov     s0, #1.00000000
0622fe68: bl       #0x3ac68b0
0622fe6c: ldr      x8, [sp, #0x30]
0622fe70: ldr      q0, [sp, #0x20]
0622fe74: mov      x0, xzr
0622fe78: str      x8, [sp, #0x50]
0622fe7c: str      q0, [sp, #0x40]
0622fe80: str      x8, [x19, #0xb0]
0622fe84: str      q0, [x19, #0xa0]
0622fe88: add      x8, sp, #8
0622fe8c: fmov     s0, #1.00000000
0622fe90: bl       #0x3ac68b0
0622fe94: ldr      x8, [sp, #0x18]
0622fe98: ldur     q0, [sp, #8]
0622fe9c: mov      x0, x19
0622fea0: mov      x1, xzr
0622fea4: str      x8, [sp, #0x30]
0622fea8: str      q0, [sp, #0x20]
0622feac: str      x8, [x19, #0xc8]
0622feb0: stur     q0, [x19, #0xb8]
0622feb4: bl       #0x5c9bdb4
0622feb8: ldp      x20, x19, [sp, #0x130]
0622febc: ldp      x29, x30, [sp, #0x120]
0622fec0: add      sp, sp, #0x140
0622fec4: ret      