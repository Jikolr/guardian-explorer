08c0e574: str      x30, [sp, #-0x20]!
08c0e578: stp      x20, x19, [sp, #0x10]
08c0e57c: mov      x19, x1
08c0e580: mov      x20, x0
08c0e584: mov      w0, #0x49a8
08c0e588: mov      x1, xzr
08c0e58c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e590: tbz      w0, #0, #0x8c0e5bc
08c0e594: mov      w0, #0x49a8
08c0e598: mov      x1, xzr
08c0e59c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e5a0: cbz      x0, #0x8c0e5cc
08c0e5a4: mov      x1, x20
08c0e5a8: mov      x2, x19
08c0e5ac: ldp      x20, x19, [sp, #0x10]
08c0e5b0: mov      x3, xzr
08c0e5b4: ldr      x30, [sp], #0x20
08c0e5b8: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08c0e5bc: ldp      x20, x19, [sp, #0x10]
08c0e5c0: mov      w0, wzr
08c0e5c4: ldr      x30, [sp], #0x20
08c0e5c8: ret      
08c0e5cc: bl       #0x39d36e4