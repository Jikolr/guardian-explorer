Oak.DemonPowerGirlSpecialAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
069f198c: sub      sp, sp, #0x60
069f1990: stp      x30, x21, [sp, #0x40]
069f1994: stp      x20, x19, [sp, #0x50]
069f1998: mov      x20, x1
069f199c: mov      x19, x0
069f19a0: mov      w0, #0xdc9c
069f19a4: mov      x1, xzr
069f19a8: mov      x21, x2
069f19ac: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069f19b0: tbz      w0, #0, #0x69f19e4
069f19b4: mov      w0, #0xdc9c
069f19b8: mov      x1, xzr
069f19bc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069f19c0: cbz      x0, #0x69f1a4c
069f19c4: and      x3, x21, #0xffffffff
069f19c8: mov      x1, x19
069f19cc: mov      x2, x20
069f19d0: ldp      x20, x19, [sp, #0x50]
069f19d4: ldp      x30, x21, [sp, #0x40]
069f19d8: mov      x4, xzr
069f19dc: add      sp, sp, #0x60
069f19e0: b        #0x8638698
069f19e4: ldrb     w8, [x19, #0xd8]
069f19e8: cbz      w8, #0x69f1a10
069f19ec: mov      x0, x19
069f19f0: bl       #0x69f0ee0 ; Oak.DemonPowerGirlSpecialAppliedStageOption.get_IsConditionSatisfied
069f19f4: tbz      w0, #0, #0x69f1a18
069f19f8: ldur     x8, [x19, #0x4c]
069f19fc: ldur     q0, [x19, #0x3c]
069f1a00: mov      x0, sp
069f1a04: str      x8, [sp, #0x10]
069f1a08: str      q0, [sp]
069f1a0c: b        #0x69f1a2c
069f1a10: fmov     s0, #1.00000000
069f1a14: b        #0x69f1a3c
069f1a18: ldur     x8, [x19, #0x34]
069f1a1c: ldur     q0, [x19, #0x24]
069f1a20: add      x0, sp, #0x20
069f1a24: str      x8, [sp, #0x30]
069f1a28: str      q0, [sp, #0x20]
069f1a2c: mov      x1, xzr
069f1a30: bl       #0x3ac5138 ; unmapped
069f1a34: fmov     s1, #1.00000000
069f1a38: fadd     s0, s0, s1
069f1a3c: ldp      x20, x19, [sp, #0x50]
069f1a40: ldp      x30, x21, [sp, #0x40]
069f1a44: add      sp, sp, #0x60
069f1a48: ret      
069f1a4c: bl       #0x39d36e4 ; unmapped