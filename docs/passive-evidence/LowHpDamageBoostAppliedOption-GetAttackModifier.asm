Oak.LowHpDamageBoostAppliedOption.Oak.IDamageBoostOption.GetAttackModifier
06a22860: stp      x30, x21, [sp, #-0x20]!
06a22864: stp      x20, x19, [sp, #0x10]
06a22868: mov      x20, x1
06a2286c: mov      x19, x0
06a22870: mov      w0, #0xde5d
06a22874: mov      x1, xzr
06a22878: mov      x21, x2
06a2287c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a22880: tbz      w0, #0, #0x6a228b0
06a22884: mov      w0, #0xde5d
06a22888: mov      x1, xzr
06a2288c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a22890: cbz      x0, #0x6a22910
06a22894: mov      x1, x19
06a22898: mov      x2, x20
06a2289c: ldp      x20, x19, [sp, #0x10]
06a228a0: and      x3, x21, #0xffffffff
06a228a4: mov      x4, xzr
06a228a8: ldp      x30, x21, [sp], #0x20
06a228ac: b        #0x8638698
06a228b0: mov      x0, x19
06a228b4: bl       #0x6a226f4 ; Oak.LowHpDamageBoostAppliedOption.get_character
06a228b8: cbz      x0, #0x6a22910
06a228bc: mov      x1, xzr
06a228c0: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
06a228c4: cbz      x0, #0x6a22910
06a228c8: mov      x1, xzr
06a228cc: bl       #0x63af514 ; Oak.FieldObjectStatsBehaviour.get_HpRatio
06a228d0: ldr      s1, [x19, #0x24]
06a228d4: fcmp     s0, s1
06a228d8: fmov     s1, #1.00000000
06a228dc: b.hi     #0x6a22900
06a228e0: ldp      s1, s2, [x19, #0x28]
06a228e4: fmov     s3, #1.00000000
06a228e8: fsub     s0, s3, s0
06a228ec: fcmp     s0, s1
06a228f0: fcsel    s0, s0, s1, gt
06a228f4: fcmp     s2, s0
06a228f8: fcsel    s0, s2, s0, mi
06a228fc: fadd     s1, s0, s3
06a22900: ldp      x20, x19, [sp, #0x10]
06a22904: mov      v0.16b, v1.16b
06a22908: ldp      x30, x21, [sp], #0x20
06a2290c: ret      
06a22910: bl       #0x39d36e4 ; unmapped