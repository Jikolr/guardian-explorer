08bb9370: sub      sp, sp, #0xa0
08bb9374: str      x30, [sp, #0x60]
08bb9378: stp      x24, x23, [sp, #0x70]
08bb937c: stp      x22, x21, [sp, #0x80]
08bb9380: stp      x20, x19, [sp, #0x90]
08bb9384: adrp     x24, #0xa279000
08bb9388: ldrb     w8, [x24, #0x38e]
08bb938c: mov      w20, w4
08bb9390: mov      x19, x3
08bb9394: mov      x21, x2
08bb9398: mov      w22, w1
08bb939c: mov      x23, x0
08bb93a0: tbnz     w8, #0, #0x8bb93f4
08bb93a4: adrp     x0, #0x9c43000
08bb93a8: ldr      x0, [x0, #0x458]
08bb93ac: bl       #0x39d34bc
08bb93b0: adrp     x0, #0x9c43000
08bb93b4: ldr      x0, [x0, #0x940]
08bb93b8: bl       #0x39d34bc
08bb93bc: adrp     x0, #0x9b47000
08bb93c0: ldr      x0, [x0, #0xa0]
08bb93c4: bl       #0x39d34bc
08bb93c8: adrp     x0, #0x9c43000
08bb93cc: ldr      x0, [x0, #0x948]
08bb93d0: bl       #0x39d34bc
08bb93d4: adrp     x0, #0x9c43000
08bb93d8: ldr      x0, [x0, #0x950]
08bb93dc: bl       #0x39d34bc
08bb93e0: adrp     x0, #0x9b45000
08bb93e4: ldr      x0, [x0, #0xb18]
08bb93e8: bl       #0x39d34bc
08bb93ec: mov      w8, #1
08bb93f0: strb     w8, [x24, #0x38e]
08bb93f4: mov      w0, #0x2498
08bb93f8: mov      x1, xzr
08bb93fc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9400: tbz      w0, #0, #0x8bb9444
08bb9404: mov      w0, #0x2498
08bb9408: mov      x1, xzr
08bb940c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9410: cbz      x0, #0x8bb9570
08bb9414: mov      x1, x23
08bb9418: mov      w2, w22
08bb941c: mov      x3, x21
08bb9420: mov      x4, x19
08bb9424: mov      w5, w20
08bb9428: ldp      x20, x19, [sp, #0x90]
08bb942c: ldp      x22, x21, [sp, #0x80]
08bb9430: ldp      x24, x23, [sp, #0x70]
08bb9434: ldr      x30, [sp, #0x60]
08bb9438: mov      x6, xzr
08bb943c: add      sp, sp, #0xa0
08bb9440: b        #0x86749a8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_1709
08bb9444: adrp     x24, #0x9c43000
08bb9448: ldr      x24, [x24, #0x458]
08bb944c: ldr      x0, [x24]
08bb9450: ldr      w8, [x0, #0xe0]
08bb9454: cbnz     w8, #0x8bb9460
08bb9458: bl       #0x39d35c4
08bb945c: ldr      x0, [x24]
08bb9460: ldr      x8, [x0, #0xb8]
08bb9464: ldr      x0, [x8]
08bb9468: cbz      x0, #0x8bb9570
08bb946c: adrp     x8, #0x9c43000
08bb9470: ldr      x8, [x8, #0x940]
08bb9474: ldr      x1, [x8]
08bb9478: bl       #0x4f51a50
08bb947c: cbz      x0, #0x8bb9570
08bb9480: mov      x24, x0
08bb9484: str      x23, [x0, #0x10]
08bb9488: str      w22, [x0, #0x18]
08bb948c: stp      x21, x19, [x0, #0x20]
08bb9490: str      w20, [x0, #0x30]
08bb9494: cbz      x19, #0x8bb9570
08bb9498: adrp     x8, #0x9b47000
08bb949c: ldr      x8, [x8, #0xa0]
08bb94a0: ldr      x20, [x19, #0x40]
08bb94a4: ldr      x0, [x8]
08bb94a8: ldr      w8, [x0, #0xe0]
08bb94ac: cbnz     w8, #0x8bb94b4
08bb94b0: bl       #0x39d35c4
08bb94b4: adrp     x8, #0x9c43000
08bb94b8: ldr      x8, [x8, #0x948]
08bb94bc: fmov     s0, wzr
08bb94c0: mov      x0, x20
08bb94c4: mov      x2, xzr
08bb94c8: ldr      x1, [x8]
08bb94cc: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08bb94d0: add      x8, sp, #0x20
08bb94d4: mov      x0, xzr
08bb94d8: bl       #0x3ac68b0
08bb94dc: ldr      x8, [sp, #0x30]
08bb94e0: ldr      q0, [sp, #0x20]
08bb94e4: adrp     x9, #0x9c43000
08bb94e8: ldr      x9, [x9, #0x950]
08bb94ec: str      x8, [sp, #0x50]
08bb94f0: str      q0, [sp, #0x40]
08bb94f4: stur     x8, [x24, #0x64]
08bb94f8: stur     q0, [x24, #0x54]
08bb94fc: ldr      x0, [x19, #0x40]
08bb9500: ldr      x1, [x9]
08bb9504: fmov     s0, wzr
08bb9508: mov      x2, xzr
08bb950c: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08bb9510: add      x8, sp, #8
08bb9514: mov      x0, xzr
08bb9518: bl       #0x3ac68b0
08bb951c: ldr      x8, [sp, #0x18]
08bb9520: ldur     q0, [sp, #8]
08bb9524: adrp     x9, #0x9b45000
08bb9528: ldr      x9, [x9, #0xb18]
08bb952c: str      x8, [sp, #0x30]
08bb9530: str      q0, [sp, #0x20]
08bb9534: stur     x8, [x24, #0x7c]
08bb9538: stur     q0, [x24, #0x6c]
08bb953c: ldr      x0, [x19, #0x40]
08bb9540: ldr      x1, [x9]
08bb9544: mov      w2, #0x1ff
08bb9548: mov      x3, xzr
08bb954c: bl       #0x8bf97a0 ; Utils.GetElementalTypeFromDictionary
08bb9550: str      w0, [x24, #0x38]
08bb9554: mov      x0, x24
08bb9558: ldp      x20, x19, [sp, #0x90]
08bb955c: ldp      x22, x21, [sp, #0x80]
08bb9560: ldp      x24, x23, [sp, #0x70]
08bb9564: ldr      x30, [sp, #0x60]
08bb9568: add      sp, sp, #0xa0
08bb956c: ret      
08bb9570: bl       #0x39d36e4