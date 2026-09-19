Oak.FireBishop2SpecialAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
069fa5cc: sub      sp, sp, #0x80
069fa5d0: stp      d9, d8, [sp, #0x50]
069fa5d4: stp      x30, x21, [sp, #0x60]
069fa5d8: stp      x20, x19, [sp, #0x70]
069fa5dc: mov      x20, x1
069fa5e0: mov      x19, x0
069fa5e4: mov      w0, #0xdd01
069fa5e8: mov      x1, xzr
069fa5ec: mov      x21, x2
069fa5f0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069fa5f4: tbz      w0, #0, #0x69fa62c
069fa5f8: mov      w0, #0xdd01
069fa5fc: mov      x1, xzr
069fa600: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069fa604: cbz      x0, #0x69fa71c
069fa608: and      x3, x21, #0xffffffff
069fa60c: mov      x1, x19
069fa610: mov      x2, x20
069fa614: ldp      x20, x19, [sp, #0x70]
069fa618: ldp      x30, x21, [sp, #0x60]
069fa61c: ldp      d9, d8, [sp, #0x50]
069fa620: mov      x4, xzr
069fa624: add      sp, sp, #0x80
069fa628: b        #0x8638698
069fa62c: adrp     x20, #0xa25e000
069fa630: ldrb     w8, [x20, #0x1bb]
069fa634: cbnz     w8, #0x69fa64c
069fa638: adrp     x0, #0x9b45000
069fa63c: ldr      x0, [x0, #0x6c8]
069fa640: bl       #0x39d34bc ; unmapped
069fa644: mov      w8, #1
069fa648: strb     w8, [x20, #0x1bb]
069fa64c: adrp     x8, #0x9b45000
069fa650: ldr      x8, [x8, #0x6c8]
069fa654: ldr      x8, [x8]
069fa658: ldr      x8, [x8, #0xb8]
069fa65c: ldr      x8, [x8]
069fa660: cbz      x8, #0x69fa71c
069fa664: ldr      x0, [x8, #0xe8]
069fa668: cbz      x0, #0x69fa684
069fa66c: ldr      x1, [x19, #0x18]
069fa670: mov      w2, wzr
069fa674: mov      x3, xzr
069fa678: bl       #0x8b72950 ; Oak.BattleManager.GetBattleFor
069fa67c: mov      x20, x0
069fa680: b        #0x69fa688
069fa684: mov      x20, xzr
069fa688: ldr      x0, [x19, #0x18]
069fa68c: cbz      x0, #0x69fa71c
069fa690: mov      x1, xzr
069fa694: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
069fa698: cbz      x0, #0x69fa71c
069fa69c: add      x8, sp, #0x38
069fa6a0: mov      x1, xzr
069fa6a4: bl       #0x8c87044 ; Oak.CharacterStatsBehaviour.get_CriticalChance
069fa6a8: ldur     q0, [sp, #0x38]
069fa6ac: ldr      x8, [sp, #0x48]
069fa6b0: add      x0, sp, #0x20
069fa6b4: mov      x1, xzr
069fa6b8: str      q0, [sp, #0x20]
069fa6bc: str      x8, [sp, #0x30]
069fa6c0: bl       #0x3ac5138 ; unmapped
069fa6c4: cbz      x20, #0x69fa704
069fa6c8: ldur     x9, [x19, #0x34]
069fa6cc: ldur     q1, [x19, #0x24]
069fa6d0: mov      w8, #0x42c80000
069fa6d4: fmov     s2, w8
069fa6d8: fmov     s8, #1.00000000
069fa6dc: fdiv     s0, s0, s2
069fa6e0: mov      x0, sp
069fa6e4: mov      x1, xzr
069fa6e8: fmin     s9, s0, s8
069fa6ec: str      x9, [sp, #0x10]
069fa6f0: str      q1, [sp]
069fa6f4: bl       #0x3ac5138 ; unmapped
069fa6f8: fmul     s0, s9, s0
069fa6fc: fadd     s0, s0, s8
069fa700: b        #0x69fa708
069fa704: fmov     s0, #1.00000000
069fa708: ldp      x20, x19, [sp, #0x70]
069fa70c: ldp      x30, x21, [sp, #0x60]
069fa710: ldp      d9, d8, [sp, #0x50]
069fa714: add      sp, sp, #0x80
069fa718: ret      
069fa71c: bl       #0x39d36e4 ; unmapped