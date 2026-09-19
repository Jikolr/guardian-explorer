08bb8ad8: stp      x30, x19, [sp, #-0x10]!
08bb8adc: mov      x19, x0
08bb8ae0: mov      w0, #0x4592
08bb8ae4: mov      x1, xzr
08bb8ae8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8aec: tbz      w0, #0, #0x8bb8b10
08bb8af0: mov      w0, #0x4592
08bb8af4: mov      x1, xzr
08bb8af8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8afc: cbz      x0, #0x8bb8b1c
08bb8b00: mov      x1, x19
08bb8b04: mov      x2, xzr
08bb8b08: ldp      x30, x19, [sp], #0x10
08bb8b0c: b        #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
08bb8b10: fmov     s0, wzr
08bb8b14: ldp      x30, x19, [sp], #0x10
08bb8b18: ret      
08bb8b1c: bl       #0x39d36e4