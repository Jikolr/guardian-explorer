081d7db4: stp      x30, x19, [sp, #-0x10]!
081d7db8: mov      x19, x0
081d7dbc: mov      w0, #0xf25
081d7dc0: mov      x1, xzr
081d7dc4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
081d7dc8: tbz      w0, #0, #0x81d7dec
081d7dcc: mov      w0, #0xf25
081d7dd0: mov      x1, xzr
081d7dd4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
081d7dd8: cbz      x0, #0x81d7e28
081d7ddc: mov      x1, x19
081d7de0: mov      x2, xzr
081d7de4: ldp      x30, x19, [sp], #0x10
081d7de8: b        #0x8645db0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_939
081d7dec: mov      x8, #0x594b
081d7df0: movk     x8, #0x3886, lsl #16
081d7df4: movk     x8, #0xc5d6, lsl #32
081d7df8: movk     x8, #0x346d, lsl #48
081d7dfc: smulh    x9, x19, x8
081d7e00: asr      x10, x9, #0xb
081d7e04: add      x9, x10, x9, lsr #63
081d7e08: smulh    x8, x9, x8
081d7e0c: lsr      x10, x8, #0x3f
081d7e10: lsr      x8, x8, #0xb
081d7e14: add      w8, w8, w10
081d7e18: mov      w10, #0x2710
081d7e1c: msub     w0, w8, w10, w9
081d7e20: ldp      x30, x19, [sp], #0x10
081d7e24: ret      
081d7e28: bl       #0x39d36e4