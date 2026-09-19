08bb9a08: sub      sp, sp, #0xd0
08bb9a0c: str      d8, [sp, #0x80]
08bb9a10: stp      x30, x25, [sp, #0x90]
08bb9a14: stp      x24, x23, [sp, #0xa0]
08bb9a18: stp      x22, x21, [sp, #0xb0]
08bb9a1c: stp      x20, x19, [sp, #0xc0]
08bb9a20: adrp     x21, #0xa279000
08bb9a24: ldrb     w8, [x21, #0x391]
08bb9a28: mov      x20, x1
08bb9a2c: mov      x19, x0
08bb9a30: tbnz     w8, #0, #0x8bb9a84
08bb9a34: adrp     x0, #0x9b81000
08bb9a38: ldr      x0, [x0, #0x230]
08bb9a3c: bl       #0x39d34bc
08bb9a40: adrp     x0, #0x9b44000
08bb9a44: ldr      x0, [x0, #0xea0]
08bb9a48: bl       #0x39d34bc
08bb9a4c: adrp     x0, #0x9b3f000
08bb9a50: ldr      x0, [x0, #0xed8]
08bb9a54: bl       #0x39d34bc
08bb9a58: adrp     x0, #0x9b45000
08bb9a5c: ldr      x0, [x0, #0xbd0]
08bb9a60: bl       #0x39d34bc
08bb9a64: adrp     x0, #0x9b43000
08bb9a68: ldr      x0, [x0, #0x1d8]
08bb9a6c: bl       #0x39d34bc
08bb9a70: adrp     x0, #0x9b77000
08bb9a74: ldr      x0, [x0, #0x548]
08bb9a78: bl       #0x39d34bc
08bb9a7c: mov      w8, #1
08bb9a80: strb     w8, [x21, #0x391]
08bb9a84: mov      w0, #0x459a
08bb9a88: mov      x1, xzr
08bb9a8c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9a90: tbz      w0, #0, #0x8bb9acc
08bb9a94: mov      w0, #0x459a
08bb9a98: mov      x1, xzr
08bb9a9c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9aa0: cbz      x0, #0x8bb9de4
08bb9aa4: mov      x1, x19
08bb9aa8: mov      x2, x20
08bb9aac: ldp      x20, x19, [sp, #0xc0]
08bb9ab0: ldp      x22, x21, [sp, #0xb0]
08bb9ab4: ldp      x24, x23, [sp, #0xa0]
08bb9ab8: ldp      x30, x25, [sp, #0x90]
08bb9abc: ldr      d8, [sp, #0x80]
08bb9ac0: mov      x3, xzr
08bb9ac4: add      sp, sp, #0xd0
08bb9ac8: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08bb9acc: cbz      x20, #0x8bb9b04
08bb9ad0: adrp     x8, #0x9b77000
08bb9ad4: ldr      x8, [x8, #0x548]
08bb9ad8: ldr      x9, [x20]
08bb9adc: ldr      x8, [x8]
08bb9ae0: ldrb     w11, [x9, #0x130]
08bb9ae4: ldrb     w10, [x8, #0x130]
08bb9ae8: cmp      w11, w10
08bb9aec: b.lo     #0x8bb9b04
08bb9af0: ldr      x9, [x9, #0xc8]
08bb9af4: add      x9, x9, x10, lsl #3
08bb9af8: ldur     x9, [x9, #-8]
08bb9afc: cmp      x9, x8
08bb9b00: b.eq     #0x8bb9b24
08bb9b04: ldp      x20, x19, [sp, #0xc0]
08bb9b08: ldp      x22, x21, [sp, #0xb0]
08bb9b0c: ldp      x24, x23, [sp, #0xa0]
08bb9b10: ldp      x30, x25, [sp, #0x90]
08bb9b14: ldr      d8, [sp, #0x80]
08bb9b18: mov      w0, wzr
08bb9b1c: add      sp, sp, #0xd0
08bb9b20: ret      
08bb9b24: ldr      x21, [x20, #0x18]
08bb9b28: cbz      x21, #0x8bb9b04
08bb9b2c: adrp     x8, #0x9b81000
08bb9b30: ldr      x8, [x8, #0x230]
08bb9b34: ldr      x9, [x21]
08bb9b38: ldr      x8, [x8]
08bb9b3c: ldrb     w11, [x9, #0x130]
08bb9b40: ldrb     w10, [x8, #0x130]
08bb9b44: cmp      w11, w10
08bb9b48: b.lo     #0x8bb9b60
08bb9b4c: ldr      x9, [x9, #0xc8]
08bb9b50: add      x9, x9, x10, lsl #3
08bb9b54: ldur     x9, [x9, #-8]
08bb9b58: cmp      x9, x8
08bb9b5c: b.eq     #0x8bb9b04
08bb9b60: adrp     x22, #0x9b44000
08bb9b64: ldr      x0, [x19, #0x10]
08bb9b68: ldr      x22, [x22, #0xea0]
08bb9b6c: ldr      x1, [x22]
08bb9b70: bl       #0x39d35c8
08bb9b74: cbz      x0, #0x8bb9b04
08bb9b78: mov      x1, x0
08bb9b7c: mov      x0, x21
08bb9b80: mov      x2, xzr
08bb9b84: bl       #0x6a8bd50 ; Oak.Party.Contains
08bb9b88: tbz      w0, #0, #0x8bb9b04
08bb9b8c: ldr      x0, [x20, #0x18]
08bb9b90: cbz      x0, #0x8bb9de4
08bb9b94: mov      x1, xzr
08bb9b98: bl       #0x6a8be88 ; Oak.Party.GetEnumerator
08bb9b9c: mov      x20, x0
08bb9ba0: cbz      x0, #0x8bb9df4
08bb9ba4: adrp     x24, #0x9b43000
08bb9ba8: adrp     x25, #0x9b45000
08bb9bac: ldr      x24, [x24, #0x1d8]
08bb9bb0: ldr      x25, [x25, #0xbd0]
08bb9bb4: mov      w23, wzr
08bb9bb8: ldr      x8, [x20]
08bb9bbc: ldr      x1, [x24]
08bb9bc0: ldrh     w9, [x8, #0x12e]
08bb9bc4: cbz      x9, #0x8bb9be8
08bb9bc8: ldr      x10, [x8, #0xb0]
08bb9bcc: add      x10, x10, #8
08bb9bd0: ldur     x11, [x10, #-8]
08bb9bd4: cmp      x11, x1
08bb9bd8: b.eq     #0x8bb9bf8
08bb9bdc: subs     x9, x9, #1
08bb9be0: add      x10, x10, #0x10
08bb9be4: b.ne     #0x8bb9bd0
08bb9be8: mov      x0, x20
08bb9bec: mov      w2, wzr
08bb9bf0: bl       #0x39a94f0
08bb9bf4: b        #0x8bb9c04
08bb9bf8: ldrsw    x9, [x10]
08bb9bfc: add      x8, x8, x9, lsl #4
08bb9c00: add      x0, x8, #0x138
08bb9c04: ldp      x8, x1, [x0]
08bb9c08: mov      x0, x20
08bb9c0c: blr      x8
08bb9c10: tbz      w0, #0, #0x8bb9cf4
08bb9c14: ldr      x8, [x20]
08bb9c18: ldr      x1, [x25]
08bb9c1c: ldrh     w9, [x8, #0x12e]
08bb9c20: cbz      x9, #0x8bb9c44
08bb9c24: ldr      x10, [x8, #0xb0]
08bb9c28: add      x10, x10, #8
08bb9c2c: ldur     x11, [x10, #-8]
08bb9c30: cmp      x11, x1
08bb9c34: b.eq     #0x8bb9c54
08bb9c38: subs     x9, x9, #1
08bb9c3c: add      x10, x10, #0x10
08bb9c40: b.ne     #0x8bb9c2c
08bb9c44: mov      x0, x20
08bb9c48: mov      w2, wzr
08bb9c4c: bl       #0x39a94f0
08bb9c50: b        #0x8bb9c60
08bb9c54: ldrsw    x9, [x10]
08bb9c58: add      x8, x8, x9, lsl #4
08bb9c5c: add      x0, x8, #0x138
08bb9c60: ldp      x8, x1, [x0]
08bb9c64: mov      x0, x20
08bb9c68: blr      x8
08bb9c6c: mov      x21, x0
08bb9c70: cbz      x0, #0x8bb9dec
08bb9c74: ldr      x8, [x21]
08bb9c78: ldr      x1, [x22]
08bb9c7c: ldrh     w9, [x8, #0x12e]
08bb9c80: cbz      x9, #0x8bb9ca4
08bb9c84: ldr      x10, [x8, #0xb0]
08bb9c88: add      x10, x10, #8
08bb9c8c: ldur     x11, [x10, #-8]
08bb9c90: cmp      x11, x1
08bb9c94: b.eq     #0x8bb9cb4
08bb9c98: subs     x9, x9, #1
08bb9c9c: add      x10, x10, #0x10
08bb9ca0: b.ne     #0x8bb9c8c
08bb9ca4: mov      w2, #1
08bb9ca8: mov      x0, x21
08bb9cac: bl       #0x39a94f0
08bb9cb0: b        #0x8bb9cc4
08bb9cb4: ldr      w9, [x10]
08bb9cb8: add      w9, w9, #1
08bb9cbc: add      x8, x8, w9, sxtw #4
08bb9cc0: add      x0, x8, #0x138
08bb9cc4: ldp      x8, x1, [x0]
08bb9cc8: mov      x0, x21
08bb9ccc: blr      x8
08bb9cd0: cbz      x0, #0x8bb9df0
08bb9cd4: mov      x1, xzr
08bb9cd8: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08bb9cdc: cbz      x0, #0x8bb9de8
08bb9ce0: ldr      w8, [x0, #0x178]
08bb9ce4: ldr      w9, [x19, #0x38]
08bb9ce8: cmp      w8, w9
08bb9cec: cinc     w23, w23, eq
08bb9cf0: b        #0x8bb9bb8
08bb9cf4: mov      x21, xzr
08bb9cf8: mov      w22, #0xa
08bb9cfc: cbz      x20, #0x8bb9d60
08bb9d00: adrp     x10, #0x9b3f000
08bb9d04: ldr      x8, [x20]
08bb9d08: ldr      x10, [x10, #0xed8]
08bb9d0c: ldrh     w9, [x8, #0x12e]
08bb9d10: ldr      x1, [x10]
08bb9d14: cbz      x9, #0x8bb9d38
08bb9d18: ldr      x10, [x8, #0xb0]
08bb9d1c: add      x10, x10, #8
08bb9d20: ldur     x11, [x10, #-8]
08bb9d24: cmp      x11, x1
08bb9d28: b.eq     #0x8bb9d48
08bb9d2c: subs     x9, x9, #1
08bb9d30: add      x10, x10, #0x10
08bb9d34: b.ne     #0x8bb9d20
08bb9d38: mov      x0, x20
08bb9d3c: mov      w2, wzr
08bb9d40: bl       #0x39a94f0
08bb9d44: b        #0x8bb9d54
08bb9d48: ldrsw    x9, [x10]
08bb9d4c: add      x8, x8, x9, lsl #4
08bb9d50: add      x0, x8, #0x138
08bb9d54: ldp      x8, x1, [x0]
08bb9d58: mov      x0, x20
08bb9d5c: blr      x8
08bb9d60: cbnz     x21, #0x8bb9df8
08bb9d64: cmp      w22, #0xa
08bb9d68: b.eq     #0x8bb9d70
08bb9d6c: cbnz     w22, #0x8bb9b04
08bb9d70: ldur     x8, [x19, #0x64]
08bb9d74: ldur     q0, [x19, #0x54]
08bb9d78: add      x0, sp, #0x60
08bb9d7c: mov      x1, xzr
08bb9d80: str      x8, [sp, #0x70]
08bb9d84: str      q0, [sp, #0x60]
08bb9d88: bl       #0x3ac5138
08bb9d8c: mov      v8.16b, v0.16b
08bb9d90: ldur     q0, [x19, #0x6c]
08bb9d94: ldur     x8, [x19, #0x7c]
08bb9d98: add      x0, sp, #0x40
08bb9d9c: mov      x1, xzr
08bb9da0: str      q0, [sp, #0x40]
08bb9da4: str      x8, [sp, #0x50]
08bb9da8: bl       #0x3ac5138
08bb9dac: scvtf    s1, w23
08bb9db0: fmul     s1, s8, s1
08bb9db4: fcmp     s1, s0
08bb9db8: fcsel    s0, s1, s0, mi
08bb9dbc: add      x8, sp, #8
08bb9dc0: mov      x0, xzr
08bb9dc4: bl       #0x3ac68b0
08bb9dc8: ldr      x8, [sp, #0x18]
08bb9dcc: ldur     q0, [sp, #8]
08bb9dd0: str      x8, [sp, #0x30]
08bb9dd4: str      q0, [sp, #0x20]
08bb9dd8: stur     x8, [x19, #0x4c]
08bb9ddc: stur     q0, [x19, #0x3c]
08bb9de0: b        #0x8bb9b04
08bb9de4: bl       #0x39d36e4
08bb9de8: bl       #0x39d36e4
08bb9dec: bl       #0x39d36e4
08bb9df0: bl       #0x39d36e4
08bb9df4: bl       #0x39d36e4
08bb9df8: mov      x0, x21
08bb9dfc: bl       #0x39d36dc
08bb9e00: mov      x22, x0
08bb9e04: mov      w23, wzr
08bb9e08: b        #0x8bb9e28
08bb9e0c: b        #0x8bb9e24
08bb9e10: b        #0x8bb9e24
08bb9e14: b        #0x8bb9e24
08bb9e18: b        #0x8bb9e24
08bb9e1c: b        #0x8bb9e24
08bb9e20: b        #0x8bb9e24
08bb9e24: mov      x22, x0
08bb9e28: cmp      w1, #1
08bb9e2c: b.ne     #0x8bb9e4c
08bb9e30: mov      x0, x22
08bb9e34: bl       #0x9749aa0
08bb9e38: ldr      x21, [x0]
08bb9e3c: bl       #0x9749ab0
08bb9e40: mov      w22, wzr
08bb9e44: cbnz     x20, #0x8bb9d00
08bb9e48: b        #0x8bb9d60
08bb9e4c: mov      x21, xzr
08bb9e50: b        #0x8bb9e58
08bb9e54: mov      x22, x0
08bb9e58: cbz      x20, #0x8bb9ebc
08bb9e5c: adrp     x10, #0x9b3f000
08bb9e60: ldr      x8, [x20]
08bb9e64: ldr      x10, [x10, #0xed8]
08bb9e68: ldrh     w9, [x8, #0x12e]
08bb9e6c: ldr      x1, [x10]
08bb9e70: cbz      x9, #0x8bb9e94
08bb9e74: ldr      x10, [x8, #0xb0]
08bb9e78: add      x10, x10, #8
08bb9e7c: ldur     x11, [x10, #-8]
08bb9e80: cmp      x11, x1
08bb9e84: b.eq     #0x8bb9ea4
08bb9e88: subs     x9, x9, #1
08bb9e8c: add      x10, x10, #0x10
08bb9e90: b.ne     #0x8bb9e7c
08bb9e94: mov      x0, x20
08bb9e98: mov      w2, wzr
08bb9e9c: bl       #0x39a94f0
08bb9ea0: b        #0x8bb9eb0
08bb9ea4: ldrsw    x9, [x10]
08bb9ea8: add      x8, x8, x9, lsl #4
08bb9eac: add      x0, x8, #0x138
08bb9eb0: ldp      x8, x1, [x0]
08bb9eb4: mov      x0, x20
08bb9eb8: blr      x8
08bb9ebc: cbnz     x21, #0x8bb9ec8
08bb9ec0: mov      x0, x22
08bb9ec4: bl       #0x3ab82d0
08bb9ec8: mov      x0, x21
08bb9ecc: bl       #0x39d36dc
08bb9ed0: bl       #0x35bb99c