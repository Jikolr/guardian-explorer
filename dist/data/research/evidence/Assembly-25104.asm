08bb8bb8: str      x30, [sp, #-0x20]!
08bb8bbc: stp      x20, x19, [sp, #0x10]
08bb8bc0: mov      x19, x1
08bb8bc4: mov      x20, x0
08bb8bc8: mov      w0, #0x4595
08bb8bcc: mov      x1, xzr
08bb8bd0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8bd4: tbz      w0, #0, #0x8bb8c00
08bb8bd8: mov      w0, #0x4595
08bb8bdc: mov      x1, xzr
08bb8be0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8be4: cbz      x0, #0x8bb8c10
08bb8be8: mov      x1, x20
08bb8bec: mov      x2, x19
08bb8bf0: ldp      x20, x19, [sp, #0x10]
08bb8bf4: mov      x3, xzr
08bb8bf8: ldr      x30, [sp], #0x20
08bb8bfc: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08bb8c00: ldp      x20, x19, [sp, #0x10]
08bb8c04: mov      w0, wzr
08bb8c08: ldr      x30, [sp], #0x20
08bb8c0c: ret      
08bb8c10: bl       #0x39d36e4