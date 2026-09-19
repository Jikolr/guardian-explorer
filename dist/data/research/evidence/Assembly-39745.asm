06230c5c: sub      sp, sp, #0x40
06230c60: str      x30, [sp, #0x20]
06230c64: stp      x20, x19, [sp, #0x30]
06230c68: mov      w20, w1
06230c6c: mov      x19, x0
06230c70: mov      w0, #0x8160
06230c74: mov      x1, xzr
06230c78: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06230c7c: tbz      w0, #0, #0x6230cac
06230c80: mov      w0, #0x8160
06230c84: mov      x1, xzr
06230c88: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06230c8c: cbz      x0, #0x6230cd8
06230c90: mov      x1, x19
06230c94: mov      w2, w20
06230c98: ldp      x20, x19, [sp, #0x30]
06230c9c: ldr      x30, [sp, #0x20]
06230ca0: mov      x3, xzr
06230ca4: add      sp, sp, #0x40
06230ca8: b        #0x8621878 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_370
06230cac: ldr      x8, [x19, #0x20]
06230cb0: ldr      q0, [x19, #0x10]
06230cb4: mov      x0, sp
06230cb8: mov      x1, xzr
06230cbc: str      x8, [sp, #0x10]
06230cc0: str      q0, [sp]
06230cc4: bl       #0x3ac5138
06230cc8: ldp      x20, x19, [sp, #0x30]
06230ccc: ldr      x30, [sp, #0x20]
06230cd0: add      sp, sp, #0x40
06230cd4: ret      
06230cd8: bl       #0x39d36e4