// ['damageInfo']
062aa610: str      x30, [sp, #-0x30]!
062aa614: stp      x22, x21, [sp, #0x10]
062aa618: stp      x20, x19, [sp, #0x20]
062aa61c: adrp     x20, #0xa267000
062aa620: ldrb     w8, [x20, #0x584]
062aa624: mov      x19, x0
062aa628: tbnz     w8, #0, #0x62aa658
062aa62c: adrp     x0, #0x9b81000
062aa630: ldr      x0, [x0, #0x600]
062aa634: bl       #0x39d34bc
062aa638: adrp     x0, #0x9b78000
062aa63c: ldr      x0, [x0, #0x8f8]
062aa640: bl       #0x39d34bc
062aa644: adrp     x0, #0x9b44000
062aa648: ldr      x0, [x0, #0xdb0]
062aa64c: bl       #0x39d34bc
062aa650: mov      w8, #1
062aa654: strb     w8, [x20, #0x584]
062aa658: mov      w0, #0x9bb
062aa65c: mov      x1, xzr
062aa660: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062aa664: tbz      w0, #0, #0x62aa690
062aa668: mov      w0, #0x9bb
062aa66c: mov      x1, xzr
062aa670: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062aa674: cbz      x0, #0x62aa940
062aa678: mov      x1, x19
062aa67c: ldp      x20, x19, [sp, #0x20]
062aa680: ldp      x22, x21, [sp, #0x10]
062aa684: mov      x2, xzr
062aa688: ldr      x30, [sp], #0x30
062aa68c: b        #0x86363ac ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_699
062aa690: mov      x0, x19
062aa694: bl       #0x62a8010 ; Oak.DamageCalculator.CalculateDamageOnly
062aa698: mov      x0, x19
062aa69c: bl       #0x62a9d5c ; Oak.DamageCalculator.CalculateAilmentsOnly
062aa6a0: ldr      x20, [x19, #0x10]
062aa6a4: cbz      x20, #0x62aa940
062aa6a8: adrp     x22, #0x9b44000
062aa6ac: ldr      x8, [x20]
062aa6b0: ldr      x22, [x22, #0xdb0]
062aa6b4: ldrh     w9, [x8, #0x12e]
062aa6b8: ldr      x1, [x22]
062aa6bc: cbz      x9, #0x62aa6e0
062aa6c0: ldr      x10, [x8, #0xb0]
062aa6c4: add      x10, x10, #8
062aa6c8: ldur     x11, [x10, #-8]
062aa6cc: cmp      x11, x1
062aa6d0: b.eq     #0x62aa6f0
062aa6d4: subs     x9, x9, #1
062aa6d8: add      x10, x10, #0x10
062aa6dc: b.ne     #0x62aa6c8
062aa6e0: mov      w2, #0x13
062aa6e4: mov      x0, x20
062aa6e8: bl       #0x39a94f0
062aa6ec: b        #0x62aa700
062aa6f0: ldr      w9, [x10]
062aa6f4: add      w9, w9, #0x13
062aa6f8: add      x8, x8, w9, sxtw #4
062aa6fc: add      x0, x8, #0x138
062aa700: ldp      x8, x1, [x0]
062aa704: mov      x0, x20
062aa708: blr      x8
062aa70c: cbz      x0, #0x62aa930
062aa710: mov      x0, x19
062aa714: mov      x1, xzr
062aa718: bl       #0x66c03d0 ; Oak.DamageInfo.GetTotalDamage
062aa71c: ldrh     w8, [x19, #4]
062aa720: mov      w20, w0
062aa724: tbz      w8, #0, #0x62aa7c4
062aa728: ldr      x21, [x19, #0x10]
062aa72c: cbz      x21, #0x62aa940
062aa730: ldr      x8, [x21]
062aa734: ldr      x1, [x22]
062aa738: ldrh     w9, [x8, #0x12e]
062aa73c: cbz      x9, #0x62aa760
062aa740: ldr      x10, [x8, #0xb0]
062aa744: add      x10, x10, #8
062aa748: ldur     x11, [x10, #-8]
062aa74c: cmp      x11, x1
062aa750: b.eq     #0x62aa770
062aa754: subs     x9, x9, #1
062aa758: add      x10, x10, #0x10
062aa75c: b.ne     #0x62aa748
062aa760: mov      w2, #0x13
062aa764: mov      x0, x21
062aa768: bl       #0x39a94f0
062aa76c: b        #0x62aa780
062aa770: ldr      w9, [x10]
062aa774: add      w9, w9, #0x13
062aa778: add      x8, x8, w9, sxtw #4
062aa77c: add      x0, x8, #0x138
062aa780: ldp      x8, x1, [x0]
062aa784: mov      x0, x21
062aa788: blr      x8
062aa78c: cbz      x0, #0x62aa940
062aa790: mov      x1, xzr
062aa794: bl       #0x63af738 ; Oak.FieldObjectStatsBehaviour.get_ActualMeleeShield
062aa798: cmp      w20, w0
062aa79c: csel     w8, w20, w0, lt
062aa7a0: bic      w1, w8, w8, asr #31
062aa7a4: mov      x0, x19
062aa7a8: mov      x2, xzr
062aa7ac: bl       #0x66c0e3c ; Oak.DamageInfo.set_meleeShielded
062aa7b0: mov      x0, x19
062aa7b4: mov      x1, xzr
062aa7b8: bl       #0x66c0dcc ; Oak.DamageInfo.get_meleeShielded
062aa7bc: ldrh     w8, [x19, #4]
062aa7c0: sub      w20, w20, w0
062aa7c4: tbz      w8, #1, #0x62aa860
062aa7c8: ldr      x21, [x19, #0x10]
062aa7cc: cbz      x21, #0x62aa940
062aa7d0: ldr      x8, [x21]
062aa7d4: ldr      x1, [x22]
062aa7d8: ldrh     w9, [x8, #0x12e]
062aa7dc: cbz      x9, #0x62aa800
062aa7e0: ldr      x10, [x8, #0xb0]
062aa7e4: add      x10, x10, #8
062aa7e8: ldur     x11, [x10, #-8]
062aa7ec: cmp      x11, x1
062aa7f0: b.eq     #0x62aa810
062aa7f4: subs     x9, x9, #1
062aa7f8: add      x10, x10, #0x10
062aa7fc: b.ne     #0x62aa7e8
062aa800: mov      w2, #0x13
062aa804: mov      x0, x21
062aa808: bl       #0x39a94f0
062aa80c: b        #0x62aa820
062aa810: ldr      w9, [x10]
062aa814: add      w9, w9, #0x13
062aa818: add      x8, x8, w9, sxtw #4
062aa81c: add      x0, x8, #0x138
062aa820: ldp      x8, x1, [x0]
062aa824: mov      x0, x21
062aa828: blr      x8
062aa82c: cbz      x0, #0x62aa940
062aa830: mov      x1, xzr
062aa834: bl       #0x63af784 ; Oak.FieldObjectStatsBehaviour.get_ActualProjectileShield
062aa838: cmp      w20, w0
062aa83c: csel     w8, w20, w0, lt
062aa840: bic      w1, w8, w8, asr #31
062aa844: mov      x0, x19
062aa848: mov      x2, xzr
062aa84c: bl       #0x66c0f3c ; Oak.DamageInfo.set_projectileShielded
062aa850: mov      x0, x19
062aa854: mov      x1, xzr
062aa858: bl       #0x66c0ecc ; Oak.DamageInfo.get_projectileShielded
062aa85c: sub      w20, w20, w0
062aa860: ldr      x21, [x19, #0x10]
062aa864: cbz      x21, #0x62aa940
062aa868: ldr      x8, [x21]
062aa86c: ldr      x1, [x22]
062aa870: ldrh     w9, [x8, #0x12e]
062aa874: cbz      x9, #0x62aa898
062aa878: ldr      x10, [x8, #0xb0]
062aa87c: add      x10, x10, #8
062aa880: ldur     x11, [x10, #-8]
062aa884: cmp      x11, x1
062aa888: b.eq     #0x62aa8a8
062aa88c: subs     x9, x9, #1
062aa890: add      x10, x10, #0x10
062aa894: b.ne     #0x62aa880
062aa898: mov      w2, #0x13
062aa89c: mov      x0, x21
062aa8a0: bl       #0x39a94f0
062aa8a4: b        #0x62aa8b8
062aa8a8: ldr      w9, [x10]
062aa8ac: add      w9, w9, #0x13
062aa8b0: add      x8, x8, w9, sxtw #4
062aa8b4: add      x0, x8, #0x138
062aa8b8: ldp      x8, x1, [x0]
062aa8bc: mov      x0, x21
062aa8c0: blr      x8
062aa8c4: cbz      x0, #0x62aa940
062aa8c8: mov      x1, xzr
062aa8cc: bl       #0x63af6ec ; Oak.FieldObjectStatsBehaviour.get_ActualShield
062aa8d0: cmp      w20, w0
062aa8d4: csel     w8, w20, w0, lt
062aa8d8: bic      w1, w8, w8, asr #31
062aa8dc: mov      x0, x19
062aa8e0: mov      x2, xzr
062aa8e4: bl       #0x66c1038 ; Oak.DamageInfo.set_shielded
062aa8e8: adrp     x8, #0x9b78000
062aa8ec: ldr      x8, [x8, #0x8f8]
062aa8f0: ldr      x0, [x8]
062aa8f4: ldr      w8, [x0, #0xe0]
062aa8f8: cbnz     w8, #0x62aa900
062aa8fc: bl       #0x39d35c4
062aa900: adrp     x8, #0x9b81000
062aa904: ldr      x8, [x8, #0x600]
062aa908: ldr      x0, [x8]
062aa90c: bl       #0x3fe1320
062aa910: cbz      x0, #0x62aa930
062aa914: mov      x1, xzr
062aa918: bl       #0x61c7d14 ; Oak.DeathMatchFreeForAllMode.GetInGameTimer
062aa91c: cbz      x0, #0x62aa928
062aa920: ldr      s0, [x0, #0x40]
062aa924: b        #0x62aa92c
062aa928: fmov     s0, wzr
062aa92c: str      s0, [x19]
062aa930: ldp      x20, x19, [sp, #0x20]
062aa934: ldp      x22, x21, [sp, #0x10]
062aa938: ldr      x30, [sp], #0x30
062aa93c: ret      
062aa940: bl       #0x39d36e4