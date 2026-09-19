Oak.NoHitDamageBoostAppliedOption.Oak.IDamageBoostOption.GetAttackModifier
06a2f1a8: stp      x30, x21, [sp, #-0x20]!
06a2f1ac: stp      x20, x19, [sp, #0x10]
06a2f1b0: mov      x20, x1
06a2f1b4: mov      x19, x0
06a2f1b8: mov      w0, #0xdef1
06a2f1bc: mov      x1, xzr
06a2f1c0: mov      x21, x2
06a2f1c4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a2f1c8: tbz      w0, #0, #0x6a2f1f8
06a2f1cc: mov      w0, #0xdef1
06a2f1d0: mov      x1, xzr
06a2f1d4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a2f1d8: cbz      x0, #0x6a2f224
06a2f1dc: mov      x1, x19
06a2f1e0: mov      x2, x20
06a2f1e4: ldp      x20, x19, [sp, #0x10]
06a2f1e8: and      x3, x21, #0xffffffff
06a2f1ec: mov      x4, xzr
06a2f1f0: ldp      x30, x21, [sp], #0x20
06a2f1f4: b        #0x8638698
06a2f1f8: ldr      s0, [x19, #0x2c]
06a2f1fc: ldr      s1, [x19, #0x24]
06a2f200: fcmp     s0, s1
06a2f204: fmov     s0, #1.00000000
06a2f208: b.lt     #0x6a2f218
06a2f20c: ldr      s0, [x19, #0x28]
06a2f210: fmov     s1, #1.00000000
06a2f214: fadd     s0, s0, s1
06a2f218: ldp      x20, x19, [sp, #0x10]
06a2f21c: ldp      x30, x21, [sp], #0x20
06a2f220: ret      
06a2f224: bl       #0x39d36e4 ; unmapped