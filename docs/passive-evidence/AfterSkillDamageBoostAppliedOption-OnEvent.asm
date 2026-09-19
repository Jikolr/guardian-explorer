Oak.AfterSkillDamageBoostAppliedOption.Oak.IEventListener.OnEvent
069ce62c: stp      x30, x21, [sp, #-0x20]!
069ce630: stp      x20, x19, [sp, #0x10]
069ce634: adrp     x21, #0xa26a000
069ce638: ldrb     w8, [x21, #0x9a2]
069ce63c: mov      x20, x1
069ce640: mov      x19, x0
069ce644: tbnz     w8, #0, #0x69ce674
069ce648: adrp     x0, #0x9b7d000
069ce64c: ldr      x0, [x0, #0x818]
069ce650: bl       #0x39d34bc ; unmapped
069ce654: adrp     x0, #0x9b44000
069ce658: ldr      x0, [x0, #0xda8]
069ce65c: bl       #0x39d34bc ; unmapped
069ce660: adrp     x0, #0x9b45000
069ce664: ldr      x0, [x0, #0x190]
069ce668: bl       #0x39d34bc ; unmapped
069ce66c: mov      w8, #1
069ce670: strb     w8, [x21, #0x9a2]
069ce674: mov      w0, #0xdb37
069ce678: mov      x1, xzr
069ce67c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
069ce680: tbz      w0, #0, #0x69ce6ac
069ce684: mov      w0, #0xdb37
069ce688: mov      x1, xzr
069ce68c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
069ce690: cbz      x0, #0x69ce8c0
069ce694: mov      x1, x19
069ce698: mov      x2, x20
069ce69c: ldp      x20, x19, [sp, #0x10]
069ce6a0: mov      x3, xzr
069ce6a4: ldp      x30, x21, [sp], #0x20
069ce6a8: b        #0x860be34
069ce6ac: cbz      x20, #0x69ce8b0
069ce6b0: adrp     x8, #0x9b7d000
069ce6b4: ldr      x8, [x8, #0x818]
069ce6b8: ldr      x9, [x20]
069ce6bc: ldr      x8, [x8]
069ce6c0: ldrb     w11, [x9, #0x130]
069ce6c4: ldrb     w10, [x8, #0x130]
069ce6c8: cmp      w11, w10
069ce6cc: b.lo     #0x69ce8b0
069ce6d0: ldr      x9, [x9, #0xc8]
069ce6d4: add      x9, x9, x10, lsl #3
069ce6d8: ldur     x9, [x9, #-8]
069ce6dc: cmp      x9, x8
069ce6e0: b.ne     #0x69ce8b0
069ce6e4: mov      x0, x19
069ce6e8: bl       #0x69ce4c0 ; Oak.AfterSkillDamageBoostAppliedOption.get_character
069ce6ec: cbz      x0, #0x69ce8c0
069ce6f0: mov      x1, xzr
069ce6f4: bl       #0x8c2ffd8 ; Oak.Character.get_CharacterBehaviour
069ce6f8: cbz      x0, #0x69ce8c0
069ce6fc: adrp     x10, #0x9b45000
069ce700: ldr      x8, [x0]
069ce704: ldr      x20, [x20, #0x10]
069ce708: ldr      x10, [x10, #0x190]
069ce70c: mov      x21, x0
069ce710: ldrh     w9, [x8, #0x12e]
069ce714: ldr      x1, [x10]
069ce718: cbz      x9, #0x69ce73c
069ce71c: ldr      x10, [x8, #0xb0]
069ce720: add      x10, x10, #8
069ce724: ldur     x11, [x10, #-8]
069ce728: cmp      x11, x1
069ce72c: b.eq     #0x69ce74c
069ce730: subs     x9, x9, #1
069ce734: add      x10, x10, #0x10
069ce738: b.ne     #0x69ce724
069ce73c: mov      w2, #9
069ce740: mov      x0, x21
069ce744: bl       #0x39a94f0 ; unmapped
069ce748: b        #0x69ce75c
069ce74c: ldr      w9, [x10]
069ce750: add      w9, w9, #9
069ce754: add      x8, x8, w9, sxtw #4
069ce758: add      x0, x8, #0x138
069ce75c: ldp      x8, x2, [x0]
069ce760: mov      x0, x21
069ce764: mov      x1, x20
069ce768: blr      x8
069ce76c: cbz      x0, #0x69ce8b0
069ce770: adrp     x21, #0x9b44000
069ce774: ldr      x8, [x0]
069ce778: ldr      x21, [x21, #0xda8]
069ce77c: mov      x20, x0
069ce780: ldrh     w9, [x8, #0x12e]
069ce784: ldr      x1, [x21]
069ce788: cbz      x9, #0x69ce7ac
069ce78c: ldr      x10, [x8, #0xb0]
069ce790: add      x10, x10, #8
069ce794: ldur     x11, [x10, #-8]
069ce798: cmp      x11, x1
069ce79c: b.eq     #0x69ce7bc
069ce7a0: subs     x9, x9, #1
069ce7a4: add      x10, x10, #0x10
069ce7a8: b.ne     #0x69ce794
069ce7ac: mov      w2, #9
069ce7b0: mov      x0, x20
069ce7b4: bl       #0x39a94f0 ; unmapped
069ce7b8: b        #0x69ce7cc
069ce7bc: ldr      w9, [x10]
069ce7c0: add      w9, w9, #9
069ce7c4: add      x8, x8, w9, sxtw #4
069ce7c8: add      x0, x8, #0x138
069ce7cc: ldp      x8, x1, [x0]
069ce7d0: mov      x0, x20
069ce7d4: blr      x8
069ce7d8: cmp      w0, #3
069ce7dc: b.eq     #0x69ce8a8
069ce7e0: ldr      x8, [x20]
069ce7e4: ldr      x1, [x21]
069ce7e8: ldrh     w9, [x8, #0x12e]
069ce7ec: cbz      x9, #0x69ce810
069ce7f0: ldr      x10, [x8, #0xb0]
069ce7f4: add      x10, x10, #8
069ce7f8: ldur     x11, [x10, #-8]
069ce7fc: cmp      x11, x1
069ce800: b.eq     #0x69ce820
069ce804: subs     x9, x9, #1
069ce808: add      x10, x10, #0x10
069ce80c: b.ne     #0x69ce7f8
069ce810: mov      w2, #9
069ce814: mov      x0, x20
069ce818: bl       #0x39a94f0 ; unmapped
069ce81c: b        #0x69ce830
069ce820: ldr      w9, [x10]
069ce824: add      w9, w9, #9
069ce828: add      x8, x8, w9, sxtw #4
069ce82c: add      x0, x8, #0x138
069ce830: ldp      x8, x1, [x0]
069ce834: mov      x0, x20
069ce838: blr      x8
069ce83c: cmp      w0, #4
069ce840: b.eq     #0x69ce8a8
069ce844: ldr      x8, [x20]
069ce848: ldr      x1, [x21]
069ce84c: ldrh     w9, [x8, #0x12e]
069ce850: cbz      x9, #0x69ce874
069ce854: ldr      x10, [x8, #0xb0]
069ce858: add      x10, x10, #8
069ce85c: ldur     x11, [x10, #-8]
069ce860: cmp      x11, x1
069ce864: b.eq     #0x69ce884
069ce868: subs     x9, x9, #1
069ce86c: add      x10, x10, #0x10
069ce870: b.ne     #0x69ce85c
069ce874: mov      w2, #9
069ce878: mov      x0, x20
069ce87c: bl       #0x39a94f0 ; unmapped
069ce880: b        #0x69ce894
069ce884: ldr      w9, [x10]
069ce888: add      w9, w9, #9
069ce88c: add      x8, x8, w9, sxtw #4
069ce890: add      x0, x8, #0x138
069ce894: ldp      x8, x1, [x0]
069ce898: mov      x0, x20
069ce89c: blr      x8
069ce8a0: cmp      w0, #5
069ce8a4: b.ne     #0x69ce8b0
069ce8a8: ldr      s0, [x19, #0x24]
069ce8ac: str      s0, [x19, #0x2c]
069ce8b0: ldp      x20, x19, [sp, #0x10]
069ce8b4: mov      w0, wzr
069ce8b8: ldp      x30, x21, [sp], #0x20
069ce8bc: ret      
069ce8c0: bl       #0x39d36e4 ; unmapped