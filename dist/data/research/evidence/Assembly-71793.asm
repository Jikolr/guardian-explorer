06a396e4: stp      x30, x21, [sp, #-0x20]!
06a396e8: stp      x20, x19, [sp, #0x10]
06a396ec: mov      x19, x1
06a396f0: mov      x20, x0
06a396f4: mov      w0, #0xdf54
06a396f8: mov      x1, xzr
06a396fc: mov      x21, x2
06a39700: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a39704: tbz      w0, #0, #0x6a39734
06a39708: mov      w0, #0xdf54
06a3970c: mov      x1, xzr
06a39710: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a39714: cbz      x0, #0x6a3974c
06a39718: mov      x1, x20
06a3971c: mov      x2, x19
06a39720: ldp      x20, x19, [sp, #0x10]
06a39724: and      x3, x21, #0xffffffff
06a39728: mov      x4, xzr
06a3972c: ldp      x30, x21, [sp], #0x20
06a39730: b        #0x8638698 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_735
06a39734: ldr      s0, [x20, #0x1c]
06a39738: ldp      x20, x19, [sp, #0x10]
06a3973c: fmov     s1, #1.00000000
06a39740: fsub     s0, s1, s0
06a39744: ldp      x30, x21, [sp], #0x20
06a39748: ret      
06a3974c: bl       #0x39d36e4