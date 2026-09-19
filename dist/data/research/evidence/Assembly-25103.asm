08bb8b70: stp      x30, x19, [sp, #-0x10]!
08bb8b74: mov      x19, x0
08bb8b78: mov      w0, #0x4594
08bb8b7c: mov      x1, xzr
08bb8b80: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8b84: tbz      w0, #0, #0x8bb8ba8
08bb8b88: mov      w0, #0x4594
08bb8b8c: mov      x1, xzr
08bb8b90: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8b94: cbz      x0, #0x8bb8bb4
08bb8b98: mov      x1, x19
08bb8b9c: mov      x2, xzr
08bb8ba0: ldp      x30, x19, [sp], #0x10
08bb8ba4: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
08bb8ba8: mov      w0, wzr
08bb8bac: ldp      x30, x19, [sp], #0x10
08bb8bb0: ret      
08bb8bb4: bl       #0x39d36e4