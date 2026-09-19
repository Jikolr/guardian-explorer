08bb8a38: stp      x30, x19, [sp, #-0x10]!
08bb8a3c: mov      x19, x0
08bb8a40: mov      w0, #0x4590
08bb8a44: mov      x1, xzr
08bb8a48: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8a4c: tbz      w0, #0, #0x8bb8a70
08bb8a50: mov      w0, #0x4590
08bb8a54: mov      x1, xzr
08bb8a58: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8a5c: cbz      x0, #0x8bb8a7c
08bb8a60: mov      x1, x19
08bb8a64: mov      x2, xzr
08bb8a68: ldp      x30, x19, [sp], #0x10
08bb8a6c: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08bb8a70: fmov     s0, wzr
08bb8a74: ldp      x30, x19, [sp], #0x10
08bb8a78: ret      
08bb8a7c: bl       #0x39d36e4