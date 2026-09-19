075a248c: str      d10, [sp, #-0x20]!
075a2490: stp      d9, d8, [sp, #8]
075a2494: str      x30, [sp, #0x18]
075a2498: mov      w0, #0xfbc
075a249c: mov      x1, xzr
075a24a0: mov      v9.16b, v2.16b
075a24a4: mov      v10.16b, v1.16b
075a24a8: mov      v8.16b, v0.16b
075a24ac: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a24b0: tbz      w0, #0, #0x75a24e4
075a24b4: mov      w0, #0xfbc
075a24b8: mov      x1, xzr
075a24bc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a24c0: cbz      x0, #0x75a2504
075a24c4: mov      v0.16b, v8.16b
075a24c8: mov      v2.16b, v9.16b
075a24cc: ldr      x30, [sp, #0x18]
075a24d0: ldp      d9, d8, [sp, #8]
075a24d4: mov      v1.16b, v10.16b
075a24d8: mov      x1, xzr
075a24dc: ldr      d10, [sp], #0x20
075a24e0: b        #0x8648b9c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_988
075a24e4: mov      v0.16b, v10.16b
075a24e8: mov      v1.16b, v9.16b
075a24ec: bl       #0x75a2508 ; Oak.StatCalculator.GetDpsFactor
075a24f0: fmul     s0, s0, s8
075a24f4: ldr      x30, [sp, #0x18]
075a24f8: ldp      d9, d8, [sp, #8]
075a24fc: ldr      d10, [sp], #0x20
075a2500: ret      
075a2504: bl       #0x39d36e4