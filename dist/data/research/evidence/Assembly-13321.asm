081d7e98: stp      x30, x19, [sp, #-0x10]!
081d7e9c: mov      x19, x0
081d7ea0: mov      w0, #0xf24
081d7ea4: mov      x1, xzr
081d7ea8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
081d7eac: tbz      w0, #0, #0x81d7ed0
081d7eb0: mov      w0, #0xf24
081d7eb4: mov      x1, xzr
081d7eb8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
081d7ebc: cbz      x0, #0x81d7ef4
081d7ec0: mov      x1, x19
081d7ec4: mov      x2, xzr
081d7ec8: ldp      x30, x19, [sp], #0x10
081d7ecc: b        #0x8645db0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_939
081d7ed0: mov      x0, x19
081d7ed4: bl       #0x81d7b5c ; Oak.AwakeningTreeUtil.IsSpecialNode
081d7ed8: tbz      w0, #0, #0x81d7ee8
081d7edc: mov      x0, x19
081d7ee0: ldp      x30, x19, [sp], #0x10
081d7ee4: b        #0x81d7e2c ; Oak.AwakeningTreeUtil.SpecialNodeOptionId
081d7ee8: mov      x0, x19
081d7eec: ldp      x30, x19, [sp], #0x10
081d7ef0: b        #0x81d7db4 ; Oak.AwakeningTreeUtil.StatOptionId
081d7ef4: bl       #0x39d36e4