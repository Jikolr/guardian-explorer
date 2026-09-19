08c0e43c: stp      x30, x19, [sp, #-0x10]!
08c0e440: mov      x19, x0
08c0e444: mov      w0, #0x49a4
08c0e448: mov      x1, xzr
08c0e44c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e450: tbz      w0, #0, #0x8c0e474
08c0e454: mov      w0, #0x49a4
08c0e458: mov      x1, xzr
08c0e45c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e460: cbz      x0, #0x8c0e480
08c0e464: mov      x1, x19
08c0e468: mov      x2, xzr
08c0e46c: ldp      x30, x19, [sp], #0x10
08c0e470: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08c0e474: fmov     s0, wzr
08c0e478: ldp      x30, x19, [sp], #0x10
08c0e47c: ret      
08c0e480: bl       #0x39d36e4