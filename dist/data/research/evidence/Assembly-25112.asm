08bb979c: sub      sp, sp, #0xe0
08bb97a0: stp      d9, d8, [sp, #0xa0]
08bb97a4: str      x30, [sp, #0xb0]
08bb97a8: stp      x22, x21, [sp, #0xc0]
08bb97ac: stp      x20, x19, [sp, #0xd0]
08bb97b0: adrp     x21, #0xa279000
08bb97b4: ldrb     w8, [x21, #0x390]
08bb97b8: mov      x20, x1
08bb97bc: mov      x19, x0
08bb97c0: tbnz     w8, #0, #0x8bb97f0
08bb97c4: adrp     x0, #0x9b81000
08bb97c8: ldr      x0, [x0, #0x230]
08bb97cc: bl       #0x39d34bc
08bb97d0: adrp     x0, #0x9b44000
08bb97d4: ldr      x0, [x0, #0xea0]
08bb97d8: bl       #0x39d34bc
08bb97dc: adrp     x0, #0x9b77000
08bb97e0: ldr      x0, [x0, #0x540]
08bb97e4: bl       #0x39d34bc
08bb97e8: mov      w8, #1
08bb97ec: strb     w8, [x21, #0x390]
08bb97f0: mov      w0, #0x4599
08bb97f4: mov      x1, xzr
08bb97f8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb97fc: tbz      w0, #0, #0x8bb9834
08bb9800: mov      w0, #0x4599
08bb9804: mov      x1, xzr
08bb9808: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb980c: cbz      x0, #0x8bb9a04
08bb9810: mov      x1, x19
08bb9814: mov      x2, x20
08bb9818: ldp      x20, x19, [sp, #0xd0]
08bb981c: ldp      x22, x21, [sp, #0xc0]
08bb9820: ldr      x30, [sp, #0xb0]
08bb9824: ldp      d9, d8, [sp, #0xa0]
08bb9828: mov      x3, xzr
08bb982c: add      sp, sp, #0xe0
08bb9830: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08bb9834: cbz      x20, #0x8bb986c
08bb9838: adrp     x8, #0x9b77000
08bb983c: ldr      x8, [x8, #0x540]
08bb9840: ldr      x9, [x20]
08bb9844: ldr      x8, [x8]
08bb9848: ldrb     w11, [x9, #0x130]
08bb984c: ldrb     w10, [x8, #0x130]
08bb9850: cmp      w11, w10
08bb9854: b.lo     #0x8bb986c
08bb9858: ldr      x9, [x9, #0xc8]
08bb985c: add      x9, x9, x10, lsl #3
08bb9860: ldur     x9, [x9, #-8]
08bb9864: cmp      x9, x8
08bb9868: b.eq     #0x8bb9888
08bb986c: ldp      x20, x19, [sp, #0xd0]
08bb9870: ldp      x22, x21, [sp, #0xc0]
08bb9874: ldr      x30, [sp, #0xb0]
08bb9878: ldp      d9, d8, [sp, #0xa0]
08bb987c: mov      w0, wzr
08bb9880: add      sp, sp, #0xe0
08bb9884: ret      
08bb9888: ldr      x21, [x20, #0x18]
08bb988c: cbz      x21, #0x8bb986c
08bb9890: adrp     x8, #0x9b81000
08bb9894: ldr      x8, [x8, #0x230]
08bb9898: ldr      x9, [x21]
08bb989c: ldr      x8, [x8]
08bb98a0: ldrb     w11, [x9, #0x130]
08bb98a4: ldrb     w10, [x8, #0x130]
08bb98a8: cmp      w11, w10
08bb98ac: b.lo     #0x8bb98c4
08bb98b0: ldr      x9, [x9, #0xc8]
08bb98b4: add      x9, x9, x10, lsl #3
08bb98b8: ldur     x9, [x9, #-8]
08bb98bc: cmp      x9, x8
08bb98c0: b.eq     #0x8bb986c
08bb98c4: adrp     x22, #0x9b44000
08bb98c8: ldr      x0, [x19, #0x10]
08bb98cc: ldr      x22, [x22, #0xea0]
08bb98d0: ldr      x1, [x22]
08bb98d4: bl       #0x39d35c8
08bb98d8: cbz      x0, #0x8bb986c
08bb98dc: mov      x1, x0
08bb98e0: mov      x0, x21
08bb98e4: mov      x2, xzr
08bb98e8: bl       #0x6a8bd50 ; Oak.Party.Contains
08bb98ec: tbz      w0, #0, #0x8bb986c
08bb98f0: ldr      x20, [x20, #0x10]
08bb98f4: cbz      x20, #0x8bb9a04
08bb98f8: ldr      x8, [x20]
08bb98fc: ldr      x1, [x22]
08bb9900: ldrh     w9, [x8, #0x12e]
08bb9904: cbz      x9, #0x8bb9928
08bb9908: ldr      x10, [x8, #0xb0]
08bb990c: add      x10, x10, #8
08bb9910: ldur     x11, [x10, #-8]
08bb9914: cmp      x11, x1
08bb9918: b.eq     #0x8bb9938
08bb991c: subs     x9, x9, #1
08bb9920: add      x10, x10, #0x10
08bb9924: b.ne     #0x8bb9910
08bb9928: mov      w2, #1
08bb992c: mov      x0, x20
08bb9930: bl       #0x39a94f0
08bb9934: b        #0x8bb9948
08bb9938: ldr      w9, [x10]
08bb993c: add      w9, w9, #1
08bb9940: add      x8, x8, w9, sxtw #4
08bb9944: add      x0, x8, #0x138
08bb9948: ldp      x8, x1, [x0]
08bb994c: mov      x0, x20
08bb9950: blr      x8
08bb9954: cbz      x0, #0x8bb9a04
08bb9958: mov      x1, xzr
08bb995c: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08bb9960: cbz      x0, #0x8bb9a04
08bb9964: ldr      w8, [x0, #0x178]
08bb9968: ldr      w9, [x19, #0x38]
08bb996c: cmp      w8, w9
08bb9970: b.ne     #0x8bb986c
08bb9974: ldur     x8, [x19, #0x4c]
08bb9978: ldur     q0, [x19, #0x3c]
08bb997c: add      x0, sp, #0x80
08bb9980: mov      x1, xzr
08bb9984: str      x8, [sp, #0x90]
08bb9988: str      q0, [sp, #0x80]
08bb998c: bl       #0x3ac5138
08bb9990: mov      v8.16b, v0.16b
08bb9994: ldur     q0, [x19, #0x54]
08bb9998: ldur     x8, [x19, #0x64]
08bb999c: add      x0, sp, #0x60
08bb99a0: mov      x1, xzr
08bb99a4: str      q0, [sp, #0x60]
08bb99a8: str      x8, [sp, #0x70]
08bb99ac: bl       #0x3ac5138
08bb99b0: mov      v9.16b, v0.16b
08bb99b4: ldur     q0, [x19, #0x6c]
08bb99b8: ldur     x8, [x19, #0x7c]
08bb99bc: add      x0, sp, #0x40
08bb99c0: mov      x1, xzr
08bb99c4: str      q0, [sp, #0x40]
08bb99c8: str      x8, [sp, #0x50]
08bb99cc: bl       #0x3ac5138
08bb99d0: fadd     s1, s8, s9
08bb99d4: fcmp     s1, s0
08bb99d8: fcsel    s0, s1, s0, mi
08bb99dc: add      x8, sp, #8
08bb99e0: mov      x0, xzr
08bb99e4: bl       #0x3ac68b0
08bb99e8: ldr      x8, [sp, #0x18]
08bb99ec: ldur     q0, [sp, #8]
08bb99f0: str      x8, [sp, #0x30]
08bb99f4: str      q0, [sp, #0x20]
08bb99f8: stur     x8, [x19, #0x4c]
08bb99fc: stur     q0, [x19, #0x3c]
08bb9a00: b        #0x8bb986c
08bb9a04: bl       #0x39d36e4