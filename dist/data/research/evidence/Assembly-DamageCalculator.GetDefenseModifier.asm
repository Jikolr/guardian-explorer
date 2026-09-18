// ['defense']
062a742c: str      d8, [sp, #-0x10]!
062a7430: str      x30, [sp, #8]
062a7434: mov      w0, #0xa76
062a7438: mov      x1, xzr
062a743c: mov      v8.16b, v0.16b
062a7440: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062a7444: tbz      w0, #0, #0x62a746c
062a7448: mov      w0, #0xa76
062a744c: mov      x1, xzr
062a7450: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062a7454: cbz      x0, #0x62a7488
062a7458: ldr      x30, [sp, #8]
062a745c: mov      v0.16b, v8.16b
062a7460: mov      x1, xzr
062a7464: ldr      d8, [sp], #0x10
062a7468: b        #0x8638cd0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_741
062a746c: mov      w8, #0x42c80000
062a7470: ldr      x30, [sp, #8]
062a7474: fmov     s0, w8
062a7478: fadd     s1, s8, s0
062a747c: fdiv     s0, s0, s1
062a7480: ldr      d8, [sp], #0x10
062a7484: ret      
062a7488: bl       #0x39d36e4