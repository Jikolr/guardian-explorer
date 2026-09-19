06a5c0f8: sub      sp, sp, #0x40
06a5c0fc: str      x30, [sp, #0x20]
06a5c100: stp      x20, x19, [sp, #0x30]
06a5c104: mov      w20, w1
06a5c108: mov      x19, x0
06a5c10c: mov      w0, #0xe17e
06a5c110: mov      x1, xzr
06a5c114: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a5c118: tbz      w0, #0, #0x6a5c148
06a5c11c: mov      w0, #0xe17e
06a5c120: mov      x1, xzr
06a5c124: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a5c128: cbz      x0, #0x6a5c18c
06a5c12c: mov      x1, x19
06a5c130: mov      w2, w20
06a5c134: ldp      x20, x19, [sp, #0x30]
06a5c138: ldr      x30, [sp, #0x20]
06a5c13c: mov      x3, xzr
06a5c140: add      sp, sp, #0x40
06a5c144: b        #0x86357e0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_689
06a5c148: ldr      w8, [x19, #0x18]
06a5c14c: fmov     s0, wzr
06a5c150: cmp      w8, w20
06a5c154: b.ne     #0x6a5c17c
06a5c158: ldur     x8, [x19, #0x2c]
06a5c15c: ldur     q0, [x19, #0x1c]
06a5c160: mov      x0, sp
06a5c164: mov      x1, xzr
06a5c168: str      x8, [sp, #0x10]
06a5c16c: str      q0, [sp]
06a5c170: bl       #0x3ac5138
06a5c174: ldr      s1, [x19, #0x34]
06a5c178: fmul     s0, s0, s1
06a5c17c: ldp      x20, x19, [sp, #0x30]
06a5c180: ldr      x30, [sp, #0x20]
06a5c184: add      sp, sp, #0x40
06a5c188: ret      
06a5c18c: bl       #0x39d36e4