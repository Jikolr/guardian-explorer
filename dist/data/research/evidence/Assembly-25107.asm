08bb9220: stp      x30, x19, [sp, #-0x10]!
08bb9224: mov      x19, x0
08bb9228: mov      w0, #0x459b
08bb922c: mov      x1, xzr
08bb9230: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9234: tbz      w0, #0, #0x8bb9258
08bb9238: mov      w0, #0x459b
08bb923c: mov      x1, xzr
08bb9240: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9244: cbz      x0, #0x8bb9268
08bb9248: mov      x1, x19
08bb924c: mov      x2, xzr
08bb9250: ldp      x30, x19, [sp], #0x10
08bb9254: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08bb9258: mov      x0, x19
08bb925c: mov      x1, xzr
08bb9260: ldp      x30, x19, [sp], #0x10
08bb9264: b        #0x66b247c ; Oak.IBuffExtensions.ShowEffect
08bb9268: bl       #0x39d36e4