Oak.GourrySpecialAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
06a1422c: sub      sp, sp, #0x50
06a14230: str      d8, [sp, #0x20]
06a14234: stp      x30, x21, [sp, #0x30]
06a14238: stp      x20, x19, [sp, #0x40]
06a1423c: mov      x20, x1
06a14240: mov      x19, x0
06a14244: mov      w0, #0xddd4
06a14248: mov      x1, xzr
06a1424c: mov      x21, x2
06a14250: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a14254: tbz      w0, #0, #0x6a1428c
06a14258: mov      w0, #0xddd4
06a1425c: mov      x1, xzr
06a14260: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a14264: cbz      x0, #0x6a14344
06a14268: and      x3, x21, #0xffffffff
06a1426c: mov      x1, x19
06a14270: mov      x2, x20
06a14274: ldp      x20, x19, [sp, #0x40]
06a14278: ldp      x30, x21, [sp, #0x30]
06a1427c: ldr      d8, [sp, #0x20]
06a14280: mov      x4, xzr
06a14284: add      sp, sp, #0x50
06a14288: b        #0x8638698
06a1428c: adrp     x20, #0xa25e000
06a14290: ldrb     w8, [x20, #0x1bb]
06a14294: cbnz     w8, #0x6a142ac
06a14298: adrp     x0, #0x9b45000
06a1429c: ldr      x0, [x0, #0x6c8]
06a142a0: bl       #0x39d34bc ; unmapped
06a142a4: mov      w8, #1
06a142a8: strb     w8, [x20, #0x1bb]
06a142ac: adrp     x8, #0x9b45000
06a142b0: ldr      x8, [x8, #0x6c8]
06a142b4: ldr      x8, [x8]
06a142b8: ldr      x8, [x8, #0xb8]
06a142bc: ldr      x8, [x8]
06a142c0: cbz      x8, #0x6a14344
06a142c4: ldr      x0, [x8, #0xe8]
06a142c8: fmov     s8, #1.00000000
06a142cc: cbz      x0, #0x6a1432c
06a142d0: ldr      x1, [x19, #0x18]
06a142d4: mov      w2, wzr
06a142d8: mov      x3, xzr
06a142dc: bl       #0x8b72950 ; Oak.BattleManager.GetBattleFor
06a142e0: cbz      x0, #0x6a1432c
06a142e4: ldr      x0, [x19, #0x18]
06a142e8: cbz      x0, #0x6a14344
06a142ec: mov      x1, xzr
06a142f0: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
06a142f4: cbz      x0, #0x6a14344
06a142f8: mov      x1, xzr
06a142fc: bl       #0x63af514 ; Oak.FieldObjectStatsBehaviour.get_HpRatio
06a14300: mov      v8.16b, v0.16b
06a14304: ldur     q0, [x19, #0x24]
06a14308: ldur     x8, [x19, #0x34]
06a1430c: mov      x0, sp
06a14310: mov      x1, xzr
06a14314: str      q0, [sp]
06a14318: str      x8, [sp, #0x10]
06a1431c: bl       #0x3ac5138 ; unmapped
06a14320: fmul     s0, s8, s0
06a14324: fmov     s1, #1.00000000
06a14328: fadd     s8, s0, s1
06a1432c: mov      v0.16b, v8.16b
06a14330: ldp      x20, x19, [sp, #0x40]
06a14334: ldp      x30, x21, [sp, #0x30]
06a14338: ldr      d8, [sp, #0x20]
06a1433c: add      sp, sp, #0x50
06a14340: ret      
06a14344: bl       #0x39d36e4 ; unmapped