066e90d8: sub      sp, sp, #0xe0
066e90dc: stp      d11, d10, [sp, #0xa0]
066e90e0: stp      d9, d8, [sp, #0xb0]
066e90e4: str      x30, [sp, #0xc0]
066e90e8: stp      x20, x19, [sp, #0xd0]
066e90ec: adrp     x20, #0xa269000
066e90f0: ldrb     w8, [x20, #0x4b6]
066e90f4: mov      v9.16b, v1.16b
066e90f8: mov      v8.16b, v0.16b
066e90fc: mov      x19, x0
066e9100: tbnz     w8, #0, #0x66e9124
066e9104: adrp     x0, #0x9b46000
066e9108: ldr      x0, [x0, #0x140]
066e910c: bl       #0x39d34bc
066e9110: adrp     x0, #0x9b44000
066e9114: ldr      x0, [x0, #0xda8]
066e9118: bl       #0x39d34bc
066e911c: mov      w8, #1
066e9120: strb     w8, [x20, #0x4b6]
066e9124: mov      w0, #0x33ac
066e9128: mov      x1, xzr
066e912c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
066e9130: tbz      w0, #0, #0x66e915c
066e9134: mov      w0, #0x33ac
066e9138: mov      x1, xzr
066e913c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
066e9140: cbz      x0, #0x66e93dc
066e9144: mov      x1, x19
066e9148: mov      v0.16b, v8.16b
066e914c: mov      v1.16b, v9.16b
066e9150: mov      x2, xzr
066e9154: bl       #0x864f424 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1090
066e9158: b        #0x66e93c4
066e915c: cbz      x19, #0x66e93dc
066e9160: adrp     x10, #0x9b44000
066e9164: ldr      x8, [x19]
066e9168: ldr      x10, [x10, #0xda8]
066e916c: ldrh     w9, [x8, #0x12e]
066e9170: ldr      x1, [x10]
066e9174: cbz      x9, #0x66e9198
066e9178: ldr      x10, [x8, #0xb0]
066e917c: add      x10, x10, #8
066e9180: ldur     x11, [x10, #-8]
066e9184: cmp      x11, x1
066e9188: b.eq     #0x66e91a8
066e918c: subs     x9, x9, #1
066e9190: add      x10, x10, #0x10
066e9194: b.ne     #0x66e9180
066e9198: mov      x0, x19
066e919c: mov      w2, wzr
066e91a0: bl       #0x39a94f0
066e91a4: b        #0x66e91b4
066e91a8: ldrsw    x9, [x10]
066e91ac: add      x8, x8, x9, lsl #4
066e91b0: add      x0, x8, #0x138
066e91b4: ldp      x8, x1, [x0]
066e91b8: mov      x0, x19
066e91bc: blr      x8
066e91c0: cbz      x0, #0x66e93dc
066e91c4: mov      x1, xzr
066e91c8: bl       #0x8c2f8d4 ; Oak.Character.get_CharacterStatsBehaviour
066e91cc: cbz      x0, #0x66e93dc
066e91d0: mov      x1, xzr
066e91d4: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
066e91d8: cbz      x0, #0x66e93dc
066e91dc: add      x8, x0, #0x1f4
066e91e0: ldr      x9, [x8, #0x10]
066e91e4: ldr      q0, [x8]
066e91e8: add      x0, sp, #0x40
066e91ec: mov      x1, xzr
066e91f0: str      x9, [sp, #0x70]
066e91f4: str      q0, [sp, #0x60]
066e91f8: ldr      x9, [x8, #0x10]
066e91fc: ldr      q0, [x8]
066e9200: str      x9, [sp, #0x50]
066e9204: str      q0, [sp, #0x40]
066e9208: bl       #0x3ac5138
066e920c: adrp     x19, #0xa25d000
066e9210: ldrb     w8, [x19, #0xc90]
066e9214: mov      v10.16b, v0.16b
066e9218: cbnz     w8, #0x66e9230
066e921c: adrp     x0, #0x9b3f000
066e9220: ldr      x0, [x0, #0xac0]
066e9224: bl       #0x39d34bc
066e9228: mov      w8, #1
066e922c: strb     w8, [x19, #0xc90]
066e9230: adrp     x8, #0x9b3f000
066e9234: ldr      x8, [x8, #0xac0]
066e9238: fdiv     s10, s10, s9
066e923c: ldr      x0, [x8]
066e9240: ldr      w8, [x0, #0xe0]
066e9244: cbnz     w8, #0x66e924c
066e9248: bl       #0x39d35c4
066e924c: fcvt     d9, s10
066e9250: add      x0, sp, #0x80
066e9254: mov      v0.16b, v9.16b
066e9258: bl       #0x9749b00
066e925c: fcmp     s10, #0.0
066e9260: b.ge     #0x66e927c
066e9264: fmov     d1, #-0.50000000
066e9268: fcmp     d0, d1
066e926c: b.ne     #0x66e92a4
066e9270: ldr      d0, [sp, #0x80]
066e9274: fmov     d1, #-1.00000000
066e9278: b        #0x66e9290
066e927c: fmov     d1, #0.50000000
066e9280: fcmp     d0, d1
066e9284: b.ne     #0x66e92b0
066e9288: ldr      d0, [sp, #0x80]
066e928c: fmov     d1, #1.00000000
066e9290: fcvtzs   x8, d0
066e9294: fadd     d1, d0, d1
066e9298: tst      x8, #1
066e929c: fcsel    d10, d0, d1, eq
066e92a0: b        #0x66e92b8
066e92a4: fadd     d0, d9, d1
066e92a8: frintp   d10, d0
066e92ac: b        #0x66e92b8
066e92b0: fadd     d0, d9, d1
066e92b4: frintm   d10, d0
066e92b8: adrp     x19, #0x9b46000
066e92bc: ldr      x19, [x19, #0x140]
066e92c0: ldr      x0, [x19]
066e92c4: ldr      w8, [x0, #0xe0]
066e92c8: cbnz     w8, #0x66e92d4
066e92cc: bl       #0x39d35c4
066e92d0: ldr      x0, [x19]
066e92d4: ldr      x8, [x0, #0xb8]
066e92d8: ldr      s11, [x8, #0x98]
066e92dc: fcmp     s11, s8
066e92e0: b.pl     #0x66e9300
066e92e4: ldr      q0, [sp, #0x60]
066e92e8: ldr      x8, [sp, #0x70]
066e92ec: add      x20, sp, #0x80
066e92f0: mov      v11.16b, v8.16b
066e92f4: str      q0, [sp, #0x80]
066e92f8: str      x8, [sp, #0x90]
066e92fc: b        #0x66e9334
066e9300: ldr      q0, [sp, #0x60]
066e9304: ldr      x8, [sp, #0x70]
066e9308: str      q0, [sp, #0x80]
066e930c: str      x8, [sp, #0x90]
066e9310: ldr      w8, [x0, #0xe0]
066e9314: cbz      w8, #0x66e9320
066e9318: add      x20, sp, #0x80
066e931c: b        #0x66e9334
066e9320: add      x20, sp, #0x80
066e9324: bl       #0x39d35c4
066e9328: ldr      x8, [x19]
066e932c: ldr      x8, [x8, #0xb8]
066e9330: ldr      s11, [x8, #0x98]
066e9334: ldr      x8, [x20, #0x10]
066e9338: ldr      q0, [x20]
066e933c: add      x0, sp, #0x20
066e9340: mov      x1, xzr
066e9344: fcvtzs   w20, d10
066e9348: str      x8, [sp, #0x70]
066e934c: str      q0, [sp, #0x60]
066e9350: str      q0, [sp, #0x20]
066e9354: str      x8, [sp, #0x30]
066e9358: bl       #0x3ac5138
066e935c: ldr      x0, [x19]
066e9360: mov      v9.16b, v0.16b
066e9364: ldr      w8, [x0, #0xe0]
066e9368: cbnz     w8, #0x66e9374
066e936c: bl       #0x39d35c4
066e9370: ldr      x0, [x19]
066e9374: ldr      x8, [x0, #0xb8]
066e9378: mov      x0, sp
066e937c: mov      x1, xzr
066e9380: ldr      x9, [x8, #0x90]
066e9384: ldr      q0, [x8, #0x80]
066e9388: str      x9, [sp, #0x10]
066e938c: str      q0, [sp]
066e9390: bl       #0x3ac5138
066e9394: mov      x9, #0x7ff0000000000000
066e9398: sub      w8, w20, #1
066e939c: mov      w10, #0x4f000000
066e93a0: fmov     d2, x9
066e93a4: scvtf    s1, w8
066e93a8: fcmp     d10, d2
066e93ac: fmov     s2, w10
066e93b0: fcsel    s1, s2, s1, eq
066e93b4: fdiv     s0, s9, s0
066e93b8: fmul     s1, s1, s8
066e93bc: fadd     s0, s1, s0
066e93c0: fadd     s0, s11, s0
066e93c4: ldp      x20, x19, [sp, #0xd0]
066e93c8: ldr      x30, [sp, #0xc0]
066e93cc: ldp      d9, d8, [sp, #0xb0]
066e93d0: ldp      d11, d10, [sp, #0xa0]
066e93d4: add      sp, sp, #0xe0
066e93d8: ret      
066e93dc: bl       #0x39d36e4