// Foundations.EncryptStream..ctor 0x7c78c30
07c78c30: stp      x30, x25, [sp, #-0x40]!
07c78c34: stp      x24, x23, [sp, #0x10]
07c78c38: stp      x22, x21, [sp, #0x20]
07c78c3c: stp      x20, x19, [sp, #0x30]
07c78c40: adrp     x25, #0xa271000
07c78c44: adrp     x24, #0x9b5a000
07c78c48: ldrb     w8, [x25, #0x925]
07c78c4c: ldr      x24, [x24, #0xe08]
07c78c50: mov      w22, w4
07c78c54: mov      w19, w3
07c78c58: mov      w21, w2
07c78c5c: mov      x23, x1
07c78c60: mov      x20, x0
07c78c64: tbnz     w8, #0, #0x7c78c7c
07c78c68: adrp     x0, #0x9b5a000
07c78c6c: ldr      x0, [x0, #0xe08]
07c78c70: bl       #0x39d34bc
07c78c74: mov      w8, #1
07c78c78: strb     w8, [x25, #0x925]
07c78c7c: ldr      x0, [x24]
07c78c80: ldr      w8, [x0, #0xe0]
07c78c84: cbnz     w8, #0x7c78c8c
07c78c88: bl       #0x39d35c4
07c78c8c: mov      x0, x20
07c78c90: mov      x1, xzr
07c78c94: bl       #0x5bc7624
07c78c98: cbz      w21, #0x7c78cec
07c78c9c: cmp      w21, #1
07c78ca0: b.ne     #0x7c78d48
07c78ca4: cbz      x23, #0x7c78d7c
07c78ca8: ldr      x0, [x24]
07c78cac: ldr      w8, [x0, #0xe0]
07c78cb0: cbnz     w8, #0x7c78cb8
07c78cb4: bl       #0x39d35c4
07c78cb8: ldr      x8, [x23]
07c78cbc: mov      x0, x23
07c78cc0: ldp      x9, x1, [x8, #0x1d8]
07c78cc4: blr      x9
07c78cc8: tbnz     w0, #0, #0x7c78d4c
07c78ccc: adrp     x0, #0x9b42000
07c78cd0: ldr      x0, [x0, #0xc08]
07c78cd4: bl       #0x39d34d0
07c78cd8: bl       #0x39d36d8
07c78cdc: mov      x19, x0
07c78ce0: adrp     x0, #0x9c0a000
07c78ce4: ldr      x0, [x0, #0x210]
07c78ce8: b        #0x7c78d30
07c78cec: cbz      x23, #0x7c78d7c
07c78cf0: ldr      x0, [x24]
07c78cf4: ldr      w8, [x0, #0xe0]
07c78cf8: cbnz     w8, #0x7c78d00
07c78cfc: bl       #0x39d35c4
07c78d00: ldr      x8, [x23]
07c78d04: mov      x0, x23
07c78d08: ldp      x9, x1, [x8, #0x1a8]
07c78d0c: blr      x9
07c78d10: tbnz     w0, #0, #0x7c78d4c
07c78d14: adrp     x0, #0x9b42000
07c78d18: ldr      x0, [x0, #0xc08]
07c78d1c: bl       #0x39d34d0
07c78d20: bl       #0x39d36d8
07c78d24: mov      x19, x0
07c78d28: adrp     x0, #0x9c0a000
07c78d2c: ldr      x0, [x0, #0x218]
07c78d30: bl       #0x39d34d0
07c78d34: mov      x1, x0
07c78d38: mov      x0, x19
07c78d3c: mov      x2, xzr
07c78d40: bl       #0x5bb2cb4
07c78d44: b        #0x7c78db0
07c78d48: cbz      x23, #0x7c78d80
07c78d4c: cbz      x20, #0x7c78d7c
07c78d50: and      w8, w22, #1
07c78d54: str      x23, [x20, #0x28]
07c78d58: str      w21, [x20, #0x30]
07c78d5c: str      w19, [x20, #0x38]
07c78d60: strb     w8, [x20, #0x34]
07c78d64: mov      x0, x20
07c78d68: ldp      x20, x19, [sp, #0x30]
07c78d6c: ldp      x22, x21, [sp, #0x20]
07c78d70: ldp      x24, x23, [sp, #0x10]
07c78d74: ldp      x30, x25, [sp], #0x40
07c78d78: b        #0x7c78dc8 ; Foundations.EncryptStream.Initialize
07c78d7c: bl       #0x39d36e4
07c78d80: adrp     x0, #0x9b3f000
07c78d84: ldr      x0, [x0, #0x920]
07c78d88: bl       #0x39d34d0
07c78d8c: bl       #0x39d36d8
07c78d90: mov      x19, x0
07c78d94: adrp     x0, #0x9b5a000
07c78d98: ldr      x0, [x0, #0xe30]
07c78d9c: bl       #0x39d34d0
07c78da0: mov      x1, x0
07c78da4: mov      x0, x19
07c78da8: mov      x2, xzr
07c78dac: bl       #0x5bac3f8
07c78db0: adrp     x0, #0x9c0a000
07c78db4: ldr      x0, [x0, #0x220]
07c78db8: bl       #0x39d34d0
07c78dbc: mov      x1, x0
07c78dc0: mov      x0, x19
07c78dc4: bl       #0x39d35b4

// Foundations.EncryptStream.Initialize 0x7c78dc8
07c78dc8: str      x30, [sp, #-0x40]!
07c78dcc: stp      x24, x23, [sp, #0x10]
07c78dd0: stp      x22, x21, [sp, #0x20]
07c78dd4: stp      x20, x19, [sp, #0x30]
07c78dd8: adrp     x20, #0xa271000
07c78ddc: ldrb     w8, [x20, #0x926]
07c78de0: mov      x19, x0
07c78de4: tbnz     w8, #0, #0x7c78e5c
07c78de8: adrp     x0, #0x9b3f000
07c78dec: ldr      x0, [x0, #0x738]
07c78df0: bl       #0x39d34bc
07c78df4: adrp     x0, #0x9b4c000
07c78df8: ldr      x0, [x0, #0x28]
07c78dfc: bl       #0x39d34bc
07c78e00: adrp     x0, #0x9b4b000
07c78e04: ldr      x0, [x0, #0xbb0]
07c78e08: bl       #0x39d34bc
07c78e0c: adrp     x0, #0x9b3f000
07c78e10: ldr      x0, [x0, #0xed8]
07c78e14: bl       #0x39d34bc
07c78e18: adrp     x0, #0x9b4c000
07c78e1c: ldr      x0, [x0, #0x58]
07c78e20: bl       #0x39d34bc
07c78e24: adrp     x0, #0x9b4c000
07c78e28: ldr      x0, [x0, #0x30]
07c78e2c: bl       #0x39d34bc
07c78e30: adrp     x0, #0x9b4c000
07c78e34: ldr      x0, [x0, #0x38]
07c78e38: bl       #0x39d34bc
07c78e3c: adrp     x0, #0x9b4c000
07c78e40: ldr      x0, [x0, #0x40]
07c78e44: bl       #0x39d34bc
07c78e48: adrp     x0, #0x9b4c000
07c78e4c: ldr      x0, [x0, #0x48]
07c78e50: bl       #0x39d34bc
07c78e54: mov      w8, #1
07c78e58: strb     w8, [x20, #0x926]
07c78e5c: mov      w0, #0x20c
07c78e60: mov      x1, xzr
07c78e64: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c78e68: tbz      w0, #0, #0x7c78e98
07c78e6c: mov      w0, #0x20c
07c78e70: mov      x1, xzr
07c78e74: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c78e78: cbz      x0, #0x7c79494
07c78e7c: mov      x1, x19
07c78e80: ldp      x20, x19, [sp, #0x30]
07c78e84: ldp      x22, x21, [sp, #0x20]
07c78e88: ldp      x24, x23, [sp, #0x10]
07c78e8c: mov      x2, xzr
07c78e90: ldr      x30, [sp], #0x40
07c78e94: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
07c78e98: adrp     x24, #0x9b3f000
07c78e9c: ldr      x24, [x24, #0x738]
07c78ea0: mov      w1, #0x10
07c78ea4: ldr      x0, [x24]
07c78ea8: bl       #0x39d3534
07c78eac: ldr      w8, [x19, #0x30]
07c78eb0: mov      x20, x0
07c78eb4: cmp      w8, #1
07c78eb8: b.ne     #0x7c7906c
07c78ebc: adrp     x8, #0x9b4c000
07c78ec0: ldr      x8, [x8, #0x58]
07c78ec4: ldr      x0, [x8]
07c78ec8: bl       #0x39d36d8
07c78ecc: mov      x1, xzr
07c78ed0: mov      x21, x0
07c78ed4: bl       #0x5b13aac
07c78ed8: cbz      x21, #0x7c794ac
07c78edc: ldr      x8, [x21]
07c78ee0: ldp      x9, x2, [x8, #0x198]
07c78ee4: mov      x0, x21
07c78ee8: mov      x1, x20
07c78eec: blr      x9
07c78ef0: ldr      w0, [x19, #0x38]
07c78ef4: mov      x1, xzr
07c78ef8: bl       #0x5bb5144
07c78efc: mov      x22, x0
07c78f00: mov      x0, xzr
07c78f04: bl       #0x5add840
07c78f08: cbz      x0, #0x7c794b8
07c78f0c: adrp     x9, #0x9b4c000
07c78f10: ldr      x8, [x0]
07c78f14: ldr      x9, [x9, #0x48]
07c78f18: ldr      x2, [x8, #0x270]
07c78f1c: ldr      x1, [x9]
07c78f20: ldr      x9, [x8, #0x268]
07c78f24: blr      x9
07c78f28: cbz      x22, #0x7c794bc
07c78f2c: ldr      w8, [x22, #0x18]
07c78f30: cbz      w8, #0x7c794c0
07c78f34: cbz      x0, #0x7c794c4
07c78f38: ldr      w8, [x0, #0x18]
07c78f3c: cbz      w8, #0x7c794c8
07c78f40: cbz      x20, #0x7c794cc
07c78f44: ldr      w8, [x20, #0x18]
07c78f48: cmp      w8, #0xf
07c78f4c: b.ls     #0x7c794d0
07c78f50: ldrb     w8, [x22, #0x20]
07c78f54: ldrb     w9, [x0, #0x20]
07c78f58: eor      w8, w9, w8
07c78f5c: strb     w8, [x20, #0x2f]
07c78f60: ldr      w8, [x22, #0x18]
07c78f64: cmp      w8, #1
07c78f68: b.ls     #0x7c794d4
07c78f6c: ldr      w8, [x0, #0x18]
07c78f70: cmp      w8, #1
07c78f74: b.ls     #0x7c794d8
07c78f78: ldrb     w8, [x22, #0x21]
07c78f7c: ldrb     w9, [x0, #0x21]
07c78f80: eor      w8, w9, w8
07c78f84: strb     w8, [x20, #0x2e]
07c78f88: ldr      w8, [x22, #0x18]
07c78f8c: cmp      w8, #2
07c78f90: b.ls     #0x7c794dc
07c78f94: ldr      w8, [x0, #0x18]
07c78f98: cmp      w8, #2
07c78f9c: b.ls     #0x7c794e0
07c78fa0: ldrb     w8, [x22, #0x22]
07c78fa4: ldrb     w9, [x0, #0x22]
07c78fa8: eor      w8, w9, w8
07c78fac: strb     w8, [x20, #0x2d]
07c78fb0: ldr      w8, [x22, #0x18]
07c78fb4: cmp      w8, #3
07c78fb8: b.ls     #0x7c794e4
07c78fbc: ldr      w8, [x0, #0x18]
07c78fc0: cmp      w8, #3
07c78fc4: b.ls     #0x7c794e8
07c78fc8: ldrb     w8, [x22, #0x23]
07c78fcc: ldrb     w9, [x0, #0x23]
07c78fd0: eor      w8, w9, w8
07c78fd4: strb     w8, [x20, #0x2c]
07c78fd8: ldr      x0, [x19, #0x28]
07c78fdc: cbz      x0, #0x7c794ec
07c78fe0: ldr      x8, [x0]
07c78fe4: ldr      x9, [x8, #0x378]
07c78fe8: ldr      x4, [x8, #0x380]
07c78fec: mov      w3, #0x10
07c78ff0: mov      x1, x20
07c78ff4: mov      w2, wzr
07c78ff8: blr      x9
07c78ffc: mov      w23, wzr
07c79000: mov      x22, xzr
07c79004: adrp     x10, #0x9b3f000
07c79008: ldr      x8, [x21]
07c7900c: b        #0x9748f10
07c79010: ldrh     w9, [x8, #0x12e]
07c79014: ldr      x1, [x10]
07c79018: cbz      x9, #0x7c7903c
07c7901c: ldr      x10, [x8, #0xb0]
07c79020: add      x10, x10, #8
07c79024: ldur     x11, [x10, #-8]
07c79028: cmp      x11, x1
07c7902c: b.eq     #0x7c7904c
07c79030: subs     x9, x9, #1
07c79034: add      x10, x10, #0x10
07c79038: b.ne     #0x7c79024
07c7903c: mov      x0, x21
07c79040: mov      w2, wzr
07c79044: bl       #0x39a94f0
07c79048: b        #0x7c79058
07c7904c: ldrsw    x9, [x10]
07c79050: add      x8, x8, x9, lsl #4
07c79054: add      x0, x8, #0x138
07c79058: ldp      x8, x1, [x0]
07c7905c: mov      x0, x21
07c79060: blr      x8
07c79064: cbnz     x22, #0x7c794b0
07c79068: cbz      w23, #0x7c791bc
07c7906c: mov      x21, xzr
07c79070: add      x22, x20, #0x20
07c79074: ldr      x0, [x19, #0x28]
07c79078: cbz      x0, #0x7c79494
07c7907c: ldr      x8, [x0]
07c79080: ldr      x9, [x8, #0x368]
07c79084: ldr      x1, [x8, #0x370]
07c79088: blr      x9
07c7908c: cbz      x20, #0x7c79494
07c79090: ldr      w8, [x20, #0x18]
07c79094: cmp      x21, x8
07c79098: b.hs     #0x7c79498
07c7909c: strb     w0, [x22, x21]
07c790a0: add      x21, x21, #1
07c790a4: cmp      x21, #0x10
07c790a8: b.ne     #0x7c79074
07c790ac: ldr      x0, [x24]
07c790b0: mov      w1, #4
07c790b4: bl       #0x39d3534
07c790b8: mov      x21, x0
07c790bc: mov      x0, xzr
07c790c0: bl       #0x5add840
07c790c4: cbz      x0, #0x7c79494
07c790c8: adrp     x9, #0x9b4c000
07c790cc: ldr      x8, [x0]
07c790d0: ldr      x9, [x9, #0x48]
07c790d4: ldr      x2, [x8, #0x270]
07c790d8: ldr      x1, [x9]
07c790dc: ldr      x9, [x8, #0x268]
07c790e0: blr      x9
07c790e4: ldr      w8, [x20, #0x18]
07c790e8: cmp      w8, #0xf
07c790ec: b.ls     #0x7c79498
07c790f0: cbz      x0, #0x7c79494
07c790f4: ldr      w8, [x0, #0x18]
07c790f8: cbz      w8, #0x7c79498
07c790fc: cbz      x21, #0x7c79494
07c79100: ldr      w8, [x21, #0x18]
07c79104: cbz      w8, #0x7c79498
07c79108: ldrb     w9, [x20, #0x2f]
07c7910c: ldrb     w10, [x0, #0x20]
07c79110: eor      w9, w10, w9
07c79114: strb     w9, [x21, #0x20]
07c79118: ldr      w9, [x20, #0x18]
07c7911c: cmp      w9, #0xe
07c79120: b.ls     #0x7c79498
07c79124: ldr      w9, [x0, #0x18]
07c79128: cmp      w9, #1
07c7912c: b.ls     #0x7c79498
07c79130: cmp      w8, #1
07c79134: b.ls     #0x7c79498
07c79138: ldrb     w9, [x20, #0x2e]
07c7913c: ldrb     w10, [x0, #0x21]
07c79140: eor      w9, w10, w9
07c79144: strb     w9, [x21, #0x21]
07c79148: ldr      w9, [x20, #0x18]
07c7914c: cmp      w9, #0xd
07c79150: b.ls     #0x7c79498
07c79154: ldr      w9, [x0, #0x18]
07c79158: cmp      w9, #2
07c7915c: b.ls     #0x7c79498
07c79160: cmp      w8, #2
07c79164: b.ls     #0x7c79498
07c79168: ldrb     w9, [x20, #0x2d]
07c7916c: ldrb     w10, [x0, #0x22]
07c79170: eor      w9, w10, w9
07c79174: strb     w9, [x21, #0x22]
07c79178: ldr      w9, [x20, #0x18]
07c7917c: cmp      w9, #0xc
07c79180: b.ls     #0x7c79498
07c79184: ldr      w9, [x0, #0x18]
07c79188: cmp      w9, #3
07c7918c: b.ls     #0x7c79498
07c79190: cmp      w8, #3
07c79194: b.ls     #0x7c79498
07c79198: ldrb     w8, [x20, #0x2c]
07c7919c: ldrb     w9, [x0, #0x23]
07c791a0: mov      x0, x21
07c791a4: mov      w1, wzr
07c791a8: mov      x2, xzr
07c791ac: eor      w8, w9, w8
07c791b0: strb     w8, [x21, #0x23]
07c791b4: bl       #0x5bb5594
07c791b8: str      w0, [x19, #0x38]
07c791bc: adrp     x8, #0x9b4c000
07c791c0: ldr      x8, [x8, #0x38]
07c791c4: ldr      x0, [x8]
07c791c8: bl       #0x39d36d8
07c791cc: mov      x1, xzr
07c791d0: mov      x21, x0
07c791d4: bl       #0x5b0679c
07c791d8: mov      x0, xzr
07c791dc: bl       #0x5adc15c
07c791e0: mov      x22, x0
07c791e4: add      x0, x19, #0x38
07c791e8: mov      x1, xzr
07c791ec: bl       #0x5c56968
07c791f0: mov      x1, x0
07c791f4: adrp     x8, #0x9b4c000
07c791f8: ldr      x8, [x8, #0x40]
07c791fc: ldr      x0, [x8]
07c79200: mov      x2, xzr
07c79204: bl       #0x5ab2818
07c79208: mov      x1, x0
07c7920c: cbz      x22, #0x7c794a4
07c79210: ldr      x8, [x22]
07c79214: ldr      x9, [x8, #0x268]
07c79218: ldr      x2, [x8, #0x270]
07c7921c: mov      x0, x22
07c79220: blr      x9
07c79224: mov      x1, x0
07c79228: cbz      x21, #0x7c794a8
07c7922c: mov      x0, x21
07c79230: mov      x2, xzr
07c79234: bl       #0x5aee744
07c79238: mov      x22, x0
07c7923c: mov      x23, xzr
07c79240: mov      w24, #7
07c79244: adrp     x10, #0x9b3f000
07c79248: ldr      x8, [x21]
07c7924c: ldr      x10, [x10, #0xed8]
07c79250: ldrh     w9, [x8, #0x12e]
07c79254: ldr      x1, [x10]
07c79258: cbz      x9, #0x7c7927c
07c7925c: ldr      x10, [x8, #0xb0]
07c79260: add      x10, x10, #8
07c79264: ldur     x11, [x10, #-8]
07c79268: cmp      x11, x1
07c7926c: b.eq     #0x7c7928c
07c79270: subs     x9, x9, #1
07c79274: add      x10, x10, #0x10
07c79278: b.ne     #0x7c79264
07c7927c: mov      x0, x21
07c79280: mov      w2, wzr
07c79284: bl       #0x39a94f0
07c79288: b        #0x7c79298
07c7928c: ldrsw    x9, [x10]
07c79290: add      x8, x8, x9, lsl #4
07c79294: add      x0, x8, #0x138
07c79298: ldp      x8, x1, [x0]
07c7929c: mov      x0, x21
07c792a0: blr      x8
07c792a4: cbnz     x23, #0x7c7949c
07c792a8: cmp      w24, #7
07c792ac: b.eq     #0x7c792b4
07c792b0: cbnz     w24, #0x7c79480
07c792b4: adrp     x8, #0x9b4c000
07c792b8: ldr      x8, [x8, #0x30]
07c792bc: ldr      x0, [x8]
07c792c0: bl       #0x39d36d8
07c792c4: mov      x1, xzr
07c792c8: mov      x21, x0
07c792cc: bl       #0x5afa4b4
07c792d0: cbz      x21, #0x7c79494
07c792d4: ldr      x8, [x21]
07c792d8: mov      w1, #0x100
07c792dc: mov      x0, x21
07c792e0: ldr      x9, [x8, #0x248]
07c792e4: ldr      x2, [x8, #0x250]
07c792e8: blr      x9
07c792ec: ldr      x8, [x21]
07c792f0: mov      w1, #0x80
07c792f4: mov      x0, x21
07c792f8: ldp      x9, x2, [x8, #0x1a8]
07c792fc: blr      x9
07c79300: ldr      x8, [x21]
07c79304: mov      w1, #1
07c79308: mov      x0, x21
07c7930c: ldr      x9, [x8, #0x268]
07c79310: ldr      x2, [x8, #0x270]
07c79314: blr      x9
07c79318: ldr      x8, [x21]
07c7931c: mov      w1, #2
07c79320: mov      x0, x21
07c79324: ldr      x9, [x8, #0x288]
07c79328: ldr      x2, [x8, #0x290]
07c7932c: blr      x9
07c79330: ldr      x8, [x21]
07c79334: mov      x0, x21
07c79338: mov      x1, x22
07c7933c: ldr      x9, [x8, #0x208]
07c79340: ldr      x2, [x8, #0x210]
07c79344: blr      x9
07c79348: ldr      x8, [x21]
07c7934c: mov      x0, x21
07c79350: mov      x1, x20
07c79354: ldp      x9, x2, [x8, #0x1e8]
07c79358: blr      x9
07c7935c: str      x21, [x19, #0x40]
07c79360: ldr      x8, [x21]
07c79364: ldr      w22, [x19, #0x30]
07c79368: mov      x0, x21
07c7936c: ldp      x9, x1, [x8, #0x1f8]
07c79370: blr      x9
07c79374: ldr      x8, [x19, #0x40]
07c79378: cbz      x8, #0x7c79494
07c7937c: ldr      x9, [x8]
07c79380: mov      x20, x0
07c79384: mov      x0, x8
07c79388: ldp      x10, x1, [x9, #0x1d8]
07c7938c: blr      x10
07c79390: ldr      x8, [x21]
07c79394: cmp      w22, #1
07c79398: mov      x2, x0
07c7939c: b.ne     #0x7c7940c
07c793a0: ldr      x9, [x8, #0x2a8]
07c793a4: ldr      x3, [x8, #0x2b0]
07c793a8: mov      x0, x21
07c793ac: mov      x1, x20
07c793b0: blr      x9
07c793b4: adrp     x8, #0x9b4c000
07c793b8: ldr      x20, [x19, #0x28]
07c793bc: ldr      x8, [x8, #0x28]
07c793c0: mov      x21, x0
07c793c4: ldr      x8, [x8]
07c793c8: mov      x0, x8
07c793cc: bl       #0x39d36d8
07c793d0: mov      w3, #1
07c793d4: mov      x1, x20
07c793d8: mov      x2, x21
07c793dc: mov      x4, xzr
07c793e0: mov      x22, x0
07c793e4: bl       #0x5ae9d78
07c793e8: str      x22, [x19, #0x48]
07c793ec: adrp     x8, #0x9b4b000
07c793f0: ldr      x8, [x8, #0xbb0]
07c793f4: ldr      x0, [x8]
07c793f8: bl       #0x39d36d8
07c793fc: mov      x20, x0
07c79400: mov      w2, #1
07c79404: mov      x1, x22
07c79408: b        #0x7c79474
07c7940c: ldr      x9, [x8, #0x2c8]
07c79410: ldr      x3, [x8, #0x2d0]
07c79414: mov      x0, x21
07c79418: mov      x1, x20
07c7941c: blr      x9
07c79420: adrp     x8, #0x9b4c000
07c79424: ldr      x20, [x19, #0x28]
07c79428: ldr      x8, [x8, #0x28]
07c7942c: mov      x21, x0
07c79430: ldr      x8, [x8]
07c79434: mov      x0, x8
07c79438: bl       #0x39d36d8
07c7943c: mov      x1, x20
07c79440: mov      x2, x21
07c79444: mov      w3, wzr
07c79448: mov      x4, xzr
07c7944c: mov      x22, x0
07c79450: bl       #0x5ae9d78
07c79454: str      x22, [x19, #0x48]
07c79458: adrp     x8, #0x9b4b000
07c7945c: ldr      x8, [x8, #0xbb0]
07c79460: ldr      x0, [x8]
07c79464: bl       #0x39d36d8
07c79468: mov      x20, x0
07c7946c: mov      x1, x22
07c79470: mov      w2, wzr
07c79474: mov      x3, xzr
07c79478: bl       #0x91550e0
07c7947c: str      x20, [x19, #0x50]
07c79480: ldp      x20, x19, [sp, #0x30]
07c79484: ldp      x22, x21, [sp, #0x20]
07c79488: ldp      x24, x23, [sp, #0x10]
07c7948c: ldr      x30, [sp], #0x40
07c79490: ret      
07c79494: bl       #0x39d36e4
07c79498: bl       #0x39d36ec
07c7949c: mov      x0, x23
07c794a0: bl       #0x39d36dc
07c794a4: bl       #0x39d36e4
07c794a8: bl       #0x39d36e4
07c794ac: bl       #0x39d36e4
07c794b0: mov      x0, x22
07c794b4: bl       #0x39d36dc
07c794b8: bl       #0x39d36e4
07c794bc: bl       #0x39d36e4
07c794c0: bl       #0x39d36ec
07c794c4: bl       #0x39d36e4
07c794c8: bl       #0x39d36ec
07c794cc: bl       #0x39d36e4
07c794d0: bl       #0x39d36ec
07c794d4: bl       #0x39d36ec
07c794d8: bl       #0x39d36ec
07c794dc: bl       #0x39d36ec
07c794e0: bl       #0x39d36ec
07c794e4: bl       #0x39d36ec
07c794e8: bl       #0x39d36ec
07c794ec: bl       #0x39d36e4
07c794f0: b        #0x7c79534
07c794f4: b        #0x7c79534
07c794f8: b        #0x7c79534
07c794fc: b        #0x7c79534
07c79500: b        #0x7c79534
07c79504: b        #0x7c79534
07c79508: b        #0x7c79534
07c7950c: b        #0x7c79534
07c79510: b        #0x7c79534
07c79514: b        #0x7c79534
07c79518: b        #0x7c79534
07c7951c: b        #0x7c795dc
07c79520: b        #0x7c795dc
07c79524: b        #0x7c795dc
07c79528: b        #0x7c79534
07c7952c: b        #0x7c79534
07c79530: b        #0x7c79534
07c79534: mov      x23, x0
07c79538: cmp      w1, #1
07c7953c: b.ne     #0x7c7955c
07c79540: mov      x0, x23
07c79544: bl       #0x9749aa0
07c79548: ldr      x22, [x0]
07c7954c: bl       #0x9749ab0
07c79550: mov      w23, #1
07c79554: cbnz     x21, #0x7c79004
07c79558: b        #0x7c79064
07c7955c: mov      x22, xzr
07c79560: b        #0x7c79568
07c79564: mov      x23, x0
07c79568: cbz      x21, #0x7c795cc
07c7956c: adrp     x10, #0x9b3f000
07c79570: ldr      x8, [x21]
07c79574: ldr      x10, [x10, #0xed8]
07c79578: ldrh     w9, [x8, #0x12e]
07c7957c: ldr      x1, [x10]
07c79580: cbz      x9, #0x7c795a4
07c79584: ldr      x10, [x8, #0xb0]
07c79588: add      x10, x10, #8
07c7958c: ldur     x11, [x10, #-8]
07c79590: cmp      x11, x1
07c79594: b.eq     #0x7c795b4
07c79598: subs     x9, x9, #1
07c7959c: add      x10, x10, #0x10
07c795a0: b.ne     #0x7c7958c
07c795a4: mov      x0, x21
07c795a8: mov      w2, wzr
07c795ac: bl       #0x39a94f0
07c795b0: b        #0x7c795c0
07c795b4: ldrsw    x9, [x10]
07c795b8: add      x8, x8, x9, lsl #4
07c795bc: add      x0, x8, #0x138
07c795c0: ldp      x8, x1, [x0]
07c795c4: mov      x0, x21
07c795c8: blr      x8
07c795cc: cbz      x22, #0x7c79688
07c795d0: mov      x0, x22
07c795d4: bl       #0x39d36dc
07c795d8: b        #0x7c795dc
07c795dc: mov      x23, x0
07c795e0: cmp      w1, #1
07c795e4: b.ne     #0x7c79610
07c795e8: mov      x0, x23
07c795ec: bl       #0x9749aa0
07c795f0: ldr      x8, [x0]
07c795f4: str      x8, [sp, #8]
07c795f8: bl       #0x9749ab0
07c795fc: ldr      x23, [sp, #8]
07c79600: mov      x22, xzr
07c79604: mov      w24, wzr
07c79608: cbnz     x21, #0x7c79244
07c7960c: b        #0x7c792a4
07c79610: str      xzr, [sp, #8]
07c79614: b        #0x7c7961c
07c79618: mov      x23, x0
07c7961c: cbz      x21, #0x7c79680
07c79620: adrp     x10, #0x9b3f000
07c79624: ldr      x8, [x21]
07c79628: ldr      x10, [x10, #0xed8]
07c7962c: ldrh     w9, [x8, #0x12e]
07c79630: ldr      x1, [x10]
07c79634: cbz      x9, #0x7c79658
07c79638: ldr      x10, [x8, #0xb0]
07c7963c: add      x10, x10, #8
07c79640: ldur     x11, [x10, #-8]
07c79644: cmp      x11, x1
07c79648: b.eq     #0x7c79668
07c7964c: subs     x9, x9, #1
07c79650: add      x10, x10, #0x10
07c79654: b.ne     #0x7c79640
07c79658: mov      x0, x21
07c7965c: mov      w2, wzr
07c79660: bl       #0x39a94f0
07c79664: b        #0x7c79674
07c79668: ldrsw    x9, [x10]
07c7966c: add      x8, x8, x9, lsl #4
07c79670: add      x0, x8, #0x138
07c79674: ldp      x8, x1, [x0]
07c79678: mov      x0, x21
07c7967c: blr      x8
07c79680: ldr      x8, [sp, #8]
07c79684: cbnz     x8, #0x7c79690
07c79688: mov      x0, x23
07c7968c: bl       #0x3ab82d0
07c79690: ldr      x0, [sp, #8]
07c79694: bl       #0x39d36dc
07c79698: bl       #0x35bb99c

// Foundations.EncryptStream.get_CanRead 0x7c7969c
07c7969c: stp      x30, x19, [sp, #-0x10]!
07c796a0: mov      x19, x0
07c796a4: mov      w0, #0x20d
07c796a8: mov      x1, xzr
07c796ac: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c796b0: tbz      w0, #0, #0x7c796d4
07c796b4: mov      w0, #0x20d
07c796b8: mov      x1, xzr
07c796bc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c796c0: cbz      x0, #0x7c796e8
07c796c4: mov      x1, x19
07c796c8: mov      x2, xzr
07c796cc: ldp      x30, x19, [sp], #0x10
07c796d0: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
07c796d4: ldr      w8, [x19, #0x30]
07c796d8: cmp      w8, #0
07c796dc: cset     w0, eq
07c796e0: ldp      x30, x19, [sp], #0x10
07c796e4: ret      
07c796e8: bl       #0x39d36e4

// Foundations.EncryptStream.get_CanSeek 0x7c796ec
07c796ec: stp      x30, x19, [sp, #-0x10]!
07c796f0: mov      x19, x0
07c796f4: mov      w0, #0x20e
07c796f8: mov      x1, xzr
07c796fc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79700: tbz      w0, #0, #0x7c79724
07c79704: mov      w0, #0x20e
07c79708: mov      x1, xzr
07c7970c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79710: cbz      x0, #0x7c79730
07c79714: mov      x1, x19
07c79718: mov      x2, xzr
07c7971c: ldp      x30, x19, [sp], #0x10
07c79720: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
07c79724: mov      w0, wzr
07c79728: ldp      x30, x19, [sp], #0x10
07c7972c: ret      
07c79730: bl       #0x39d36e4

// Foundations.EncryptStream.get_CanWrite 0x7c79734
07c79734: stp      x30, x19, [sp, #-0x10]!
07c79738: mov      x19, x0
07c7973c: mov      w0, #0x20f
07c79740: mov      x1, xzr
07c79744: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79748: tbz      w0, #0, #0x7c7976c
07c7974c: mov      w0, #0x20f
07c79750: mov      x1, xzr
07c79754: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79758: cbz      x0, #0x7c79780
07c7975c: mov      x1, x19
07c79760: mov      x2, xzr
07c79764: ldp      x30, x19, [sp], #0x10
07c79768: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
07c7976c: ldr      w8, [x19, #0x30]
07c79770: cmp      w8, #1
07c79774: cset     w0, eq
07c79778: ldp      x30, x19, [sp], #0x10
07c7977c: ret      
07c79780: bl       #0x39d36e4

// Foundations.EncryptStream.get_Length 0x7c79784
07c79784: stp      x30, x19, [sp, #-0x10]!
07c79788: mov      x19, x0
07c7978c: mov      w0, #0x210
07c79790: mov      x1, xzr
07c79794: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79798: tbz      w0, #0, #0x7c797bc
07c7979c: mov      w0, #0x210
07c797a0: mov      x1, xzr
07c797a4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c797a8: cbz      x0, #0x7c797f0
07c797ac: mov      x1, x19
07c797b0: mov      x2, xzr
07c797b4: ldp      x30, x19, [sp], #0x10
07c797b8: b        #0x8619e04 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_242
07c797bc: adrp     x0, #0x9b3f000
07c797c0: ldr      x0, [x0, #0xe98]
07c797c4: bl       #0x39d34d0
07c797c8: bl       #0x39d36d8
07c797cc: mov      x1, xzr
07c797d0: mov      x19, x0
07c797d4: bl       #0x5c5ba8c
07c797d8: adrp     x0, #0x9c0a000
07c797dc: ldr      x0, [x0, #0x228]
07c797e0: bl       #0x39d34d0
07c797e4: mov      x1, x0
07c797e8: mov      x0, x19
07c797ec: bl       #0x39d35b4
07c797f0: bl       #0x39d36e4

// Foundations.EncryptStream.get_Position 0x7c797f4
07c797f4: stp      x30, x19, [sp, #-0x10]!
07c797f8: mov      x19, x0
07c797fc: mov      w0, #0x211
07c79800: mov      x1, xzr
07c79804: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79808: tbz      w0, #0, #0x7c7982c
07c7980c: mov      w0, #0x211
07c79810: mov      x1, xzr
07c79814: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79818: cbz      x0, #0x7c79860
07c7981c: mov      x1, x19
07c79820: mov      x2, xzr
07c79824: ldp      x30, x19, [sp], #0x10
07c79828: b        #0x8619e04 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_242
07c7982c: adrp     x0, #0x9b3f000
07c79830: ldr      x0, [x0, #0xe98]
07c79834: bl       #0x39d34d0
07c79838: bl       #0x39d36d8
07c7983c: mov      x1, xzr
07c79840: mov      x19, x0
07c79844: bl       #0x5c5ba8c
07c79848: adrp     x0, #0x9c0a000
07c7984c: ldr      x0, [x0, #0x230]
07c79850: bl       #0x39d34d0
07c79854: mov      x1, x0
07c79858: mov      x0, x19
07c7985c: bl       #0x39d35b4
07c79860: bl       #0x39d36e4

// Foundations.EncryptStream.set_Position 0x7c79864
07c79864: str      x30, [sp, #-0x20]!
07c79868: stp      x20, x19, [sp, #0x10]
07c7986c: mov      x19, x1
07c79870: mov      x20, x0
07c79874: mov      w0, #0x212
07c79878: mov      x1, xzr
07c7987c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79880: tbz      w0, #0, #0x7c798ac
07c79884: mov      w0, #0x212
07c79888: mov      x1, xzr
07c7988c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79890: cbz      x0, #0x7c798e0
07c79894: mov      x1, x20
07c79898: mov      x2, x19
07c7989c: ldp      x20, x19, [sp, #0x10]
07c798a0: mov      x3, xzr
07c798a4: ldr      x30, [sp], #0x20
07c798a8: b        #0x8619eb8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_243
07c798ac: adrp     x0, #0x9b3f000
07c798b0: ldr      x0, [x0, #0xe98]
07c798b4: bl       #0x39d34d0
07c798b8: bl       #0x39d36d8
07c798bc: mov      x1, xzr
07c798c0: mov      x19, x0
07c798c4: bl       #0x5c5ba8c
07c798c8: adrp     x0, #0x9c0a000
07c798cc: ldr      x0, [x0, #0x238]
07c798d0: bl       #0x39d34d0
07c798d4: mov      x1, x0
07c798d8: mov      x0, x19
07c798dc: bl       #0x39d35b4
07c798e0: bl       #0x39d36e4

// Foundations.EncryptStream.Flush 0x7c798e4
07c798e4: stp      x30, x19, [sp, #-0x10]!
07c798e8: mov      x19, x0
07c798ec: mov      w0, #0x213
07c798f0: mov      x1, xzr
07c798f4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c798f8: tbz      w0, #0, #0x7c7991c
07c798fc: mov      w0, #0x213
07c79900: mov      x1, xzr
07c79904: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79908: cbz      x0, #0x7c79978
07c7990c: mov      x1, x19
07c79910: mov      x2, xzr
07c79914: ldp      x30, x19, [sp], #0x10
07c79918: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
07c7991c: ldrb     w8, [x19, #0x58]
07c79920: cbz      w8, #0x7c7992c
07c79924: ldp      x30, x19, [sp], #0x10
07c79928: ret      
07c7992c: ldr      x0, [x19, #0x50]
07c79930: cbz      x0, #0x7c79944
07c79934: ldr      x8, [x0]
07c79938: ldr      x9, [x8, #0x288]
07c7993c: ldr      x1, [x8, #0x290]
07c79940: blr      x9
07c79944: ldr      x0, [x19, #0x48]
07c79948: cbz      x0, #0x7c7995c
07c7994c: ldr      x8, [x0]
07c79950: ldr      x9, [x8, #0x288]
07c79954: ldr      x1, [x8, #0x290]
07c79958: blr      x9
07c7995c: ldr      x0, [x19, #0x28]
07c79960: cbz      x0, #0x7c79978
07c79964: ldr      x8, [x0]
07c79968: ldr      x2, [x8, #0x288]
07c7996c: ldr      x1, [x8, #0x290]
07c79970: ldp      x30, x19, [sp], #0x10
07c79974: br       x2
07c79978: bl       #0x39d36e4

// Foundations.EncryptStream.Read 0x7c7997c
07c7997c: str      x30, [sp, #-0x30]!
07c79980: stp      x22, x21, [sp, #0x10]
07c79984: stp      x20, x19, [sp, #0x20]
07c79988: mov      x21, x1
07c7998c: mov      x22, x0
07c79990: mov      w0, #0x214
07c79994: mov      x1, xzr
07c79998: mov      w19, w3
07c7999c: mov      w20, w2
07c799a0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c799a4: tbz      w0, #0, #0x7c799dc
07c799a8: mov      w0, #0x214
07c799ac: mov      x1, xzr
07c799b0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c799b4: cbz      x0, #0x7c79a1c
07c799b8: mov      x1, x22
07c799bc: mov      x2, x21
07c799c0: mov      w3, w20
07c799c4: mov      w4, w19
07c799c8: ldp      x20, x19, [sp, #0x20]
07c799cc: ldp      x22, x21, [sp, #0x10]
07c799d0: mov      x5, xzr
07c799d4: ldr      x30, [sp], #0x30
07c799d8: b        #0x8619f70 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_244
07c799dc: ldrb     w8, [x22, #0x58]
07c799e0: cbnz     w8, #0x7c79a20
07c799e4: ldr      w8, [x22, #0x30]
07c799e8: cbnz     w8, #0x7c79a54
07c799ec: ldr      x0, [x22, #0x50]
07c799f0: cbz      x0, #0x7c79a1c
07c799f4: ldr      x8, [x0]
07c799f8: mov      x1, x21
07c799fc: mov      w2, w20
07c79a00: mov      w3, w19
07c79a04: ldr      x5, [x8, #0x348]
07c79a08: ldr      x4, [x8, #0x350]
07c79a0c: ldp      x20, x19, [sp, #0x20]
07c79a10: ldp      x22, x21, [sp, #0x10]
07c79a14: ldr      x30, [sp], #0x30
07c79a18: br       x5
07c79a1c: bl       #0x39d36e4
07c79a20: adrp     x0, #0x9b44000
07c79a24: ldr      x0, [x0, #0x6b0]
07c79a28: bl       #0x39d34d0
07c79a2c: bl       #0x39d36d8
07c79a30: mov      x19, x0
07c79a34: adrp     x0, #0x9c0a000
07c79a38: ldr      x0, [x0, #0x240]
07c79a3c: bl       #0x39d34d0
07c79a40: mov      x1, x0
07c79a44: mov      x0, x19
07c79a48: mov      x2, xzr
07c79a4c: bl       #0x5c67be8
07c79a50: b        #0x7c79a84
07c79a54: adrp     x0, #0x9b3f000
07c79a58: ldr      x0, [x0, #0xe98]
07c79a5c: bl       #0x39d34d0
07c79a60: bl       #0x39d36d8
07c79a64: mov      x19, x0
07c79a68: adrp     x0, #0x9c0a000
07c79a6c: ldr      x0, [x0, #0x248]
07c79a70: bl       #0x39d34d0
07c79a74: mov      x1, x0
07c79a78: mov      x0, x19
07c79a7c: mov      x2, xzr
07c79a80: bl       #0x5c548c8
07c79a84: adrp     x0, #0x9c0a000
07c79a88: ldr      x0, [x0, #0x250]
07c79a8c: bl       #0x39d34d0
07c79a90: mov      x1, x0
07c79a94: mov      x0, x19
07c79a98: bl       #0x39d35b4

// Foundations.EncryptStream.Seek 0x7c79a9c
07c79a9c: stp      x30, x21, [sp, #-0x20]!
07c79aa0: stp      x20, x19, [sp, #0x10]
07c79aa4: mov      x20, x1
07c79aa8: mov      x21, x0
07c79aac: mov      w0, #0x215
07c79ab0: mov      x1, xzr
07c79ab4: mov      w19, w2
07c79ab8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79abc: tbz      w0, #0, #0x7c79aec
07c79ac0: mov      w0, #0x215
07c79ac4: mov      x1, xzr
07c79ac8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79acc: cbz      x0, #0x7c79b20
07c79ad0: mov      x2, x20
07c79ad4: mov      w3, w19
07c79ad8: ldp      x20, x19, [sp, #0x10]
07c79adc: mov      x1, x21
07c79ae0: mov      x4, xzr
07c79ae4: ldp      x30, x21, [sp], #0x20
07c79ae8: b        #0x861a068 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_245
07c79aec: adrp     x0, #0x9b3f000
07c79af0: ldr      x0, [x0, #0xe98]
07c79af4: bl       #0x39d34d0
07c79af8: bl       #0x39d36d8
07c79afc: mov      x1, xzr
07c79b00: mov      x19, x0
07c79b04: bl       #0x5c5ba8c
07c79b08: adrp     x0, #0x9c0a000
07c79b0c: ldr      x0, [x0, #0x258]
07c79b10: bl       #0x39d34d0
07c79b14: mov      x1, x0
07c79b18: mov      x0, x19
07c79b1c: bl       #0x39d35b4
07c79b20: bl       #0x39d36e4

// Foundations.EncryptStream.SetLength 0x7c79b24
07c79b24: str      x30, [sp, #-0x20]!
07c79b28: stp      x20, x19, [sp, #0x10]
07c79b2c: mov      x19, x1
07c79b30: mov      x20, x0
07c79b34: mov      w0, #0x216
07c79b38: mov      x1, xzr
07c79b3c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79b40: tbz      w0, #0, #0x7c79b6c
07c79b44: mov      w0, #0x216
07c79b48: mov      x1, xzr
07c79b4c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79b50: cbz      x0, #0x7c79ba0
07c79b54: mov      x1, x20
07c79b58: mov      x2, x19
07c79b5c: ldp      x20, x19, [sp, #0x10]
07c79b60: mov      x3, xzr
07c79b64: ldr      x30, [sp], #0x20
07c79b68: b        #0x8619eb8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_243
07c79b6c: adrp     x0, #0x9b3f000
07c79b70: ldr      x0, [x0, #0xe98]
07c79b74: bl       #0x39d34d0
07c79b78: bl       #0x39d36d8
07c79b7c: mov      x1, xzr
07c79b80: mov      x19, x0
07c79b84: bl       #0x5c5ba8c
07c79b88: adrp     x0, #0x9c0a000
07c79b8c: ldr      x0, [x0, #0x260]
07c79b90: bl       #0x39d34d0
07c79b94: mov      x1, x0
07c79b98: mov      x0, x19
07c79b9c: bl       #0x39d35b4
07c79ba0: bl       #0x39d36e4

// Foundations.EncryptStream.Write 0x7c79ba4
07c79ba4: str      x30, [sp, #-0x30]!
07c79ba8: stp      x22, x21, [sp, #0x10]
07c79bac: stp      x20, x19, [sp, #0x20]
07c79bb0: mov      x21, x1
07c79bb4: mov      x22, x0
07c79bb8: mov      w0, #0x217
07c79bbc: mov      x1, xzr
07c79bc0: mov      w19, w3
07c79bc4: mov      w20, w2
07c79bc8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79bcc: tbz      w0, #0, #0x7c79c04
07c79bd0: mov      w0, #0x217
07c79bd4: mov      x1, xzr
07c79bd8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79bdc: cbz      x0, #0x7c79c48
07c79be0: mov      x1, x22
07c79be4: mov      x2, x21
07c79be8: mov      w3, w20
07c79bec: mov      w4, w19
07c79bf0: ldp      x20, x19, [sp, #0x20]
07c79bf4: ldp      x22, x21, [sp, #0x10]
07c79bf8: mov      x5, xzr
07c79bfc: ldr      x30, [sp], #0x30
07c79c00: b        #0x860ffe0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_85
07c79c04: ldrb     w8, [x22, #0x58]
07c79c08: cbnz     w8, #0x7c79c4c
07c79c0c: ldr      w8, [x22, #0x30]
07c79c10: cmp      w8, #1
07c79c14: b.ne     #0x7c79c80
07c79c18: ldr      x0, [x22, #0x50]
07c79c1c: cbz      x0, #0x7c79c48
07c79c20: ldr      x8, [x0]
07c79c24: mov      x1, x21
07c79c28: mov      w2, w20
07c79c2c: mov      w3, w19
07c79c30: ldr      x5, [x8, #0x378]
07c79c34: ldr      x4, [x8, #0x380]
07c79c38: ldp      x20, x19, [sp, #0x20]
07c79c3c: ldp      x22, x21, [sp, #0x10]
07c79c40: ldr      x30, [sp], #0x30
07c79c44: br       x5
07c79c48: bl       #0x39d36e4
07c79c4c: adrp     x0, #0x9b44000
07c79c50: ldr      x0, [x0, #0x6b0]
07c79c54: bl       #0x39d34d0
07c79c58: bl       #0x39d36d8
07c79c5c: mov      x19, x0
07c79c60: adrp     x0, #0x9c0a000
07c79c64: ldr      x0, [x0, #0x240]
07c79c68: bl       #0x39d34d0
07c79c6c: mov      x1, x0
07c79c70: mov      x0, x19
07c79c74: mov      x2, xzr
07c79c78: bl       #0x5c67be8
07c79c7c: b        #0x7c79cb0
07c79c80: adrp     x0, #0x9b3f000
07c79c84: ldr      x0, [x0, #0xe98]
07c79c88: bl       #0x39d34d0
07c79c8c: bl       #0x39d36d8
07c79c90: mov      x19, x0
07c79c94: adrp     x0, #0x9c0a000
07c79c98: ldr      x0, [x0, #0x268]
07c79c9c: bl       #0x39d34d0
07c79ca0: mov      x1, x0
07c79ca4: mov      x0, x19
07c79ca8: mov      x2, xzr
07c79cac: bl       #0x5c548c8
07c79cb0: adrp     x0, #0x9c0a000
07c79cb4: ldr      x0, [x0, #0x270]
07c79cb8: bl       #0x39d34d0
07c79cbc: mov      x1, x0
07c79cc0: mov      x0, x19
07c79cc4: bl       #0x39d35b4

// Foundations.EncryptStream.Dispose 0x7c79cc8
07c79cc8: str      x30, [sp, #-0x30]!
07c79ccc: stp      x22, x21, [sp, #0x10]
07c79cd0: stp      x20, x19, [sp, #0x20]
07c79cd4: mov      w20, w1
07c79cd8: mov      x19, x0
07c79cdc: mov      w0, #0x218
07c79ce0: mov      x1, xzr
07c79ce4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c79ce8: tbz      w0, #0, #0x7c79d18
07c79cec: mov      w0, #0x218
07c79cf0: mov      x1, xzr
07c79cf4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c79cf8: cbz      x0, #0x7c79d9c
07c79cfc: and      w2, w20, #1
07c79d00: mov      x1, x19
07c79d04: ldp      x20, x19, [sp, #0x20]
07c79d08: ldp      x22, x21, [sp, #0x10]
07c79d0c: mov      x3, xzr
07c79d10: ldr      x30, [sp], #0x30
07c79d14: b        #0x860c978 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_28
07c79d18: ldrb     w8, [x19, #0x58]
07c79d1c: cbnz     w8, #0x7c79d80
07c79d20: tbz      w20, #0, #0x7c79d78
07c79d24: ldr      x0, [x19, #0x50]
07c79d28: cbz      x0, #0x7c79d38
07c79d2c: mov      x1, xzr
07c79d30: bl       #0x5bc512c
07c79d34: str      xzr, [x19, #0x50]
07c79d38: ldr      x0, [x19, #0x48]
07c79d3c: cbz      x0, #0x7c79d4c
07c79d40: mov      x1, xzr
07c79d44: bl       #0x5bc512c
07c79d48: str      xzr, [x19, #0x48]
07c79d4c: ldr      x0, [x19, #0x40]
07c79d50: cbz      x0, #0x7c79d60
07c79d54: mov      x1, xzr
07c79d58: bl       #0x5b09d44
07c79d5c: str      xzr, [x19, #0x40]
07c79d60: ldrb     w8, [x19, #0x34]
07c79d64: cbnz     w8, #0x7c79d78
07c79d68: ldr      x0, [x19, #0x28]
07c79d6c: cbz      x0, #0x7c79d9c
07c79d70: mov      x1, xzr
07c79d74: bl       #0x5bc512c
07c79d78: mov      w8, #1
07c79d7c: strb     w8, [x19, #0x58]
07c79d80: and      w1, w20, #1
07c79d84: mov      x0, x19
07c79d88: ldp      x20, x19, [sp, #0x20]
07c79d8c: ldp      x22, x21, [sp, #0x10]
07c79d90: mov      x2, xzr
07c79d94: ldr      x30, [sp], #0x30
07c79d98: b        #0x5bc513c
07c79d9c: bl       #0x39d36e4
07c79da0: cmp      w1, #1
07c79da4: mov      x21, x0
07c79da8: b.ne     #0x7c79e14
07c79dac: mov      x0, x21
07c79db0: bl       #0x9749aa0
07c79db4: mov      x21, x0
07c79db8: adrp     x0, #0x9b58000
07c79dbc: ldr      x0, [x0, #0xac8]
07c79dc0: bl       #0x39d34d0
07c79dc4: ldr      x8, [x21]
07c79dc8: ldr      x1, [x8]
07c79dcc: bl       #0x39d3b10
07c79dd0: tbz      w0, #0, #0x7c79ddc
07c79dd4: bl       #0x9749ab0
07c79dd8: b        #0x7c79d34
07c79ddc: mov      w0, #8
07c79de0: bl       #0x9749ac0
07c79de4: ldr      x8, [x21]
07c79de8: str      x8, [x0]
07c79dec: adrp     x1, #0x974f000
07c79df0: add      x1, x1, #0xe98
07c79df4: mov      x2, xzr
07c79df8: bl       #0x9749ad0
07c79dfc: mov      x21, x0
07c79e00: b        #0x7c79e14
07c79e04: mov      x22, x1
07c79e08: mov      x21, x0
07c79e0c: bl       #0x9749ab0
07c79e10: mov      w1, w22
07c79e14: mov      w8, #1
07c79e18: cmp      w1, w8
07c79e1c: b.ne     #0x7c79e40
07c79e20: mov      x0, x21
07c79e24: bl       #0x9749aa0
07c79e28: ldr      x22, [x0]
07c79e2c: bl       #0x9749ab0
07c79e30: str      xzr, [x19, #0x50]
07c79e34: cbz      x22, #0x7c79d38
07c79e38: mov      x0, x22
07c79e3c: bl       #0x39d36dc
07c79e40: str      xzr, [x19, #0x50]
07c79e44: b        #0x7c79e54
07c79e48: str      xzr, [x19, #0x50]
07c79e4c: cbnz     x22, #0x7c79e5c
07c79e50: mov      x21, x0
07c79e54: mov      x0, x21
07c79e58: bl       #0x3ab82d0
07c79e5c: mov      x0, x22
07c79e60: bl       #0x39d36dc
07c79e64: bl       #0x35bb99c

// Foundations.EncryptStream.<>iFixBaseProxy_Dispose 0x7c79e68
07c79e68: and      w1, w1, #1
07c79e6c: mov      x2, xzr
07c79e70: b        #0x5bc513c
