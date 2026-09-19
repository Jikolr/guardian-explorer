08c0ec6c: sub      sp, sp, #0x50
08c0ec70: str      d8, [sp, #0x20]
08c0ec74: stp      x30, x21, [sp, #0x30]
08c0ec78: stp      x20, x19, [sp, #0x40]
08c0ec7c: mov      x19, x1
08c0ec80: mov      x20, x0
08c0ec84: mov      w0, #0x49b0
08c0ec88: mov      x1, xzr
08c0ec8c: mov      w21, w2
08c0ec90: mov      v8.16b, v0.16b
08c0ec94: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0ec98: tbz      w0, #0, #0x8c0ecd4
08c0ec9c: mov      w0, #0x49b0
08c0eca0: mov      x1, xzr
08c0eca4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0eca8: cbz      x0, #0x8c0ed28
08c0ecac: and      w3, w21, #1
08c0ecb0: mov      x1, x20
08c0ecb4: mov      v0.16b, v8.16b
08c0ecb8: mov      x2, x19
08c0ecbc: ldp      x20, x19, [sp, #0x40]
08c0ecc0: ldp      x30, x21, [sp, #0x30]
08c0ecc4: ldr      d8, [sp, #0x20]
08c0ecc8: mov      x4, xzr
08c0eccc: add      sp, sp, #0x50
08c0ecd0: b        #0x86ad3d4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_2524
08c0ecd4: tbnz     w21, #0, #0x8c0ed14
08c0ecd8: mov      x0, x19
08c0ecdc: mov      x1, xzr
08c0ece0: bl       #0x66affdc ; Oak.BuffStats.get_SupportActionCritical
08c0ece4: mov      v8.16b, v0.16b
08c0ece8: ldur     q0, [x20, #0x38]
08c0ecec: ldr      x8, [x20, #0x48]
08c0ecf0: mov      x0, sp
08c0ecf4: mov      x1, xzr
08c0ecf8: str      q0, [sp]
08c0ecfc: str      x8, [sp, #0x10]
08c0ed00: bl       #0x3ac5138
08c0ed04: fadd     s0, s8, s0
08c0ed08: mov      x0, x19
08c0ed0c: mov      x1, xzr
08c0ed10: bl       #0x66b004c ; Oak.BuffStats.set_SupportActionCritical
08c0ed14: ldp      x20, x19, [sp, #0x40]
08c0ed18: ldp      x30, x21, [sp, #0x30]
08c0ed1c: ldr      d8, [sp, #0x20]
08c0ed20: add      sp, sp, #0x50
08c0ed24: ret      
08c0ed28: bl       #0x39d36e4