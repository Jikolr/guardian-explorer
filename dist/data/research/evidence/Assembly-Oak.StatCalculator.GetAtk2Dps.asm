075a2400: str      x30, [sp, #-0x20]!
075a2404: stp      x20, x19, [sp, #0x10]
075a2408: mov      x19, x1
075a240c: mov      x20, x0
075a2410: mov      w0, #0xfaf
075a2414: mov      x1, xzr
075a2418: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a241c: tbz      w0, #0, #0x75a2448
075a2420: mov      w0, #0xfaf
075a2424: mov      x1, xzr
075a2428: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a242c: cbz      x0, #0x75a2488
075a2430: mov      x1, x20
075a2434: mov      x2, x19
075a2438: ldp      x20, x19, [sp, #0x10]
075a243c: mov      x3, xzr
075a2440: ldr      x30, [sp], #0x20
075a2444: b        #0x8637cd4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_725
075a2448: cbz      x20, #0x75a2454
075a244c: mov      x0, x20
075a2450: b        #0x75a245c
075a2454: cbz      x19, #0x75a2478
075a2458: mov      x0, x19
075a245c: mov      x1, xzr
075a2460: bl       #0x77310e8 ; Oak.Weapon.get_WeaponSpec
075a2464: cbz      x0, #0x75a2488
075a2468: ldp      x20, x19, [sp, #0x10]
075a246c: mov      x1, xzr
075a2470: ldr      x30, [sp], #0x20
075a2474: b        #0x67113fc ; Oak.WeaponSpec.get_Atk2Dps
075a2478: ldp      x20, x19, [sp, #0x10]
075a247c: fmov     s0, wzr
075a2480: ldr      x30, [sp], #0x20
075a2484: ret      
075a2488: bl       #0x39d36e4