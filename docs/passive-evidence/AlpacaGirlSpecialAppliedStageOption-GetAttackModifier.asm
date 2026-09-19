Oak.AlpacaGirlSpecialAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
069cfa74: str      d8, [sp, #-0x40]!
069cfa78: stp      x30, x23, [sp, #0x10]
069cfa7c: stp      x22, x21, [sp, #0x20]
069cfa80: stp      x20, x19, [sp, #0x30]
069cfa84: adrp     x22, #0xa26a000
069cfa88: ldrb     w8, [x22, #0x9ad]
069cfa8c: mov      x21, x2
069cfa90: mov      x20, x1
069cfa94: mov      x19, x0
069cfa98: tbnz     w8, #0, #0x69cfab0
069cfa9c: adrp     x0, #0x9b45000
069cfaa0: ldr      x0, [x0, #0x3f8]
069cfaa4: bl       #0x39d34bc ; unmapped
069cfaa8: mov      w8, #1
069cfaac: strb     w8, [x22, #0x9ad]
069cfab0: mov      w0, #0xdb4c
069cfab4: mov      x1, xzr
069cfab8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069cfabc: tbz      w0, #0, #0x69cfaf4
069cfac0: mov      w0, #0xdb4c
069cfac4: mov      x1, xzr
069cfac8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069cfacc: cbz      x0, #0x69cfc30
069cfad0: and      x3, x21, #0xffffffff
069cfad4: mov      x1, x19
069cfad8: mov      x2, x20
069cfadc: ldp      x20, x19, [sp, #0x30]
069cfae0: ldp      x22, x21, [sp, #0x20]
069cfae4: ldp      x30, x23, [sp, #0x10]
069cfae8: mov      x4, xzr
069cfaec: ldr      d8, [sp], #0x40
069cfaf0: b        #0x8638698
069cfaf4: ldr      s0, [x19, #0x24]
069cfaf8: fmov     s8, #1.00000000
069cfafc: fcmp     s0, #0.0
069cfb00: b.le     #0x69cfc08
069cfb04: mov      x0, xzr
069cfb08: bl       #0x6a890f4 ; Oak.PartyManager.get_Instance
069cfb0c: cbz      x0, #0x69cfc30
069cfb10: ldr      x1, [x19, #0x18]
069cfb14: mov      x2, xzr
069cfb18: bl       #0x6a948d4 ; Oak.PartyManager.GetPartyFor
069cfb1c: cbz      x0, #0x69cfc08
069cfb20: ldr      x8, [x0]
069cfb24: mov      x20, x0
069cfb28: ldr      x9, [x8, #0x568]
069cfb2c: ldr      x1, [x8, #0x570]
069cfb30: blr      x9
069cfb34: cmp      w0, #1
069cfb38: b.lt     #0x69cfc08
069cfb3c: adrp     x22, #0x9b45000
069cfb40: ldr      x22, [x22, #0x3f8]
069cfb44: mov      w21, wzr
069cfb48: ldr      x8, [x20]
069cfb4c: mov      x0, x20
069cfb50: mov      w1, w21
069cfb54: ldr      x9, [x8, #0x548]
069cfb58: ldr      x2, [x8, #0x550]
069cfb5c: blr      x9
069cfb60: cbz      x0, #0x69cfbe8
069cfb64: ldr      x9, [x0]
069cfb68: ldr      x8, [x22]
069cfb6c: ldrb     w11, [x9, #0x130]
069cfb70: ldrb     w10, [x8, #0x130]
069cfb74: cmp      w11, w10
069cfb78: b.lo     #0x69cfbe8
069cfb7c: ldr      x9, [x9, #0xc8]
069cfb80: add      x9, x9, x10, lsl #3
069cfb84: ldur     x9, [x9, #-8]
069cfb88: cmp      x9, x8
069cfb8c: b.ne     #0x69cfbe8
069cfb90: ldr      x8, [x19, #0x18]
069cfb94: cmp      x0, x8
069cfb98: b.eq     #0x69cfbe8
069cfb9c: mov      x1, xzr
069cfba0: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
069cfba4: cbz      x0, #0x69cfc30
069cfba8: mov      x1, xzr
069cfbac: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
069cfbb0: cbz      x0, #0x69cfc30
069cfbb4: ldr      x8, [x19, #0x18]
069cfbb8: cbz      x8, #0x69cfc30
069cfbbc: ldr      w23, [x0, #0x178]
069cfbc0: mov      x0, x8
069cfbc4: mov      x1, xzr
069cfbc8: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
069cfbcc: cbz      x0, #0x69cfc30
069cfbd0: mov      x1, xzr
069cfbd4: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
069cfbd8: cbz      x0, #0x69cfc30
069cfbdc: ldr      w8, [x0, #0x178]
069cfbe0: cmp      w23, w8
069cfbe4: b.eq     #0x69cfc20
069cfbe8: ldr      x8, [x20]
069cfbec: mov      x0, x20
069cfbf0: add      w21, w21, #1
069cfbf4: ldr      x9, [x8, #0x568]
069cfbf8: ldr      x1, [x8, #0x570]
069cfbfc: blr      x9
069cfc00: cmp      w21, w0
069cfc04: b.lt     #0x69cfb48
069cfc08: ldp      x20, x19, [sp, #0x30]
069cfc0c: ldp      x22, x21, [sp, #0x20]
069cfc10: ldp      x30, x23, [sp, #0x10]
069cfc14: mov      v0.16b, v8.16b
069cfc18: ldr      d8, [sp], #0x40
069cfc1c: ret      
069cfc20: ldr      s0, [x19, #0x24]
069cfc24: fmov     s1, #1.00000000
069cfc28: fadd     s8, s0, s1
069cfc2c: b        #0x69cfc08
069cfc30: bl       #0x39d36e4 ; unmapped