Oak.WeaponTypeDamageBoostAppliedOption.Oak.IDamageBoostOption.GetAttackModifier
06a870e4: str      x30, [sp, #-0x30]!
06a870e8: stp      x22, x21, [sp, #0x10]
06a870ec: stp      x20, x19, [sp, #0x20]
06a870f0: adrp     x22, #0xa26a000
06a870f4: ldrb     w8, [x22, #0xe23]
06a870f8: mov      x21, x2
06a870fc: mov      x20, x1
06a87100: mov      x19, x0
06a87104: tbnz     w8, #0, #0x6a87134
06a87108: adrp     x0, #0x9bad000
06a8710c: ldr      x0, [x0, #0x750]
06a87110: bl       #0x39d34bc ; unmapped
06a87114: adrp     x0, #0x9bad000
06a87118: ldr      x0, [x0, #0x758]
06a8711c: bl       #0x39d34bc ; unmapped
06a87120: adrp     x0, #0x9bad000
06a87124: ldr      x0, [x0, #0x760]
06a87128: bl       #0x39d34bc ; unmapped
06a8712c: mov      w8, #1
06a87130: strb     w8, [x22, #0xe23]
06a87134: mov      w0, #0xe20a
06a87138: mov      x1, xzr
06a8713c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a87140: tbz      w0, #0, #0x6a87174
06a87144: mov      w0, #0xe20a
06a87148: mov      x1, xzr
06a8714c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a87150: cbz      x0, #0x6a87264
06a87154: and      x3, x21, #0xffffffff
06a87158: mov      x1, x19
06a8715c: mov      x2, x20
06a87160: ldp      x20, x19, [sp, #0x20]
06a87164: ldp      x22, x21, [sp, #0x10]
06a87168: mov      x4, xzr
06a8716c: ldr      x30, [sp], #0x30
06a87170: b        #0x8638698
06a87174: mov      x0, x19
06a87178: bl       #0x6a86f78 ; Oak.WeaponTypeDamageBoostAppliedOption.get_character
06a8717c: cbz      x0, #0x6a87264
06a87180: ldr      x0, [x0, #0x188]
06a87184: cbz      x0, #0x6a871c0
06a87188: mov      x1, xzr
06a8718c: bl       #0x77310e8 ; Oak.Weapon.get_WeaponSpec
06a87190: cbz      x0, #0x6a871c0
06a87194: ldr      x8, [x0, #0x110]
06a87198: cbz      x8, #0x6a871c4
06a8719c: ldr      w1, [x8, #0x10]
06a871a0: adrp     x8, #0x9bad000
06a871a4: ldr      x8, [x8, #0x758]
06a871a8: add      x0, sp, #8
06a871ac: str      xzr, [sp, #8]
06a871b0: ldr      x2, [x8]
06a871b4: bl       #0x4b3c4e4 ; unmapped
06a871b8: ldr      x8, [sp, #8]
06a871bc: b        #0x6a871c4
06a871c0: mov      x8, xzr
06a871c4: tst      w8, #0xff
06a871c8: b.eq     #0x6a871dc
06a871cc: ldr      w9, [x19, #0x28]
06a871d0: lsr      x8, x8, #0x20
06a871d4: cmp      w9, w8
06a871d8: b.eq     #0x6a87248
06a871dc: mov      x0, x19
06a871e0: bl       #0x6a86f78 ; Oak.WeaponTypeDamageBoostAppliedOption.get_character
06a871e4: cbz      x0, #0x6a87264
06a871e8: ldr      x0, [x0, #0x190]
06a871ec: cbz      x0, #0x6a87228
06a871f0: mov      x1, xzr
06a871f4: bl       #0x77310e8 ; Oak.Weapon.get_WeaponSpec
06a871f8: cbz      x0, #0x6a87228
06a871fc: ldr      x8, [x0, #0x110]
06a87200: cbz      x8, #0x6a8722c
06a87204: ldr      w1, [x8, #0x10]
06a87208: adrp     x8, #0x9bad000
06a8720c: ldr      x8, [x8, #0x758]
06a87210: add      x0, sp, #8
06a87214: str      xzr, [sp, #8]
06a87218: ldr      x2, [x8]
06a8721c: bl       #0x4b3c4e4 ; unmapped
06a87220: ldr      x8, [sp, #8]
06a87224: b        #0x6a8722c
06a87228: mov      x8, xzr
06a8722c: tst      w8, #0xff
06a87230: fmov     s0, #1.00000000
06a87234: b.eq     #0x6a87254
06a87238: ldr      w9, [x19, #0x28]
06a8723c: lsr      x8, x8, #0x20
06a87240: cmp      w9, w8
06a87244: b.ne     #0x6a87254
06a87248: ldr      s0, [x19, #0x24]
06a8724c: fmov     s1, #1.00000000
06a87250: fadd     s0, s0, s1
06a87254: ldp      x20, x19, [sp, #0x20]
06a87258: ldp      x22, x21, [sp, #0x10]
06a8725c: ldr      x30, [sp], #0x30
06a87260: ret      
06a87264: bl       #0x39d36e4 ; unmapped