08c0ebdc: stp      x30, x19, [sp, #-0x10]!
08c0ebe0: mov      x19, x0
08c0ebe4: mov      w0, #0x49ae
08c0ebe8: mov      x1, xzr
08c0ebec: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0ebf0: tbz      w0, #0, #0x8c0ec14
08c0ebf4: mov      w0, #0x49ae
08c0ebf8: mov      x1, xzr
08c0ebfc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0ec00: cbz      x0, #0x8c0ec24
08c0ec04: mov      x1, x19
08c0ec08: mov      x2, xzr
08c0ec0c: ldp      x30, x19, [sp], #0x10
08c0ec10: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08c0ec14: mov      x0, x19
08c0ec18: mov      x1, xzr
08c0ec1c: ldp      x30, x19, [sp], #0x10
08c0ec20: b        #0x66b247c ; Oak.IBuffExtensions.ShowEffect
08c0ec24: bl       #0x39d36e4