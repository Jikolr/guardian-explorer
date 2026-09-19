Oak.MerchDamageBoostAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
06a29470: stp      x30, x21, [sp, #-0x20]!
06a29474: stp      x20, x19, [sp, #0x10]
06a29478: mov      x19, x1
06a2947c: mov      x20, x0
06a29480: mov      w0, #0xdeac
06a29484: mov      x1, xzr
06a29488: mov      x21, x2
06a2948c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a29490: tbz      w0, #0, #0x6a294c0
06a29494: mov      w0, #0xdeac
06a29498: mov      x1, xzr
06a2949c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a294a0: cbz      x0, #0x6a29504
06a294a4: mov      x1, x20
06a294a8: mov      x2, x19
06a294ac: ldp      x20, x19, [sp, #0x10]
06a294b0: and      x3, x21, #0xffffffff
06a294b4: mov      x4, xzr
06a294b8: ldp      x30, x21, [sp], #0x20
06a294bc: b        #0x8638698
06a294c0: ldr      x8, [x20]
06a294c4: mov      x0, x20
06a294c8: mov      x1, x19
06a294cc: ldp      x9, x2, [x8, #0x1c8]
06a294d0: blr      x9
06a294d4: fmov     s0, #1.00000000
06a294d8: tbz      w0, #0, #0x6a294f8
06a294dc: ldr      x8, [x20]
06a294e0: mov      x0, x20
06a294e4: mov      x1, x19
06a294e8: ldp      x9, x2, [x8, #0x1d8]
06a294ec: blr      x9
06a294f0: fmov     s1, #1.00000000
06a294f4: fadd     s0, s0, s1
06a294f8: ldp      x20, x19, [sp, #0x10]
06a294fc: ldp      x30, x21, [sp], #0x20
06a29500: ret      
06a29504: bl       #0x39d36e4 ; unmapped