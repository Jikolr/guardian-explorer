08c0e4e4: stp      x30, x19, [sp, #-0x10]!
08c0e4e8: mov      x19, x0
08c0e4ec: mov      w0, #0x49a6
08c0e4f0: mov      x1, xzr
08c0e4f4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e4f8: tbz      w0, #0, #0x8c0e51c
08c0e4fc: mov      w0, #0x49a6
08c0e500: mov      x1, xzr
08c0e504: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e508: cbz      x0, #0x8c0e528
08c0e50c: mov      x1, x19
08c0e510: mov      x2, xzr
08c0e514: ldp      x30, x19, [sp], #0x10
08c0e518: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
08c0e51c: mov      w0, wzr
08c0e520: ldp      x30, x19, [sp], #0x10
08c0e524: ret      
08c0e528: bl       #0x39d36e4