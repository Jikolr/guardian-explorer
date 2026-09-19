07732188: sub      sp, sp, #0x50
0773218c: stp      x30, x25, [sp, #0x10]
07732190: stp      x24, x23, [sp, #0x20]
07732194: stp      x22, x21, [sp, #0x30]
07732198: stp      x20, x19, [sp, #0x40]
0773219c: mov      w24, w1
077321a0: mov      x25, x0
077321a4: mov      w0, #0x101b
077321a8: mov      x1, xzr
077321ac: mov      x19, x6
077321b0: mov      w20, w5
077321b4: mov      w21, w4
077321b8: mov      w22, w3
077321bc: mov      w23, w2
077321c0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
077321c4: tbz      w0, #0, #0x7732214
077321c8: mov      w0, #0x101b
077321cc: mov      x1, xzr
077321d0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
077321d4: cbz      x0, #0x7732248
077321d8: mov      x1, x25
077321dc: mov      w2, w24
077321e0: mov      w3, w23
077321e4: mov      w4, w22
077321e8: mov      w5, w21
077321ec: mov      w6, w20
077321f0: mov      x7, x19
077321f4: str      xzr, [sp]
077321f8: bl       #0x864a14c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1009
077321fc: ldp      x20, x19, [sp, #0x40]
07732200: ldp      x22, x21, [sp, #0x30]
07732204: ldp      x24, x23, [sp, #0x20]
07732208: ldp      x30, x25, [sp, #0x10]
0773220c: add      sp, sp, #0x50
07732210: ret      
07732214: mov      x0, x25
07732218: mov      w1, w24
0773221c: mov      w2, w23
07732220: mov      w3, w22
07732224: mov      w4, w21
07732228: mov      w5, w20
0773222c: mov      x6, x19
07732230: ldp      x20, x19, [sp, #0x40]
07732234: ldp      x22, x21, [sp, #0x30]
07732238: ldp      x24, x23, [sp, #0x20]
0773223c: ldp      x30, x25, [sp, #0x10]
07732240: add      sp, sp, #0x50
07732244: b        #0x773224c ; Oak.Weapon.CalcElementalAttack
07732248: bl       #0x39d36e4