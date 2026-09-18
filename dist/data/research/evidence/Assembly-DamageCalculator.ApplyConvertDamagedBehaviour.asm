// ['damageInfo']
062a9b78: stp      x30, x21, [sp, #-0x20]!
062a9b7c: stp      x20, x19, [sp, #0x10]
062a9b80: adrp     x20, #0xa267000
062a9b84: ldrb     w8, [x20, #0x585]
062a9b88: mov      x19, x0
062a9b8c: tbnz     w8, #0, #0x62a9bb0
062a9b90: adrp     x0, #0x9b85000
062a9b94: ldr      x0, [x0, #0x490]
062a9b98: bl       #0x39d34bc
062a9b9c: adrp     x0, #0x9b44000
062a9ba0: ldr      x0, [x0, #0xdb0]
062a9ba4: bl       #0x39d34bc
062a9ba8: mov      w8, #1
062a9bac: strb     w8, [x20, #0x585]
062a9bb0: mov      w0, #0xa9d
062a9bb4: mov      x1, xzr
062a9bb8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a9bbc: tbz      w0, #0, #0x62a9be4
062a9bc0: mov      w0, #0xa9d
062a9bc4: mov      x1, xzr
062a9bc8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a9bcc: cbz      x0, #0x62a9d58
062a9bd0: mov      x1, x19
062a9bd4: ldp      x20, x19, [sp, #0x10]
062a9bd8: mov      x2, xzr
062a9bdc: ldp      x30, x21, [sp], #0x20
062a9be0: b        #0x86363ac ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_699
062a9be4: ldr      x20, [x19, #0x10]
062a9be8: cbz      x20, #0x62a9d58
062a9bec: adrp     x21, #0x9b44000
062a9bf0: ldr      x8, [x20]
062a9bf4: ldr      x21, [x21, #0xdb0]
062a9bf8: ldrh     w9, [x8, #0x12e]
062a9bfc: ldr      x1, [x21]
062a9c00: cbz      x9, #0x62a9c24
062a9c04: ldr      x10, [x8, #0xb0]
062a9c08: add      x10, x10, #8
062a9c0c: ldur     x11, [x10, #-8]
062a9c10: cmp      x11, x1
062a9c14: b.eq     #0x62a9c34
062a9c18: subs     x9, x9, #1
062a9c1c: add      x10, x10, #0x10
062a9c20: b.ne     #0x62a9c0c
062a9c24: mov      w2, #0x13
062a9c28: mov      x0, x20
062a9c2c: bl       #0x39a94f0
062a9c30: b        #0x62a9c44
062a9c34: ldr      w9, [x10]
062a9c38: add      w9, w9, #0x13
062a9c3c: add      x8, x8, w9, sxtw #4
062a9c40: add      x0, x8, #0x138
062a9c44: ldp      x8, x1, [x0]
062a9c48: mov      x0, x20
062a9c4c: blr      x8
062a9c50: cbz      x0, #0x62a9d58
062a9c54: mov      x1, xzr
062a9c58: bl       #0x63af8b4 ; Oak.FieldObjectStatsBehaviour.get_ConstantDamage
062a9c5c: tbz      w0, #0, #0x62a9c6c
062a9c60: mov      x0, x19
062a9c64: mov      x1, xzr
062a9c68: bl       #0x66c7c20 ; Oak.IDamagedBehaviourExtensions.ConvertDamageToConstant
062a9c6c: ldr      x20, [x19, #0x10]
062a9c70: cbz      x20, #0x62a9d58
062a9c74: ldr      x8, [x20]
062a9c78: ldr      x1, [x21]
062a9c7c: ldrh     w9, [x8, #0x12e]
062a9c80: cbz      x9, #0x62a9ca4
062a9c84: ldr      x10, [x8, #0xb0]
062a9c88: add      x10, x10, #8
062a9c8c: ldur     x11, [x10, #-8]
062a9c90: cmp      x11, x1
062a9c94: b.eq     #0x62a9cb4
062a9c98: subs     x9, x9, #1
062a9c9c: add      x10, x10, #0x10
062a9ca0: b.ne     #0x62a9c8c
062a9ca4: mov      w2, #0x11
062a9ca8: mov      x0, x20
062a9cac: bl       #0x39a94f0
062a9cb0: b        #0x62a9cc4
062a9cb4: ldr      w9, [x10]
062a9cb8: add      w9, w9, #0x11
062a9cbc: add      x8, x8, w9, sxtw #4
062a9cc0: add      x0, x8, #0x138
062a9cc4: ldp      x8, x1, [x0]
062a9cc8: mov      x0, x20
062a9ccc: blr      x8
062a9cd0: adrp     x21, #0x9b85000
062a9cd4: ldr      x21, [x21, #0x490]
062a9cd8: ldr      x1, [x21]
062a9cdc: bl       #0x39d35c8
062a9ce0: cbz      x0, #0x62a9d28
062a9ce4: ldr      x8, [x0]
062a9ce8: ldr      x1, [x21]
062a9cec: mov      x20, x0
062a9cf0: ldrh     w9, [x8, #0x12e]
062a9cf4: cbz      x9, #0x62a9d18
062a9cf8: ldr      x10, [x8, #0xb0]
062a9cfc: add      x10, x10, #8
062a9d00: ldur     x11, [x10, #-8]
062a9d04: cmp      x11, x1
062a9d08: b.eq     #0x62a9d34
062a9d0c: subs     x9, x9, #1
062a9d10: add      x10, x10, #0x10
062a9d14: b.ne     #0x62a9d00
062a9d18: mov      x0, x20
062a9d1c: mov      w2, wzr
062a9d20: bl       #0x39a94f0
062a9d24: b        #0x62a9d40
062a9d28: ldp      x20, x19, [sp, #0x10]
062a9d2c: ldp      x30, x21, [sp], #0x20
062a9d30: ret      
062a9d34: ldrsw    x9, [x10]
062a9d38: add      x8, x8, x9, lsl #4
062a9d3c: add      x0, x8, #0x138
062a9d40: ldp      x3, x2, [x0]
062a9d44: mov      x0, x20
062a9d48: mov      x1, x19
062a9d4c: ldp      x20, x19, [sp, #0x10]
062a9d50: ldp      x30, x21, [sp], #0x20
062a9d54: br       x3
062a9d58: bl       #0x39d36e4