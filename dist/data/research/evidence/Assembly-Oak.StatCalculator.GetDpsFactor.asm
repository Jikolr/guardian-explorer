075a2508: stp      d9, d8, [sp, #-0x20]!
075a250c: str      x30, [sp, #0x10]
075a2510: mov      w0, #0xfbd
075a2514: mov      x1, xzr
075a2518: mov      v9.16b, v1.16b
075a251c: mov      v8.16b, v0.16b
075a2520: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a2524: tbz      w0, #0, #0x75a2550
075a2528: mov      w0, #0xfbd
075a252c: mov      x1, xzr
075a2530: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a2534: cbz      x0, #0x75a2588
075a2538: ldr      x30, [sp, #0x10]
075a253c: mov      v0.16b, v8.16b
075a2540: mov      v1.16b, v9.16b
075a2544: mov      x1, xzr
075a2548: ldp      d9, d8, [sp], #0x20
075a254c: b        #0x8648ad4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_987
075a2550: mov      w8, #0x42c80000
075a2554: fmov     s1, w8
075a2558: fmov     s0, #1.00000000
075a255c: fdiv     s1, s9, s1
075a2560: fmin     s2, s1, s0
075a2564: fcmp     s1, #0.0
075a2568: fmov     s1, wzr
075a256c: fcsel    s2, s2, s1, pl
075a2570: ldr      x30, [sp, #0x10]
075a2574: fmax     s1, s2, s1
075a2578: fadd     s0, s1, s0
075a257c: fmul     s0, s0, s8
075a2580: ldp      d9, d8, [sp], #0x20
075a2584: ret      
075a2588: bl       #0x39d36e4