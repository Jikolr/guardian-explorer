08c0ec28: stp      x30, x19, [sp, #-0x10]!
08c0ec2c: mov      x19, x0
08c0ec30: mov      w0, #0x49af
08c0ec34: mov      x1, xzr
08c0ec38: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0ec3c: tbz      w0, #0, #0x8c0ec60
08c0ec40: mov      w0, #0x49af
08c0ec44: mov      x1, xzr
08c0ec48: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0ec4c: cbz      x0, #0x8c0ec68
08c0ec50: mov      x1, x19
08c0ec54: mov      x2, xzr
08c0ec58: ldp      x30, x19, [sp], #0x10
08c0ec5c: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08c0ec60: ldp      x30, x19, [sp], #0x10
08c0ec64: ret      
08c0ec68: bl       #0x39d36e4