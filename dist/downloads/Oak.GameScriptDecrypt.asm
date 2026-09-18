// Oak.GameScriptDecrypt.DecompressLZ4 0x7793f18
07793f18: str      x30, [sp, #-0x20]!
07793f1c: stp      x20, x19, [sp, #0x10]
07793f20: adrp     x20, #0xa26f000
07793f24: ldrb     w8, [x20, #0x2f6]
07793f28: mov      x19, x0
07793f2c: tbnz     w8, #0, #0x7793f44
07793f30: adrp     x0, #0x9b40000
07793f34: ldr      x0, [x0, #0x4a0]
07793f38: bl       #0x39d34bc
07793f3c: mov      w8, #1
07793f40: strb     w8, [x20, #0x2f6]
07793f44: mov      w0, #0x5c6b
07793f48: movk     w0, #1, lsl #16
07793f4c: mov      x1, xzr
07793f50: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07793f54: tbz      w0, #0, #0x7793f80
07793f58: mov      w0, #0x5c6b
07793f5c: movk     w0, #1, lsl #16
07793f60: mov      x1, xzr
07793f64: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07793f68: cbz      x0, #0x7793fd8
07793f6c: mov      x1, x19
07793f70: ldp      x20, x19, [sp, #0x10]
07793f74: mov      x2, xzr
07793f78: ldr      x30, [sp], #0x20
07793f7c: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
07793f80: adrp     x8, #0x9b40000
07793f84: ldr      x8, [x8, #0x4a0]
07793f88: ldr      x0, [x8]
07793f8c: ldr      w8, [x0, #0xe0]
07793f90: cbnz     w8, #0x7793f98
07793f94: bl       #0x39d35c4
07793f98: mov      w1, #1
07793f9c: mov      x0, x19
07793fa0: mov      w2, wzr
07793fa4: mov      x3, xzr
07793fa8: bl       #0x3addedc
07793fac: mov      x19, x0
07793fb0: mov      x0, xzr
07793fb4: bl       #0x5adc15c
07793fb8: cbz      x0, #0x7793fd8
07793fbc: ldr      x8, [x0]
07793fc0: mov      x1, x19
07793fc4: ldp      x20, x19, [sp, #0x10]
07793fc8: ldr      x3, [x8, #0x388]
07793fcc: ldr      x2, [x8, #0x390]
07793fd0: ldr      x30, [sp], #0x20
07793fd4: br       x3
07793fd8: bl       #0x39d36e4

// Oak.GameScriptDecrypt.ToUsableKey 0x7793fdc
07793fdc: str      x30, [sp, #-0x40]!
07793fe0: stp      x24, x23, [sp, #0x10]
07793fe4: stp      x22, x21, [sp, #0x20]
07793fe8: stp      x20, x19, [sp, #0x30]
07793fec: adrp     x20, #0xa26f000
07793ff0: ldrb     w8, [x20, #0x2f7]
07793ff4: mov      x19, x0
07793ff8: tbnz     w8, #0, #0x779401c
07793ffc: adrp     x0, #0x9b3f000
07794000: ldr      x0, [x0, #0x738]
07794004: bl       #0x39d34bc
07794008: adrp     x0, #0x9b3f000
0779400c: ldr      x0, [x0, #0x750]
07794010: bl       #0x39d34bc
07794014: mov      w8, #1
07794018: strb     w8, [x20, #0x2f7]
0779401c: mov      w0, #0x5c6c
07794020: movk     w0, #1, lsl #16
07794024: mov      x1, xzr
07794028: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0779402c: tbz      w0, #0, #0x7794060
07794030: mov      w0, #0x5c6c
07794034: movk     w0, #1, lsl #16
07794038: mov      x1, xzr
0779403c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07794040: cbz      x0, #0x7794108
07794044: mov      x1, x19
07794048: ldp      x20, x19, [sp, #0x30]
0779404c: ldp      x22, x21, [sp, #0x20]
07794050: ldp      x24, x23, [sp, #0x10]
07794054: mov      x2, xzr
07794058: ldr      x30, [sp], #0x40
0779405c: b        #0x8622254 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_380
07794060: cbz      x19, #0x7794108
07794064: adrp     x8, #0x9b3f000
07794068: ldr      w1, [x19, #0x10]
0779406c: ldr      x8, [x8, #0x738]
07794070: ldr      x0, [x8]
07794074: bl       #0x39d3534
07794078: ldr      w8, [x19, #0x10]
0779407c: mov      x20, x0
07794080: cmp      w8, #1
07794084: b.lt     #0x77940f0
07794088: adrp     x24, #0x9b3f000
0779408c: ldr      x24, [x24, #0x750]
07794090: mov      x21, xzr
07794094: add      x23, x20, #0x20
07794098: mov      x0, x19
0779409c: mov      w1, w21
077940a0: mov      x2, xzr
077940a4: bl       #0x5aba27c
077940a8: ldr      x8, [x24]
077940ac: mov      w22, w0
077940b0: ldr      w9, [x8, #0xe0]
077940b4: cbnz     w9, #0x77940c0
077940b8: mov      x0, x8
077940bc: bl       #0x39d35c4
077940c0: mov      w0, w22
077940c4: mov      x1, xzr
077940c8: bl       #0x5bb9880
077940cc: cbz      x20, #0x7794108
077940d0: ldr      w8, [x20, #0x18]
077940d4: cmp      x21, x8
077940d8: b.hs     #0x779410c
077940dc: strb     w0, [x23, x21]
077940e0: ldrsw    x8, [x19, #0x10]
077940e4: add      x21, x21, #1
077940e8: cmp      x21, x8
077940ec: b.lt     #0x7794098
077940f0: mov      x0, x20
077940f4: ldp      x20, x19, [sp, #0x30]
077940f8: ldp      x22, x21, [sp, #0x20]
077940fc: ldp      x24, x23, [sp, #0x10]
07794100: ldr      x30, [sp], #0x40
07794104: ret      
07794108: bl       #0x39d36e4
0779410c: bl       #0x39d36ec

// Oak.GameScriptDecrypt.DecryptData 0x7794110
07794110: stp      x30, x21, [sp, #-0x20]!
07794114: stp      x20, x19, [sp, #0x10]
07794118: mov      x19, x0
0779411c: mov      w0, #0x5c6d
07794120: mov      x21, x1
07794124: movk     w0, #1, lsl #16
07794128: mov      x1, xzr
0779412c: mov      x20, x2
07794130: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07794134: tbz      w0, #0, #0x7794168
07794138: mov      w0, #0x5c6d
0779413c: movk     w0, #1, lsl #16
07794140: mov      x1, xzr
07794144: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07794148: cbz      x0, #0x7794188
0779414c: mov      x1, x19
07794150: mov      x3, x20
07794154: ldp      x20, x19, [sp, #0x10]
07794158: mov      x2, x21
0779415c: mov      x4, xzr
07794160: ldp      x30, x21, [sp], #0x20
07794164: b        #0x8642bb0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_895
07794168: mov      x0, x21
0779416c: mov      x1, x20
07794170: bl       #0x779418c ; Oak.GameScriptDecrypt.GetRijndaelManaged
07794174: mov      x1, x0
07794178: mov      x0, x19
0779417c: ldp      x20, x19, [sp, #0x10]
07794180: ldp      x30, x21, [sp], #0x20
07794184: b        #0x77943b0 ; Oak.GameScriptDecrypt.DecryptData
07794188: bl       #0x39d36e4

// Oak.GameScriptDecrypt.DecryptData 0x77948b4
077948b4: str      x30, [sp, #-0x30]!
077948b8: stp      x22, x21, [sp, #0x10]
077948bc: stp      x20, x19, [sp, #0x20]
077948c0: adrp     x21, #0xa26f000
077948c4: ldrb     w8, [x21, #0x2f8]
077948c8: mov      x19, x1
077948cc: mov      x20, x0
077948d0: tbnz     w8, #0, #0x7794900
077948d4: adrp     x0, #0x9b4c000
077948d8: ldr      x0, [x0, #0x28]
077948dc: bl       #0x39d34bc
077948e0: adrp     x0, #0x9b3f000
077948e4: ldr      x0, [x0, #0xed8]
077948e8: bl       #0x39d34bc
077948ec: adrp     x0, #0x9b40000
077948f0: ldr      x0, [x0, #0x778]
077948f4: bl       #0x39d34bc
077948f8: mov      w8, #1
077948fc: strb     w8, [x21, #0x2f8]
07794900: mov      w0, #0x124d
07794904: mov      x1, xzr
07794908: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0779490c: tbz      w0, #0, #0x779493c
07794910: mov      w0, #0x124d
07794914: mov      x1, xzr
07794918: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0779491c: cbz      x0, #0x7794c40
07794920: mov      x1, x20
07794924: mov      x2, x19
07794928: ldp      x20, x19, [sp, #0x20]
0779492c: ldp      x22, x21, [sp, #0x10]
07794930: mov      x3, xzr
07794934: ldr      x30, [sp], #0x30
07794938: b        #0x8652c5c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1139
0779493c: cbz      x19, #0x7794ae4
07794940: ldr      x8, [x19]
07794944: ldr      x1, [x8, #0x2c0]
07794948: ldr      x9, [x8, #0x2b8]
0779494c: mov      x0, x19
07794950: blr      x9
07794954: adrp     x8, #0x9b40000
07794958: ldr      x8, [x8, #0x778]
0779495c: mov      x21, x0
07794960: ldr      x0, [x8]
07794964: bl       #0x39d36d8
07794968: mov      x19, x0
0779496c: mov      x1, xzr
07794970: bl       #0x5b91b80
07794974: adrp     x8, #0x9b4c000
07794978: ldr      x8, [x8, #0x28]
0779497c: ldr      x0, [x8]
07794980: bl       #0x39d36d8
07794984: mov      x22, x0
07794988: mov      w3, #1
0779498c: mov      x1, x19
07794990: mov      x2, x21
07794994: mov      x4, xzr
07794998: bl       #0x5ae9d78
0779499c: cbz      x20, #0x7794ae8
077949a0: cbz      x22, #0x7794aec
077949a4: ldr      x8, [x22]
077949a8: ldr      w3, [x20, #0x18]
077949ac: ldr      x9, [x8, #0x378]
077949b0: ldr      x4, [x8, #0x380]
077949b4: mov      x0, x22
077949b8: mov      x1, x20
077949bc: mov      w2, wzr
077949c0: blr      x9
077949c4: mov      x20, xzr
077949c8: mov      w21, #3
077949cc: adrp     x10, #0x9b3f000
077949d0: ldr      x8, [x22]
077949d4: ldr      x10, [x10, #0xed8]
077949d8: ldrh     w9, [x8, #0x12e]
077949dc: ldr      x1, [x10]
077949e0: cbz      x9, #0x7794a04
077949e4: ldr      x10, [x8, #0xb0]
077949e8: add      x10, x10, #8
077949ec: ldur     x11, [x10, #-8]
077949f0: cmp      x11, x1
077949f4: b.eq     #0x7794a14
077949f8: subs     x9, x9, #1
077949fc: add      x10, x10, #0x10
07794a00: b.ne     #0x77949ec
07794a04: mov      x0, x22
07794a08: mov      w2, wzr
07794a0c: bl       #0x39a94f0
07794a10: b        #0x7794a20
07794a14: ldrsw    x9, [x10]
07794a18: add      x8, x8, x9, lsl #4
07794a1c: add      x0, x8, #0x138
07794a20: ldp      x8, x1, [x0]
07794a24: mov      x0, x22
07794a28: blr      x8
07794a2c: cbnz     x20, #0x7794af0
07794a30: cmp      w21, #3
07794a34: b.eq     #0x7794a3c
07794a38: cbnz     w21, #0x7794a60
07794a3c: cbz      x19, #0x7794b00
07794a40: ldr      x8, [x19]
07794a44: ldr      x1, [x8, #0x3e0]
07794a48: ldr      x9, [x8, #0x3d8]
07794a4c: mov      x0, x19
07794a50: blr      x9
07794a54: mov      x22, x0
07794a58: mov      x20, xzr
07794a5c: b        #0x7794a6c
07794a60: mov      x20, xzr
07794a64: mov      x22, xzr
07794a68: cbz      x19, #0x7794acc
07794a6c: adrp     x10, #0x9b3f000
07794a70: ldr      x8, [x19]
07794a74: ldr      x10, [x10, #0xed8]
07794a78: ldrh     w9, [x8, #0x12e]
07794a7c: ldr      x1, [x10]
07794a80: cbz      x9, #0x7794aa4
07794a84: ldr      x10, [x8, #0xb0]
07794a88: add      x10, x10, #8
07794a8c: ldur     x11, [x10, #-8]
07794a90: cmp      x11, x1
07794a94: b.eq     #0x7794ab4
07794a98: subs     x9, x9, #1
07794a9c: add      x10, x10, #0x10
07794aa0: b.ne     #0x7794a8c
07794aa4: mov      x0, x19
07794aa8: mov      w2, wzr
07794aac: bl       #0x39a94f0
07794ab0: b        #0x7794ac0
07794ab4: ldrsw    x9, [x10]
07794ab8: add      x8, x8, x9, lsl #4
07794abc: add      x0, x8, #0x138
07794ac0: ldp      x8, x1, [x0]
07794ac4: mov      x0, x19
07794ac8: blr      x8
07794acc: cbnz     x20, #0x7794af8
07794ad0: mov      x0, x22
07794ad4: ldp      x20, x19, [sp, #0x20]
07794ad8: ldp      x22, x21, [sp, #0x10]
07794adc: ldr      x30, [sp], #0x30
07794ae0: ret      
07794ae4: bl       #0x39d36e4
07794ae8: bl       #0x39d36e4
07794aec: bl       #0x39d36e4
07794af0: mov      x0, x20
07794af4: bl       #0x39d36dc
07794af8: mov      x0, x20
07794afc: bl       #0x39d36dc
07794b00: bl       #0x39d36e4
07794b04: b        #0x7794b34
07794b08: b        #0x7794b34
07794b0c: b        #0x7794b18
07794b10: b        #0x7794b18
07794b14: b        #0x7794b34
07794b18: mov      x21, x1
07794b1c: mov      x20, x0
07794b20: mov      x22, xzr
07794b24: b        #0x7794bc8
07794b28: mov      x21, x1
07794b2c: mov      x20, x0
07794b30: b        #0x7794bc8
07794b34: mov      x21, x1
07794b38: mov      x20, x0
07794b3c: cmp      w21, #1
07794b40: b.ne     #0x7794b5c
07794b44: mov      x0, x20
07794b48: bl       #0x9749aa0
07794b4c: ldr      x22, [x0]
07794b50: bl       #0x9749ab0
07794b54: mov      x20, x22
07794b58: b        #0x7794a64
07794b5c: mov      x22, xzr
07794b60: cbz      x19, #0x7794bc4
07794b64: adrp     x10, #0x9b3f000
07794b68: ldr      x8, [x19]
07794b6c: ldr      x10, [x10, #0xed8]
07794b70: ldrh     w9, [x8, #0x12e]
07794b74: ldr      x1, [x10]
07794b78: cbz      x9, #0x7794b9c
07794b7c: ldr      x10, [x8, #0xb0]
07794b80: add      x10, x10, #8
07794b84: ldur     x11, [x10, #-8]
07794b88: cmp      x11, x1
07794b8c: b.eq     #0x7794bac
07794b90: subs     x9, x9, #1
07794b94: add      x10, x10, #0x10
07794b98: b.ne     #0x7794b84
07794b9c: mov      x0, x19
07794ba0: mov      w2, wzr
07794ba4: bl       #0x39a94f0
07794ba8: b        #0x7794bb8
07794bac: ldrsw    x9, [x10]
07794bb0: add      x8, x8, x9, lsl #4
07794bb4: add      x0, x8, #0x138
07794bb8: ldp      x8, x1, [x0]
07794bbc: mov      x0, x19
07794bc0: blr      x8
07794bc4: cbnz     x22, #0x7794c64
07794bc8: cmp      w21, #1
07794bcc: b.ne     #0x7794c84
07794bd0: mov      x0, x20
07794bd4: bl       #0x9749aa0
07794bd8: mov      x19, x0
07794bdc: adrp     x0, #0x9b3f000
07794be0: ldr      x0, [x0, #0x7b8]
07794be4: bl       #0x39d34d0
07794be8: ldr      x8, [x19]
07794bec: ldr      x1, [x8]
07794bf0: bl       #0x39d3b10
07794bf4: tbz      w0, #0, #0x7794c44
07794bf8: ldr      x19, [x19]
07794bfc: bl       #0x9749ab0
07794c00: cbz      x19, #0x7794c40
07794c04: ldr      x8, [x19]
07794c08: mov      x0, x19
07794c0c: ldp      x9, x1, [x8, #0x188]
07794c10: blr      x9
07794c14: mov      x19, x0
07794c18: adrp     x0, #0x9b45000
07794c1c: ldr      x0, [x0, #0x2b0]
07794c20: bl       #0x39d34d0
07794c24: ldr      w8, [x0, #0xe0]
07794c28: cbnz     w8, #0x7794c30
07794c2c: bl       #0x39d35c4
07794c30: mov      x0, x19
07794c34: mov      x1, xzr
07794c38: bl       #0x3c4dd3c
07794c3c: b        #0x7794ad0
07794c40: bl       #0x39d36e4
07794c44: mov      w0, #8
07794c48: bl       #0x9749ac0
07794c4c: ldr      x8, [x19]
07794c50: str      x8, [x0]
07794c54: adrp     x1, #0x974f000
07794c58: add      x1, x1, #0xe98
07794c5c: mov      x2, xzr
07794c60: bl       #0x9749ad0
07794c64: mov      x0, x22
07794c68: bl       #0x39d36dc
07794c6c: mov      x21, x1
07794c70: mov      x20, x0
07794c74: cbnz     x19, #0x7794b64
07794c78: b        #0x7794bc4
07794c7c: mov      x20, x0
07794c80: bl       #0x9749ab0
07794c84: mov      x0, x20
07794c88: bl       #0x3ab82d0
07794c8c: mov      x21, x1
07794c90: cmp      w21, #1
07794c94: mov      x20, x0
07794c98: b.ne     #0x7794cc0
07794c9c: mov      x0, x20
07794ca0: bl       #0x9749aa0
07794ca4: ldr      x8, [x0]
07794ca8: str      x8, [sp, #8]
07794cac: bl       #0x9749ab0
07794cb0: ldr      x20, [sp, #8]
07794cb4: mov      w21, wzr
07794cb8: cbnz     x22, #0x77949cc
07794cbc: b        #0x7794a2c
07794cc0: str      xzr, [sp, #8]
07794cc4: cbz      x22, #0x7794d28
07794cc8: adrp     x10, #0x9b3f000
07794ccc: ldr      x8, [x22]
07794cd0: ldr      x10, [x10, #0xed8]
07794cd4: ldrh     w9, [x8, #0x12e]
07794cd8: ldr      x1, [x10]
07794cdc: cbz      x9, #0x7794d00
07794ce0: ldr      x10, [x8, #0xb0]
07794ce4: add      x10, x10, #8
07794ce8: ldur     x11, [x10, #-8]
07794cec: cmp      x11, x1
07794cf0: b.eq     #0x7794d10
07794cf4: subs     x9, x9, #1
07794cf8: add      x10, x10, #0x10
07794cfc: b.ne     #0x7794ce8
07794d00: mov      x0, x22
07794d04: mov      w2, wzr
07794d08: bl       #0x39a94f0
07794d0c: b        #0x7794d1c
07794d10: ldrsw    x9, [x10]
07794d14: add      x8, x8, x9, lsl #4
07794d18: add      x0, x8, #0x138
07794d1c: ldp      x8, x1, [x0]
07794d20: mov      x0, x22
07794d24: blr      x8
07794d28: ldr      x8, [sp, #8]
07794d2c: cbz      x8, #0x7794b3c
07794d30: ldr      x0, [sp, #8]
07794d34: bl       #0x39d36dc
07794d38: mov      x21, x1
07794d3c: mov      x20, x0
07794d40: cbnz     x22, #0x7794cc8
07794d44: b        #0x7794d28
07794d48: bl       #0x35bb99c

// Oak.GameScriptDecrypt.DecryptData 0x77943b0
077943b0: str      x30, [sp, #-0x30]!
077943b4: stp      x22, x21, [sp, #0x10]
077943b8: stp      x20, x19, [sp, #0x20]
077943bc: adrp     x21, #0xa26f000
077943c0: ldrb     w8, [x21, #0x2f9]
077943c4: mov      x19, x1
077943c8: mov      x20, x0
077943cc: tbnz     w8, #0, #0x7794408
077943d0: adrp     x0, #0x9b3f000
077943d4: ldr      x0, [x0, #0x750]
077943d8: bl       #0x39d34bc
077943dc: adrp     x0, #0x9b4c000
077943e0: ldr      x0, [x0, #0x28]
077943e4: bl       #0x39d34bc
077943e8: adrp     x0, #0x9b3f000
077943ec: ldr      x0, [x0, #0xed8]
077943f0: bl       #0x39d34bc
077943f4: adrp     x0, #0x9b40000
077943f8: ldr      x0, [x0, #0x778]
077943fc: bl       #0x39d34bc
07794400: mov      w8, #1
07794404: strb     w8, [x21, #0x2f9]
07794408: mov      w0, #0x5c6e
0779440c: movk     w0, #1, lsl #16
07794410: mov      x1, xzr
07794414: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07794418: tbz      w0, #0, #0x779444c
0779441c: mov      w0, #0x5c6e
07794420: movk     w0, #1, lsl #16
07794424: mov      x1, xzr
07794428: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0779442c: cbz      x0, #0x779484c
07794430: mov      x1, x20
07794434: mov      x2, x19
07794438: ldp      x20, x19, [sp, #0x20]
0779443c: ldp      x22, x21, [sp, #0x10]
07794440: mov      x3, xzr
07794444: ldr      x30, [sp], #0x30
07794448: b        #0x8619a04 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_238
0779444c: cbz      x19, #0x7794624
07794450: ldr      x8, [x19]
07794454: ldr      x1, [x8, #0x2c0]
07794458: ldr      x9, [x8, #0x2b8]
0779445c: mov      x0, x19
07794460: blr      x9
07794464: adrp     x8, #0x9b40000
07794468: ldr      x8, [x8, #0x778]
0779446c: mov      x21, x0
07794470: ldr      x0, [x8]
07794474: bl       #0x39d36d8
07794478: mov      x19, x0
0779447c: mov      x1, xzr
07794480: bl       #0x5b91b80
07794484: adrp     x8, #0x9b4c000
07794488: ldr      x8, [x8, #0x28]
0779448c: ldr      x0, [x8]
07794490: bl       #0x39d36d8
07794494: mov      x22, x0
07794498: mov      w3, #1
0779449c: mov      x1, x19
077944a0: mov      x2, x21
077944a4: mov      x4, xzr
077944a8: bl       #0x5ae9d78
077944ac: adrp     x8, #0x9b3f000
077944b0: ldr      x8, [x8, #0x750]
077944b4: ldr      x0, [x8]
077944b8: ldr      w8, [x0, #0xe0]
077944bc: cbnz     w8, #0x77944c4
077944c0: bl       #0x39d35c4
077944c4: mov      x0, x20
077944c8: mov      x1, xzr
077944cc: bl       #0x5bc2694
077944d0: mov      x1, x0
077944d4: cbz      x1, #0x7794628
077944d8: cbz      x22, #0x779462c
077944dc: ldr      x8, [x22]
077944e0: ldr      w3, [x1, #0x18]
077944e4: ldr      x9, [x8, #0x378]
077944e8: ldr      x4, [x8, #0x380]
077944ec: mov      x0, x22
077944f0: mov      w2, wzr
077944f4: blr      x9
077944f8: mov      x20, xzr
077944fc: adrp     x10, #0x9b3f000
07794500: ldr      x8, [x22]
07794504: ldr      x10, [x10, #0xed8]
07794508: ldrh     w9, [x8, #0x12e]
0779450c: ldr      x1, [x10]
07794510: cbz      x9, #0x7794534
07794514: ldr      x10, [x8, #0xb0]
07794518: add      x10, x10, #8
0779451c: ldur     x11, [x10, #-8]
07794520: cmp      x11, x1
07794524: b.eq     #0x7794544
07794528: subs     x9, x9, #1
0779452c: add      x10, x10, #0x10
07794530: b.ne     #0x779451c
07794534: mov      x0, x22
07794538: mov      w2, wzr
0779453c: bl       #0x39a94f0
07794540: b        #0x7794550
07794544: ldrsw    x9, [x10]
07794548: add      x8, x8, x9, lsl #4
0779454c: add      x0, x8, #0x138
07794550: ldp      x8, x1, [x0]
07794554: mov      x0, x22
07794558: blr      x8
0779455c: cbnz     x20, #0x7794630
07794560: cbz      x19, #0x7794640
07794564: ldr      x8, [x19]
07794568: ldr      x1, [x8, #0x3e0]
0779456c: ldr      x9, [x8, #0x3d8]
07794570: mov      x0, x19
07794574: blr      x9
07794578: mov      x20, x0
0779457c: mov      x22, xzr
07794580: mov      w21, #5
07794584: adrp     x10, #0x9b3f000
07794588: ldr      x8, [x19]
0779458c: ldr      x10, [x10, #0xed8]
07794590: ldrh     w9, [x8, #0x12e]
07794594: ldr      x1, [x10]
07794598: cbz      x9, #0x77945bc
0779459c: ldr      x10, [x8, #0xb0]
077945a0: add      x10, x10, #8
077945a4: ldur     x11, [x10, #-8]
077945a8: cmp      x11, x1
077945ac: b.eq     #0x77945cc
077945b0: subs     x9, x9, #1
077945b4: add      x10, x10, #0x10
077945b8: b.ne     #0x77945a4
077945bc: mov      x0, x19
077945c0: mov      w2, wzr
077945c4: bl       #0x39a94f0
077945c8: b        #0x77945d8
077945cc: ldrsw    x9, [x10]
077945d0: add      x8, x8, x9, lsl #4
077945d4: add      x0, x8, #0x138
077945d8: ldp      x8, x1, [x0]
077945dc: mov      x0, x19
077945e0: blr      x8
077945e4: cbnz     x22, #0x7794638
077945e8: cmp      w21, #5
077945ec: b.eq     #0x77945f4
077945f0: cbnz     w21, #0x7794614
077945f4: mov      x0, xzr
077945f8: bl       #0x5adc15c
077945fc: cbz      x0, #0x7794644
07794600: ldr      x8, [x0]
07794604: ldr      x9, [x8, #0x388]
07794608: ldr      x2, [x8, #0x390]
0779460c: mov      x1, x20
07794610: blr      x9
07794614: ldp      x20, x19, [sp, #0x20]
07794618: ldp      x22, x21, [sp, #0x10]
0779461c: ldr      x30, [sp], #0x30
07794620: ret      
07794624: bl       #0x39d36e4
07794628: bl       #0x39d36e4
0779462c: bl       #0x39d36e4
07794630: mov      x0, x20
07794634: bl       #0x39d36dc
07794638: mov      x0, x22
0779463c: bl       #0x39d36dc
07794640: bl       #0x39d36e4
07794644: bl       #0x39d36e4
07794648: b        #0x779468c
0779464c: b        #0x7794674
07794650: b        #0x7794674
07794654: b        #0x7794674
07794658: b        #0x7794680
0779465c: b        #0x7794680
07794660: b        #0x779468c
07794664: b        #0x7794674
07794668: b        #0x7794674
0779466c: b        #0x7794680
07794670: b        #0x7794674
07794674: mov      x21, x1
07794678: mov      x20, x0
0779467c: b        #0x77947c0
07794680: mov      x21, x1
07794684: mov      x20, x0
07794688: b        #0x779472c
0779468c: mov      x21, x1
07794690: mov      x20, x0
07794694: cmp      w21, #1
07794698: b.ne     #0x77946bc
0779469c: mov      x0, x20
077946a0: bl       #0x9749aa0
077946a4: ldr      x8, [x0]
077946a8: str      x8, [sp, #8]
077946ac: bl       #0x9749ab0
077946b0: ldr      x20, [sp, #8]
077946b4: cbnz     x22, #0x77944fc
077946b8: b        #0x779455c
077946bc: str      xzr, [sp, #8]
077946c0: cbz      x22, #0x7794724
077946c4: adrp     x10, #0x9b3f000
077946c8: ldr      x8, [x22]
077946cc: ldr      x10, [x10, #0xed8]
077946d0: ldrh     w9, [x8, #0x12e]
077946d4: ldr      x1, [x10]
077946d8: cbz      x9, #0x77946fc
077946dc: ldr      x10, [x8, #0xb0]
077946e0: add      x10, x10, #8
077946e4: ldur     x11, [x10, #-8]
077946e8: cmp      x11, x1
077946ec: b.eq     #0x779470c
077946f0: subs     x9, x9, #1
077946f4: add      x10, x10, #0x10
077946f8: b.ne     #0x77946e4
077946fc: mov      x0, x22
07794700: mov      w2, wzr
07794704: bl       #0x39a94f0
07794708: b        #0x7794718
0779470c: ldrsw    x9, [x10]
07794710: add      x8, x8, x9, lsl #4
07794714: add      x0, x8, #0x138
07794718: ldp      x8, x1, [x0]
0779471c: mov      x0, x22
07794720: blr      x8
07794724: ldr      x8, [sp, #8]
07794728: cbnz     x8, #0x7794878
0779472c: cmp      w21, #1
07794730: b.ne     #0x7794754
07794734: mov      x0, x20
07794738: bl       #0x9749aa0
0779473c: ldr      x22, [x0]
07794740: bl       #0x9749ab0
07794744: mov      x20, xzr
07794748: mov      w21, wzr
0779474c: cbnz     x19, #0x7794584
07794750: b        #0x77945e4
07794754: mov      x22, xzr
07794758: cbz      x19, #0x77947bc
0779475c: adrp     x10, #0x9b3f000
07794760: ldr      x8, [x19]
07794764: ldr      x10, [x10, #0xed8]
07794768: ldrh     w9, [x8, #0x12e]
0779476c: ldr      x1, [x10]
07794770: cbz      x9, #0x7794794
07794774: ldr      x10, [x8, #0xb0]
07794778: add      x10, x10, #8
0779477c: ldur     x11, [x10, #-8]
07794780: cmp      x11, x1
07794784: b.eq     #0x77947a4
07794788: subs     x9, x9, #1
0779478c: add      x10, x10, #0x10
07794790: b.ne     #0x779477c
07794794: mov      x0, x19
07794798: mov      w2, wzr
0779479c: bl       #0x39a94f0
077947a0: b        #0x77947b0
077947a4: ldrsw    x9, [x10]
077947a8: add      x8, x8, x9, lsl #4
077947ac: add      x0, x8, #0x138
077947b0: ldp      x8, x1, [x0]
077947b4: mov      x0, x19
077947b8: blr      x8
077947bc: cbnz     x22, #0x7794870
077947c0: cmp      w21, #1
077947c4: b.ne     #0x77948a8
077947c8: mov      x0, x20
077947cc: bl       #0x9749aa0
077947d0: mov      x19, x0
077947d4: adrp     x0, #0x9b3f000
077947d8: ldr      x0, [x0, #0x7b8]
077947dc: bl       #0x39d34d0
077947e0: ldr      x8, [x19]
077947e4: ldr      x1, [x8]
077947e8: bl       #0x39d3b10
077947ec: tbz      w0, #0, #0x7794850
077947f0: ldr      x19, [x19]
077947f4: bl       #0x9749ab0
077947f8: cbz      x19, #0x779484c
077947fc: ldr      x8, [x19]
07794800: mov      x0, x19
07794804: ldp      x9, x1, [x8, #0x188]
07794808: blr      x9
0779480c: mov      x19, x0
07794810: adrp     x0, #0x9b45000
07794814: ldr      x0, [x0, #0x2b0]
07794818: bl       #0x39d34d0
0779481c: ldr      w8, [x0, #0xe0]
07794820: cbnz     w8, #0x7794828
07794824: bl       #0x39d35c4
07794828: mov      x0, x19
0779482c: mov      x1, xzr
07794830: bl       #0x3c4dd3c
07794834: adrp     x0, #0x9b3f000
07794838: ldr      x0, [x0, #0x8d0]
0779483c: bl       #0x39d34d0
07794840: ldr      x8, [x0, #0xb8]
07794844: ldr      x0, [x8]
07794848: b        #0x7794614
0779484c: bl       #0x39d36e4
07794850: mov      w0, #8
07794854: bl       #0x9749ac0
07794858: ldr      x8, [x19]
0779485c: str      x8, [x0]
07794860: adrp     x1, #0x974f000
07794864: add      x1, x1, #0xe98
07794868: mov      x2, xzr
0779486c: bl       #0x9749ad0
07794870: mov      x0, x22
07794874: bl       #0x39d36dc
07794878: ldr      x0, [sp, #8]
0779487c: bl       #0x39d36dc
07794880: mov      x21, x1
07794884: mov      x20, x0
07794888: cbnz     x22, #0x77946c4
0779488c: b        #0x7794724
07794890: mov      x21, x1
07794894: mov      x20, x0
07794898: cbnz     x19, #0x779475c
0779489c: b        #0x77947bc
077948a0: mov      x20, x0
077948a4: bl       #0x9749ab0
077948a8: mov      x0, x20
077948ac: bl       #0x3ab82d0
077948b0: bl       #0x35bb99c

// Oak.GameScriptDecrypt.GetRijndaelManaged 0x779418c
0779418c: str      x30, [sp, #-0x30]!
07794190: stp      x22, x21, [sp, #0x10]
07794194: stp      x20, x19, [sp, #0x20]
07794198: adrp     x21, #0xa26f000
0779419c: ldrb     w8, [x21, #0x2fa]
077941a0: mov      x19, x1
077941a4: mov      x20, x0
077941a8: tbnz     w8, #0, #0x77941e4
077941ac: adrp     x0, #0x9b4c000
077941b0: ldr      x0, [x0, #0x30]
077941b4: bl       #0x39d34bc
077941b8: adrp     x0, #0x9b3f000
077941bc: ldr      x0, [x0, #0x8d0]
077941c0: bl       #0x39d34bc
077941c4: adrp     x0, #0x9bf0000
077941c8: ldr      x0, [x0, #0xca8]
077941cc: bl       #0x39d34bc
077941d0: adrp     x0, #0x9bf0000
077941d4: ldr      x0, [x0, #0xcb0]
077941d8: bl       #0x39d34bc
077941dc: mov      w8, #1
077941e0: strb     w8, [x21, #0x2fa]
077941e4: mov      w0, #0x124c
077941e8: mov      x1, xzr
077941ec: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
077941f0: tbz      w0, #0, #0x7794220
077941f4: mov      w0, #0x124c
077941f8: mov      x1, xzr
077941fc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07794200: cbz      x0, #0x77943ac
07794204: mov      x1, x20
07794208: mov      x2, x19
0779420c: ldp      x20, x19, [sp, #0x20]
07794210: ldp      x22, x21, [sp, #0x10]
07794214: mov      x3, xzr
07794218: ldr      x30, [sp], #0x30
0779421c: b        #0x8652b64 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1138
07794220: adrp     x8, #0x9bf0000
07794224: ldr      x8, [x8, #0xca8]
07794228: adrp     x19, #0x9bf0000
0779422c: adrp     x20, #0x9b4c000
07794230: mov      x1, xzr
07794234: ldr      x0, [x8]
07794238: ldr      x19, [x19, #0xcb0]
0779423c: ldr      x20, [x20, #0x30]
07794240: bl       #0x3ac9c90
07794244: ldr      x8, [x19]
07794248: mov      x21, x0
0779424c: mov      x1, xzr
07794250: mov      x0, x8
07794254: bl       #0x3ac9c90
07794258: ldr      x8, [x20]
0779425c: mov      x20, x0
07794260: mov      x0, x8
07794264: bl       #0x39d36d8
07794268: mov      x1, xzr
0779426c: mov      x19, x0
07794270: bl       #0x5afa4b4
07794274: cbz      x19, #0x77943ac
07794278: ldr      x8, [x19]
0779427c: mov      w1, #0x100
07794280: mov      x0, x19
07794284: ldr      x9, [x8, #0x248]
07794288: ldr      x2, [x8, #0x250]
0779428c: blr      x9
07794290: ldr      x8, [x19]
07794294: mov      w1, #0x80
07794298: mov      x0, x19
0779429c: ldp      x9, x2, [x8, #0x1a8]
077942a0: blr      x9
077942a4: ldr      x8, [x19]
077942a8: mov      w1, #1
077942ac: mov      x0, x19
077942b0: ldr      x9, [x8, #0x268]
077942b4: ldr      x2, [x8, #0x270]
077942b8: blr      x9
077942bc: ldr      x8, [x19]
077942c0: mov      w1, #2
077942c4: mov      x0, x19
077942c8: ldr      x9, [x8, #0x288]
077942cc: ldr      x2, [x8, #0x290]
077942d0: blr      x9
077942d4: mov      x0, xzr
077942d8: bl       #0x5adc15c
077942dc: mov      x22, x0
077942e0: mov      x0, x21
077942e4: mov      x1, xzr
077942e8: bl       #0x3ac9cf4
077942ec: cbz      x22, #0x77943ac
077942f0: ldr      x8, [x22]
077942f4: mov      x1, x0
077942f8: mov      x0, x22
077942fc: ldr      x9, [x8, #0x268]
07794300: ldr      x2, [x8, #0x270]
07794304: blr      x9
07794308: ldr      x8, [x19]
0779430c: mov      x1, x0
07794310: mov      x0, x19
07794314: ldr      x9, [x8, #0x208]
07794318: ldr      x2, [x8, #0x210]
0779431c: blr      x9
07794320: mov      x0, xzr
07794324: bl       #0x5adc15c
07794328: mov      x21, x0
0779432c: mov      x0, x20
07794330: mov      x1, xzr
07794334: bl       #0x3ac9cf4
07794338: cbz      x21, #0x77943ac
0779433c: ldr      x8, [x21]
07794340: mov      x1, x0
07794344: mov      x0, x21
07794348: ldr      x9, [x8, #0x268]
0779434c: ldr      x2, [x8, #0x270]
07794350: blr      x9
07794354: ldr      x8, [x19]
07794358: mov      x1, x0
0779435c: mov      x0, x19
07794360: ldp      x9, x2, [x8, #0x1e8]
07794364: blr      x9
07794368: adrp     x20, #0x9b3f000
0779436c: ldr      x20, [x20, #0x8d0]
07794370: mov      x1, xzr
07794374: ldr      x8, [x20]
07794378: ldr      x8, [x8, #0xb8]
0779437c: ldr      x0, [x8]
07794380: bl       #0x3ac9c90
07794384: ldr      x8, [x20]
07794388: mov      x1, xzr
0779438c: ldr      x8, [x8, #0xb8]
07794390: ldr      x0, [x8]
07794394: bl       #0x3ac9c90
07794398: mov      x0, x19
0779439c: ldp      x20, x19, [sp, #0x20]
077943a0: ldp      x22, x21, [sp, #0x10]
077943a4: ldr      x30, [sp], #0x30
077943a8: ret      
077943ac: bl       #0x39d36e4

// Oak.GameScriptDecrypt.DecryptFileToBytes 0x7793d7c
07793d7c: str      x30, [sp, #-0x20]!
07793d80: stp      x20, x19, [sp, #0x10]
07793d84: adrp     x20, #0xa26f000
07793d88: ldrb     w8, [x20, #0x2fb]
07793d8c: mov      x19, x0
07793d90: tbnz     w8, #0, #0x7793dc0
07793d94: adrp     x0, #0x9b40000
07793d98: ldr      x0, [x0, #0x4a0]
07793d9c: bl       #0x39d34bc
07793da0: adrp     x0, #0x9bf0000
07793da4: ldr      x0, [x0, #0xc78]
07793da8: bl       #0x39d34bc
07793dac: adrp     x0, #0x9bf0000
07793db0: ldr      x0, [x0, #0xc80]
07793db4: bl       #0x39d34bc
07793db8: mov      w8, #1
07793dbc: strb     w8, [x20, #0x2fb]
07793dc0: mov      w0, #0x124b
07793dc4: mov      x1, xzr
07793dc8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07793dcc: tbz      w0, #0, #0x7793df4
07793dd0: mov      w0, #0x124b
07793dd4: mov      x1, xzr
07793dd8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07793ddc: cbz      x0, #0x7793ee0
07793de0: mov      x1, x19
07793de4: ldp      x20, x19, [sp, #0x10]
07793de8: mov      x2, xzr
07793dec: ldr      x30, [sp], #0x20
07793df0: b        #0x8622254 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_380
07793df4: adrp     x8, #0x9bf0000
07793df8: adrp     x9, #0x9bf0000
07793dfc: ldr      x8, [x8, #0xc80]
07793e00: ldr      x9, [x9, #0xc78]
07793e04: ldr      x0, [x8]
07793e08: ldr      x1, [x9]
07793e0c: bl       #0x779418c ; Oak.GameScriptDecrypt.GetRijndaelManaged
07793e10: mov      x1, x0
07793e14: mov      x0, x19
07793e18: bl       #0x77948b4 ; Oak.GameScriptDecrypt.DecryptData
07793e1c: adrp     x8, #0x9b40000
07793e20: ldr      x8, [x8, #0x4a0]
07793e24: mov      x19, x0
07793e28: ldr      x0, [x8]
07793e2c: ldr      w8, [x0, #0xe0]
07793e30: cbnz     w8, #0x7793e38
07793e34: bl       #0x39d35c4
07793e38: mov      w1, #1
07793e3c: mov      x0, x19
07793e40: mov      w2, wzr
07793e44: mov      x3, xzr
07793e48: bl       #0x3addedc
07793e4c: ldp      x20, x19, [sp, #0x10]
07793e50: ldr      x30, [sp], #0x20
07793e54: ret      
07793e58: b        #0x7793e60
07793e5c: b        #0x7793e60
07793e60: mov      x19, x0
07793e64: cmp      w1, #1
07793e68: b.ne     #0x7793f0c
07793e6c: mov      x0, x19
07793e70: bl       #0x9749aa0
07793e74: mov      x19, x0
07793e78: adrp     x0, #0x9b3f000
07793e7c: ldr      x0, [x0, #0x7b8]
07793e80: bl       #0x39d34d0
07793e84: ldr      x8, [x19]
07793e88: ldr      x1, [x8]
07793e8c: bl       #0x39d3b10
07793e90: tbz      w0, #0, #0x7793ee4
07793e94: ldr      x19, [x19]
07793e98: bl       #0x9749ab0
07793e9c: cbz      x19, #0x7793ee0
07793ea0: ldr      x8, [x19]
07793ea4: mov      x0, x19
07793ea8: ldp      x9, x1, [x8, #0x188]
07793eac: blr      x9
07793eb0: mov      x19, x0
07793eb4: adrp     x0, #0x9b45000
07793eb8: ldr      x0, [x0, #0x2b0]
07793ebc: bl       #0x39d34d0
07793ec0: ldr      w8, [x0, #0xe0]
07793ec4: cbnz     w8, #0x7793ecc
07793ec8: bl       #0x39d35c4
07793ecc: mov      x0, x19
07793ed0: mov      x1, xzr
07793ed4: bl       #0x3c4dd3c
07793ed8: mov      x0, xzr
07793edc: b        #0x7793e4c
07793ee0: bl       #0x39d36e4
07793ee4: mov      w0, #8
07793ee8: bl       #0x9749ac0
07793eec: ldr      x8, [x19]
07793ef0: str      x8, [x0]
07793ef4: adrp     x1, #0x974f000
07793ef8: add      x1, x1, #0xe98
07793efc: mov      x2, xzr
07793f00: bl       #0x9749ad0
07793f04: mov      x19, x0
07793f08: bl       #0x9749ab0
07793f0c: mov      x0, x19
07793f10: bl       #0x3ab82d0
07793f14: bl       #0x35bb99c

// Oak.GameScriptDecrypt.DecryptFileToString 0x7793590
07793590: str      x30, [sp, #-0x20]!
07793594: stp      x20, x19, [sp, #0x10]
07793598: adrp     x20, #0xa26f000
0779359c: ldrb     w8, [x20, #0x2fc]
077935a0: mov      x19, x0
077935a4: tbnz     w8, #0, #0x77935d4
077935a8: adrp     x0, #0x9b40000
077935ac: ldr      x0, [x0, #0x4a0]
077935b0: bl       #0x39d34bc
077935b4: adrp     x0, #0x9bf0000
077935b8: ldr      x0, [x0, #0xc78]
077935bc: bl       #0x39d34bc
077935c0: adrp     x0, #0x9bf0000
077935c4: ldr      x0, [x0, #0xc80]
077935c8: bl       #0x39d34bc
077935cc: mov      w8, #1
077935d0: strb     w8, [x20, #0x2fc]
077935d4: mov      w0, #0x4bd2
077935d8: movk     w0, #1, lsl #16
077935dc: mov      x1, xzr
077935e0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
077935e4: tbz      w0, #0, #0x7793610
077935e8: mov      w0, #0x4bd2
077935ec: movk     w0, #1, lsl #16
077935f0: mov      x1, xzr
077935f4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
077935f8: cbz      x0, #0x7793730
077935fc: mov      x1, x19
07793600: ldp      x20, x19, [sp, #0x10]
07793604: mov      x2, xzr
07793608: ldr      x30, [sp], #0x20
0779360c: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
07793610: adrp     x8, #0x9bf0000
07793614: adrp     x9, #0x9bf0000
07793618: ldr      x8, [x8, #0xc80]
0779361c: ldr      x9, [x9, #0xc78]
07793620: ldr      x0, [x8]
07793624: ldr      x1, [x9]
07793628: bl       #0x779418c ; Oak.GameScriptDecrypt.GetRijndaelManaged
0779362c: mov      x1, x0
07793630: mov      x0, x19
07793634: bl       #0x77948b4 ; Oak.GameScriptDecrypt.DecryptData
07793638: adrp     x8, #0x9b40000
0779363c: ldr      x8, [x8, #0x4a0]
07793640: mov      x19, x0
07793644: ldr      x0, [x8]
07793648: ldr      w8, [x0, #0xe0]
0779364c: cbnz     w8, #0x7793654
07793650: bl       #0x39d35c4
07793654: mov      w1, #1
07793658: mov      x0, x19
0779365c: mov      w2, wzr
07793660: mov      x3, xzr
07793664: bl       #0x3addedc
07793668: mov      x19, x0
0779366c: mov      x0, xzr
07793670: bl       #0x5adc15c
07793674: cbz      x0, #0x7793698
07793678: ldr      x8, [x0]
0779367c: ldr      x9, [x8, #0x388]
07793680: ldr      x2, [x8, #0x390]
07793684: mov      x1, x19
07793688: blr      x9
0779368c: ldp      x20, x19, [sp, #0x10]
07793690: ldr      x30, [sp], #0x20
07793694: ret      
07793698: bl       #0x39d36e4
0779369c: b        #0x77936b0
077936a0: b        #0x77936b0
077936a4: b        #0x77936b0
077936a8: b        #0x77936b0
077936ac: b        #0x77936b0
077936b0: mov      x19, x0
077936b4: cmp      w1, #1
077936b8: b.ne     #0x779375c
077936bc: mov      x0, x19
077936c0: bl       #0x9749aa0
077936c4: mov      x19, x0
077936c8: adrp     x0, #0x9b3f000
077936cc: ldr      x0, [x0, #0x7b8]
077936d0: bl       #0x39d34d0
077936d4: ldr      x8, [x19]
077936d8: ldr      x1, [x8]
077936dc: bl       #0x39d3b10
077936e0: tbz      w0, #0, #0x7793734
077936e4: ldr      x19, [x19]
077936e8: bl       #0x9749ab0
077936ec: cbz      x19, #0x7793730
077936f0: ldr      x8, [x19]
077936f4: mov      x0, x19
077936f8: ldp      x9, x1, [x8, #0x188]
077936fc: blr      x9
07793700: mov      x19, x0
07793704: adrp     x0, #0x9b45000
07793708: ldr      x0, [x0, #0x2b0]
0779370c: bl       #0x39d34d0
07793710: ldr      w8, [x0, #0xe0]
07793714: cbnz     w8, #0x779371c
07793718: bl       #0x39d35c4
0779371c: mov      x0, x19
07793720: mov      x1, xzr
07793724: bl       #0x3c4dd3c
07793728: mov      x0, xzr
0779372c: b        #0x779368c
07793730: bl       #0x39d36e4
07793734: mov      w0, #8
07793738: bl       #0x9749ac0
0779373c: ldr      x8, [x19]
07793740: str      x8, [x0]
07793744: adrp     x1, #0x974f000
07793748: add      x1, x1, #0xe98
0779374c: mov      x2, xzr
07793750: bl       #0x9749ad0
07793754: mov      x19, x0
07793758: bl       #0x9749ab0
0779375c: mov      x0, x19
07793760: bl       #0x3ab82d0
07793764: bl       #0x35bb99c
