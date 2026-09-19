Oak.HalfVampireSpecialAppliedStageOption.Oak.IDamageBoostOption.GetAttackModifier
06a14918: sub      sp, sp, #0x40
06a1491c: stp      x30, x21, [sp, #0x20]
06a14920: stp      x20, x19, [sp, #0x30]
06a14924: mov      x20, x1
06a14928: mov      x19, x0
06a1492c: mov      w0, #0xdddc
06a14930: mov      x1, xzr
06a14934: mov      x21, x2
06a14938: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a1493c: tbz      w0, #0, #0x6a14970
06a14940: mov      w0, #0xdddc
06a14944: mov      x1, xzr
06a14948: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a1494c: cbz      x0, #0x6a14a34
06a14950: and      x3, x21, #0xffffffff
06a14954: mov      x1, x19
06a14958: mov      x2, x20
06a1495c: ldp      x20, x19, [sp, #0x30]
06a14960: ldp      x30, x21, [sp, #0x20]
06a14964: mov      x4, xzr
06a14968: add      sp, sp, #0x40
06a1496c: b        #0x8638698
06a14970: adrp     x20, #0xa25e000
06a14974: ldrb     w8, [x20, #0x1bb]
06a14978: cbnz     w8, #0x6a14990
06a1497c: adrp     x0, #0x9b45000
06a14980: ldr      x0, [x0, #0x6c8]
06a14984: bl       #0x39d34bc ; unmapped
06a14988: mov      w8, #1
06a1498c: strb     w8, [x20, #0x1bb]
06a14990: adrp     x8, #0x9b45000
06a14994: ldr      x8, [x8, #0x6c8]
06a14998: ldr      x8, [x8]
06a1499c: ldr      x8, [x8, #0xb8]
06a149a0: ldr      x8, [x8]
06a149a4: cbz      x8, #0x6a14a34
06a149a8: ldr      x0, [x8, #0xe8]
06a149ac: cbz      x0, #0x6a149cc
06a149b0: ldr      x1, [x19, #0x18]
06a149b4: mov      w2, wzr
06a149b8: mov      x3, xzr
06a149bc: bl       #0x8b72950 ; Oak.BattleManager.GetBattleFor
06a149c0: cmp      x0, #0
06a149c4: cset     w20, ne
06a149c8: b        #0x6a149d0
06a149cc: mov      w20, wzr
06a149d0: ldr      x0, [x19, #0x18]
06a149d4: cbz      x0, #0x6a14a34
06a149d8: mov      x1, xzr
06a149dc: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
06a149e0: cbz      x0, #0x6a14a34
06a149e4: ldr      x1, [x19, #0x58]
06a149e8: mov      x2, xzr
06a149ec: bl       #0x63b29c8 ; Oak.FieldObjectStatsBehaviour.IsActiveBuff
06a149f0: tst      w0, w20
06a149f4: b.eq     #0x6a14a20
06a149f8: ldur     x8, [x19, #0x34]
06a149fc: ldur     q0, [x19, #0x24]
06a14a00: mov      x0, sp
06a14a04: mov      x1, xzr
06a14a08: str      x8, [sp, #0x10]
06a14a0c: str      q0, [sp]
06a14a10: bl       #0x3ac5138 ; unmapped
06a14a14: fmov     s1, #1.00000000
06a14a18: fadd     s0, s0, s1
06a14a1c: b        #0x6a14a24
06a14a20: fmov     s0, #1.00000000
06a14a24: ldp      x20, x19, [sp, #0x30]
06a14a28: ldp      x30, x21, [sp, #0x20]
06a14a2c: add      sp, sp, #0x40
06a14a30: ret      
06a14a34: bl       #0x39d36e4 ; unmapped