08bb8b28: stp      x30, x19, [sp, #-0x10]!
08bb8b2c: mov      x19, x0
08bb8b30: mov      w0, #0x4593
08bb8b34: mov      x1, xzr
08bb8b38: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8b3c: tbz      w0, #0, #0x8bb8b60
08bb8b40: mov      w0, #0x4593
08bb8b44: mov      x1, xzr
08bb8b48: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8b4c: cbz      x0, #0x8bb8b6c
08bb8b50: mov      x1, x19
08bb8b54: mov      x2, xzr
08bb8b58: ldp      x30, x19, [sp], #0x10
08bb8b5c: b        #0x860c090 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_18
08bb8b60: mov      w0, wzr
08bb8b64: ldp      x30, x19, [sp], #0x10
08bb8b68: ret      
08bb8b6c: bl       #0x39d36e4