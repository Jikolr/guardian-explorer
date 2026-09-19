08c0e3f4: stp      x30, x19, [sp, #-0x10]!
08c0e3f8: mov      x19, x0
08c0e3fc: mov      w0, #0x49a3
08c0e400: mov      x1, xzr
08c0e404: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e408: tbz      w0, #0, #0x8c0e42c
08c0e40c: mov      w0, #0x49a3
08c0e410: mov      x1, xzr
08c0e414: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e418: cbz      x0, #0x8c0e438
08c0e41c: mov      x1, x19
08c0e420: mov      x2, xzr
08c0e424: ldp      x30, x19, [sp], #0x10
08c0e428: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08c0e42c: fmov     s0, wzr
08c0e430: ldp      x30, x19, [sp], #0x10
08c0e434: ret      
08c0e438: bl       #0x39d36e4