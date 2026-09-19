08bb926c: stp      x30, x19, [sp, #-0x10]!
08bb9270: mov      x19, x0
08bb9274: mov      w0, #0x459c
08bb9278: mov      x1, xzr
08bb927c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9280: tbz      w0, #0, #0x8bb92a4
08bb9284: mov      w0, #0x459c
08bb9288: mov      x1, xzr
08bb928c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9290: cbz      x0, #0x8bb92ac
08bb9294: mov      x1, x19
08bb9298: mov      x2, xzr
08bb929c: ldp      x30, x19, [sp], #0x10
08bb92a0: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08bb92a4: ldp      x30, x19, [sp], #0x10
08bb92a8: ret      
08bb92ac: bl       #0x39d36e4