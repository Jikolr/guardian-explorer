Oak.AfterSkillDamageBoostAppliedOption.Oak.IDamageBoostOption.GetAttackModifier
069ce938: stp      x30, x21, [sp, #-0x20]!
069ce93c: stp      x20, x19, [sp, #0x10]
069ce940: mov      x20, x1
069ce944: mov      x19, x0
069ce948: mov      w0, #0xdb39
069ce94c: mov      x1, xzr
069ce950: mov      x21, x2
069ce954: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069ce958: tbz      w0, #0, #0x69ce988
069ce95c: mov      w0, #0xdb39
069ce960: mov      x1, xzr
069ce964: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069ce968: cbz      x0, #0x69ce9b0
069ce96c: mov      x1, x19
069ce970: mov      x2, x20
069ce974: ldp      x20, x19, [sp, #0x10]
069ce978: and      x3, x21, #0xffffffff
069ce97c: mov      x4, xzr
069ce980: ldp      x30, x21, [sp], #0x20
069ce984: b        #0x8638698
069ce988: ldr      s0, [x19, #0x2c]
069ce98c: fcmp     s0, #0.0
069ce990: fmov     s0, #1.00000000
069ce994: b.le     #0x69ce9a4
069ce998: ldr      s0, [x19, #0x28]
069ce99c: fmov     s1, #1.00000000
069ce9a0: fadd     s0, s0, s1
069ce9a4: ldp      x20, x19, [sp, #0x10]
069ce9a8: ldp      x30, x21, [sp], #0x20
069ce9ac: ret      
069ce9b0: bl       #0x39d36e4 ; unmapped