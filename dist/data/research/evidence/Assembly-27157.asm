08c0e52c: stp      x30, x19, [sp, #-0x10]!
08c0e530: mov      x19, x0
08c0e534: mov      w0, #0x49a7
08c0e538: mov      x1, xzr
08c0e53c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e540: tbz      w0, #0, #0x8c0e564
08c0e544: mov      w0, #0x49a7
08c0e548: mov      x1, xzr
08c0e54c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e550: cbz      x0, #0x8c0e570
08c0e554: mov      x1, x19
08c0e558: mov      x2, xzr
08c0e55c: ldp      x30, x19, [sp], #0x10
08c0e560: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
08c0e564: mov      w0, wzr
08c0e568: ldp      x30, x19, [sp], #0x10
08c0e56c: ret      
08c0e570: bl       #0x39d36e4