08c0e494: stp      x30, x19, [sp, #-0x10]!
08c0e498: mov      x19, x0
08c0e49c: mov      w0, #0x49a5
08c0e4a0: mov      x1, xzr
08c0e4a4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e4a8: tbz      w0, #0, #0x8c0e4cc
08c0e4ac: mov      w0, #0x49a5
08c0e4b0: mov      x1, xzr
08c0e4b4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e4b8: cbz      x0, #0x8c0e4d8
08c0e4bc: mov      x1, x19
08c0e4c0: mov      x2, xzr
08c0e4c4: ldp      x30, x19, [sp], #0x10
08c0e4c8: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08c0e4cc: fmov     s0, wzr
08c0e4d0: ldp      x30, x19, [sp], #0x10
08c0e4d4: ret      
08c0e4d8: bl       #0x39d36e4