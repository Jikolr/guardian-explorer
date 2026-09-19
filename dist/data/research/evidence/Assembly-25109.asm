08bb92b0: sub      sp, sp, #0x50
08bb92b4: str      d8, [sp, #0x20]
08bb92b8: stp      x30, x21, [sp, #0x30]
08bb92bc: stp      x20, x19, [sp, #0x40]
08bb92c0: mov      x19, x1
08bb92c4: mov      x20, x0
08bb92c8: mov      w0, #0x459d
08bb92cc: mov      x1, xzr
08bb92d0: mov      w21, w2
08bb92d4: mov      v8.16b, v0.16b
08bb92d8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb92dc: tbz      w0, #0, #0x8bb9318
08bb92e0: mov      w0, #0x459d
08bb92e4: mov      x1, xzr
08bb92e8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb92ec: cbz      x0, #0x8bb936c
08bb92f0: and      w3, w21, #1
08bb92f4: mov      x1, x20
08bb92f8: mov      v0.16b, v8.16b
08bb92fc: mov      x2, x19
08bb9300: ldp      x20, x19, [sp, #0x40]
08bb9304: ldp      x30, x21, [sp, #0x30]
08bb9308: ldr      d8, [sp, #0x20]
08bb930c: mov      x4, xzr
08bb9310: add      sp, sp, #0x50
08bb9314: b        #0x86ad3d4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_2524
08bb9318: tbnz     w21, #0, #0x8bb9358
08bb931c: mov      x0, x19
08bb9320: mov      x1, xzr
08bb9324: bl       #0x66afee4 ; Oak.BuffStats.get_Critical
08bb9328: mov      v8.16b, v0.16b
08bb932c: ldur     q0, [x20, #0x3c]
08bb9330: ldur     x8, [x20, #0x4c]
08bb9334: mov      x0, sp
08bb9338: mov      x1, xzr
08bb933c: str      q0, [sp]
08bb9340: str      x8, [sp, #0x10]
08bb9344: bl       #0x3ac5138
08bb9348: fadd     s0, s8, s0
08bb934c: mov      x0, x19
08bb9350: mov      x1, xzr
08bb9354: bl       #0x66aff50 ; Oak.BuffStats.set_Critical
08bb9358: ldp      x20, x19, [sp, #0x40]
08bb935c: ldp      x30, x21, [sp, #0x30]
08bb9360: ldr      d8, [sp, #0x20]
08bb9364: add      sp, sp, #0x50
08bb9368: ret      
08bb936c: bl       #0x39d36e4