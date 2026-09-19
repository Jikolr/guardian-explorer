081d7e2c: stp      x30, x19, [sp, #-0x10]!
081d7e30: mov      x19, x0
081d7e34: mov      w0, #0xf26
081d7e38: mov      x1, xzr
081d7e3c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
081d7e40: tbz      w0, #0, #0x81d7e64
081d7e44: mov      w0, #0xf26
081d7e48: mov      x1, xzr
081d7e4c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
081d7e50: cbz      x0, #0x81d7e94
081d7e54: mov      x1, x19
081d7e58: mov      x2, xzr
081d7e5c: ldp      x30, x19, [sp], #0x10
081d7e60: b        #0x8645db0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_939
081d7e64: mov      x0, x19
081d7e68: bl       #0x81d7c5c ; Oak.AwakeningTreeUtil.ResourceId
081d7e6c: mov      w8, #0x4dd3
081d7e70: movk     w8, #0x1062, lsl #16
081d7e74: smull    x8, w0, w8
081d7e78: lsr      x9, x8, #0x3f
081d7e7c: asr      x8, x8, #0x26
081d7e80: add      w8, w8, w9
081d7e84: mov      w9, #0x3e8
081d7e88: msub     w0, w8, w9, w0
081d7e8c: ldp      x30, x19, [sp], #0x10
081d7e90: ret      
081d7e94: bl       #0x39d36e4