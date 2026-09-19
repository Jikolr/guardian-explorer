08c0f3a4: sub      sp, sp, #0xe0
08c0f3a8: stp      d9, d8, [sp, #0xa0]
08c0f3ac: str      x30, [sp, #0xb0]
08c0f3b0: stp      x22, x21, [sp, #0xc0]
08c0f3b4: stp      x20, x19, [sp, #0xd0]
08c0f3b8: adrp     x21, #0xa279000
08c0f3bc: ldrb     w8, [x21, #0x64f]
08c0f3c0: mov      x20, x1
08c0f3c4: mov      x19, x0
08c0f3c8: tbnz     w8, #0, #0x8c0f3f8
08c0f3cc: adrp     x0, #0x9b81000
08c0f3d0: ldr      x0, [x0, #0x230]
08c0f3d4: bl       #0x39d34bc
08c0f3d8: adrp     x0, #0x9b44000
08c0f3dc: ldr      x0, [x0, #0xea0]
08c0f3e0: bl       #0x39d34bc
08c0f3e4: adrp     x0, #0x9b77000
08c0f3e8: ldr      x0, [x0, #0x540]
08c0f3ec: bl       #0x39d34bc
08c0f3f0: mov      w8, #1
08c0f3f4: strb     w8, [x21, #0x64f]
08c0f3f8: mov      w0, #0x49ac
08c0f3fc: mov      x1, xzr
08c0f400: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0f404: tbz      w0, #0, #0x8c0f43c
08c0f408: mov      w0, #0x49ac
08c0f40c: mov      x1, xzr
08c0f410: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0f414: cbz      x0, #0x8c0f60c
08c0f418: mov      x1, x19
08c0f41c: mov      x2, x20
08c0f420: ldp      x20, x19, [sp, #0xd0]
08c0f424: ldp      x22, x21, [sp, #0xc0]
08c0f428: ldr      x30, [sp, #0xb0]
08c0f42c: ldp      d9, d8, [sp, #0xa0]
08c0f430: mov      x3, xzr
08c0f434: add      sp, sp, #0xe0
08c0f438: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
08c0f43c: cbz      x20, #0x8c0f474
08c0f440: adrp     x8, #0x9b77000
08c0f444: ldr      x8, [x8, #0x540]
08c0f448: ldr      x9, [x20]
08c0f44c: ldr      x8, [x8]
08c0f450: ldrb     w11, [x9, #0x130]
08c0f454: ldrb     w10, [x8, #0x130]
08c0f458: cmp      w11, w10
08c0f45c: b.lo     #0x8c0f474
08c0f460: ldr      x9, [x9, #0xc8]
08c0f464: add      x9, x9, x10, lsl #3
08c0f468: ldur     x9, [x9, #-8]
08c0f46c: cmp      x9, x8
08c0f470: b.eq     #0x8c0f490
08c0f474: ldp      x20, x19, [sp, #0xd0]
08c0f478: ldp      x22, x21, [sp, #0xc0]
08c0f47c: ldr      x30, [sp, #0xb0]
08c0f480: ldp      d9, d8, [sp, #0xa0]
08c0f484: mov      w0, wzr
08c0f488: add      sp, sp, #0xe0
08c0f48c: ret      
08c0f490: ldr      x21, [x20, #0x18]
08c0f494: cbz      x21, #0x8c0f474
08c0f498: adrp     x8, #0x9b81000
08c0f49c: ldr      x8, [x8, #0x230]
08c0f4a0: ldr      x9, [x21]
08c0f4a4: ldr      x8, [x8]
08c0f4a8: ldrb     w11, [x9, #0x130]
08c0f4ac: ldrb     w10, [x8, #0x130]
08c0f4b0: cmp      w11, w10
08c0f4b4: b.lo     #0x8c0f4cc
08c0f4b8: ldr      x9, [x9, #0xc8]
08c0f4bc: add      x9, x9, x10, lsl #3
08c0f4c0: ldur     x9, [x9, #-8]
08c0f4c4: cmp      x9, x8
08c0f4c8: b.eq     #0x8c0f474
08c0f4cc: adrp     x22, #0x9b44000
08c0f4d0: ldr      x0, [x19, #0x10]
08c0f4d4: ldr      x22, [x22, #0xea0]
08c0f4d8: ldr      x1, [x22]
08c0f4dc: bl       #0x39d35c8
08c0f4e0: cbz      x0, #0x8c0f474
08c0f4e4: mov      x1, x0
08c0f4e8: mov      x0, x21
08c0f4ec: mov      x2, xzr
08c0f4f0: bl       #0x6a8bd50 ; Oak.Party.Contains
08c0f4f4: tbz      w0, #0, #0x8c0f474
08c0f4f8: ldr      x20, [x20, #0x10]
08c0f4fc: cbz      x20, #0x8c0f60c
08c0f500: ldr      x8, [x20]
08c0f504: ldr      w21, [x19, #0x80]
08c0f508: ldr      x1, [x22]
08c0f50c: ldrh     w9, [x8, #0x12e]
08c0f510: cbz      x9, #0x8c0f534
08c0f514: ldr      x10, [x8, #0xb0]
08c0f518: add      x10, x10, #8
08c0f51c: ldur     x11, [x10, #-8]
08c0f520: cmp      x11, x1
08c0f524: b.eq     #0x8c0f544
08c0f528: subs     x9, x9, #1
08c0f52c: add      x10, x10, #0x10
08c0f530: b.ne     #0x8c0f51c
08c0f534: mov      w2, #1
08c0f538: mov      x0, x20
08c0f53c: bl       #0x39a94f0
08c0f540: b        #0x8c0f554
08c0f544: ldr      w9, [x10]
08c0f548: add      w9, w9, #1
08c0f54c: add      x8, x8, w9, sxtw #4
08c0f550: add      x0, x8, #0x138
08c0f554: ldp      x8, x1, [x0]
08c0f558: mov      x0, x20
08c0f55c: blr      x8
08c0f560: cbz      x0, #0x8c0f60c
08c0f564: mov      x1, xzr
08c0f568: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08c0f56c: cbz      x0, #0x8c0f60c
08c0f570: ldr      w8, [x0, #0x178]
08c0f574: cmp      w21, w8
08c0f578: b.ne     #0x8c0f474
08c0f57c: ldr      x8, [x19, #0x48]
08c0f580: ldur     q0, [x19, #0x38]
08c0f584: add      x0, sp, #0x80
08c0f588: mov      x1, xzr
08c0f58c: str      x8, [sp, #0x90]
08c0f590: str      q0, [sp, #0x80]
08c0f594: bl       #0x3ac5138
08c0f598: mov      v8.16b, v0.16b
08c0f59c: ldr      q0, [x19, #0x50]
08c0f5a0: ldr      x8, [x19, #0x60]
08c0f5a4: add      x0, sp, #0x60
08c0f5a8: mov      x1, xzr
08c0f5ac: str      q0, [sp, #0x60]
08c0f5b0: str      x8, [sp, #0x70]
08c0f5b4: bl       #0x3ac5138
08c0f5b8: mov      v9.16b, v0.16b
08c0f5bc: ldur     q0, [x19, #0x68]
08c0f5c0: ldr      x8, [x19, #0x78]
08c0f5c4: add      x0, sp, #0x40
08c0f5c8: mov      x1, xzr
08c0f5cc: str      q0, [sp, #0x40]
08c0f5d0: str      x8, [sp, #0x50]
08c0f5d4: bl       #0x3ac5138
08c0f5d8: fadd     s1, s8, s9
08c0f5dc: fcmp     s1, s0
08c0f5e0: fcsel    s0, s1, s0, mi
08c0f5e4: add      x8, sp, #8
08c0f5e8: mov      x0, xzr
08c0f5ec: bl       #0x3ac68b0
08c0f5f0: ldr      x8, [sp, #0x18]
08c0f5f4: ldur     q0, [sp, #8]
08c0f5f8: str      x8, [sp, #0x30]
08c0f5fc: str      q0, [sp, #0x20]
08c0f600: str      x8, [x19, #0x48]
08c0f604: stur     q0, [x19, #0x38]
08c0f608: b        #0x8c0f474
08c0f60c: bl       #0x39d36e4