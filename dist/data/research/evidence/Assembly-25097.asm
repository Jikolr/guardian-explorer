08bb8a80: stp      x30, x19, [sp, #-0x10]!
08bb8a84: mov      x19, x0
08bb8a88: mov      w0, #0x4591
08bb8a8c: mov      x1, xzr
08bb8a90: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8a94: tbz      w0, #0, #0x8bb8ab8
08bb8a98: mov      w0, #0x4591
08bb8a9c: mov      x1, xzr
08bb8aa0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8aa4: cbz      x0, #0x8bb8ac4
08bb8aa8: mov      x1, x19
08bb8aac: mov      x2, xzr
08bb8ab0: ldp      x30, x19, [sp], #0x10
08bb8ab4: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08bb8ab8: fmov     s0, wzr
08bb8abc: ldp      x30, x19, [sp], #0x10
08bb8ac0: ret      
08bb8ac4: bl       #0x39d36e4