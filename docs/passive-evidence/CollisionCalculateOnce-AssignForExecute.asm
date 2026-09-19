03ba920c: sub      sp, sp, #0x90
03ba9210: str      x30, [sp, #0x40]
03ba9214: stp      x26, x25, [sp, #0x50]
03ba9218: stp      x24, x23, [sp, #0x60]
03ba921c: stp      x22, x21, [sp, #0x70]
03ba9220: stp      x20, x19, [sp, #0x80]
03ba9224: adrp     x19, #0xa25e000
03ba9228: ldrb     w8, [x19, #0x22a]
03ba922c: mov      x20, x2
03ba9230: mov      x21, x1
03ba9234: mov      x22, x0
03ba9238: tbnz     w8, #0, #0x3ba92a4
03ba923c: adrp     x0, #0x9b45000
03ba9240: ldr      x0, [x0, #0x9c0]
03ba9244: bl       #0x39d34bc
03ba9248: adrp     x0, #0x9b45000
03ba924c: ldr      x0, [x0, #0x9c8]
03ba9250: bl       #0x39d34bc
03ba9254: adrp     x0, #0x9b45000
03ba9258: ldr      x0, [x0, #0x9d0]
03ba925c: bl       #0x39d34bc
03ba9260: adrp     x0, #0x9b45000
03ba9264: ldr      x0, [x0, #0xe68]
03ba9268: bl       #0x39d34bc
03ba926c: adrp     x0, #0x9b3f000
03ba9270: ldr      x0, [x0, #0xed8]
03ba9274: bl       #0x39d34bc
03ba9278: adrp     x0, #0x9b40000
03ba927c: ldr      x0, [x0, #0xd78]
03ba9280: bl       #0x39d34bc
03ba9284: adrp     x0, #0x9b45000
03ba9288: ldr      x0, [x0, #0x9d8]
03ba928c: bl       #0x39d34bc
03ba9290: adrp     x0, #0x9b45000
03ba9294: ldr      x0, [x0, #0x9e0]
03ba9298: bl       #0x39d34bc
03ba929c: mov      w8, #1
03ba92a0: strb     w8, [x19, #0x22a]
03ba92a4: mov      w0, #0x48b
03ba92a8: mov      x1, xzr
03ba92ac: stp      xzr, xzr, [sp, #0x20]
03ba92b0: str      xzr, [sp, #0x30]
03ba92b4: bl       #0x3bd8b58
03ba92b8: tbz      w0, #0, #0x3ba92e4
03ba92bc: mov      w0, #0x48b
03ba92c0: mov      x1, xzr
03ba92c4: bl       #0x3bd8adc
03ba92c8: cbz      x0, #0x3ba9558
03ba92cc: mov      x1, x22
03ba92d0: mov      x2, x21
03ba92d4: mov      x3, x20
03ba92d8: mov      x4, xzr
03ba92dc: bl       #0x3bcd81c
03ba92e0: b        #0x3ba953c
03ba92e4: cbz      x21, #0x3ba9558
03ba92e8: adrp     x8, #0x9b45000
03ba92ec: ldr      x1, [x22, #0xc0]
03ba92f0: ldr      x8, [x8, #0xe68]
03ba92f4: mov      x0, x21
03ba92f8: ldr      x2, [x8]
03ba92fc: bl       #0x4056cc4
03ba9300: cbz      x0, #0x3ba9558
03ba9304: cbz      x20, #0x3ba9558
03ba9308: ldr      x19, [x0, #0x18]
03ba930c: fmov     s0, wzr
03ba9310: fmov     s1, wzr
03ba9314: fmov     s2, wzr
03ba9318: mov      x0, x20
03ba931c: mov      w1, wzr
03ba9320: mov      x2, xzr
03ba9324: bl       #0x66994b8
03ba9328: cbz      x19, #0x3ba9558
03ba932c: mov      x0, x19
03ba9330: mov      x1, xzr
03ba9334: bl       #0x8b39468
03ba9338: fmov     s0, wzr
03ba933c: fmov     s1, wzr
03ba9340: fmov     s2, wzr
03ba9344: mov      x0, x20
03ba9348: mov      w1, wzr
03ba934c: mov      x2, xzr
03ba9350: bl       #0x66995f8
03ba9354: mov      x0, x19
03ba9358: mov      x1, xzr
03ba935c: bl       #0x8b49340
03ba9360: mov      x0, x19
03ba9364: mov      x1, xzr
03ba9368: bl       #0x8b3d078
03ba936c: fmov     s0, wzr
03ba9370: mov      x0, x19
03ba9374: mov      x1, xzr
03ba9378: bl       #0x8b3d0c8
03ba937c: mov      x20, x0
03ba9380: cbz      x0, #0x3ba955c
03ba9384: adrp     x9, #0x9b40000
03ba9388: ldr      x23, [x22, #0xd8]
03ba938c: ldr      w8, [x20, #0x18]
03ba9390: ldr      x9, [x9, #0xd78]
03ba9394: str      w8, [sp, #0x4c]
03ba9398: ldr      x0, [x9]
03ba939c: add      x1, sp, #0x4c
03ba93a0: bl       #0x39d35cc
03ba93a4: mov      x2, x0
03ba93a8: mov      x0, x21
03ba93ac: mov      x1, x23
03ba93b0: mov      x3, xzr
03ba93b4: bl       #0x9402c08
03ba93b8: mov      x0, x21
03ba93bc: mov      x1, xzr
03ba93c0: bl       #0x9401b94
03ba93c4: adrp     x8, #0x9b45000
03ba93c8: ldr      x8, [x8, #0x9d8]
03ba93cc: mov      x24, x0
03ba93d0: ldr      x1, [x8]
03ba93d4: add      x8, sp, #8
03ba93d8: mov      x0, x20
03ba93dc: bl       #0x474997c
03ba93e0: ldur     q0, [sp, #8]
03ba93e4: ldr      x8, [sp, #0x18]
03ba93e8: adrp     x25, #0x9b45000
03ba93ec: str      q0, [sp, #0x20]
03ba93f0: str      x8, [sp, #0x30]
03ba93f4: ldr      x25, [x25, #0x9c8]
03ba93f8: ldr      x1, [x25]
03ba93fc: add      x0, sp, #0x20
03ba9400: bl       #0x5750e8c
03ba9404: tbz      w0, #0, #0x3ba9450
03ba9408: ldr      x0, [sp, #0x30]
03ba940c: ldr      x23, [x22, #0xe0]
03ba9410: mov      x1, xzr
03ba9414: bl       #0x3bc5d10
03ba9418: mov      x2, x0
03ba941c: mov      x0, x21
03ba9420: mov      x1, x23
03ba9424: mov      x3, xzr
03ba9428: bl       #0x9402c08
03ba942c: ldr      x1, [x22, #0xb0]
03ba9430: mov      x0, x21
03ba9434: mov      x2, xzr
03ba9438: bl       #0x9401eb8
03ba943c: mov      x0, x21
03ba9440: mov      x1, x24
03ba9444: mov      x2, xzr
03ba9448: bl       #0x9401c08
03ba944c: b        #0x3ba93f8
03ba9450: mov      x25, xzr
03ba9454: mov      w23, #5
03ba9458: adrp     x8, #0x9b45000
03ba945c: ldr      x8, [x8, #0x9c0]
03ba9460: ldr      x1, [x8]
03ba9464: add      x0, sp, #0x20
03ba9468: bl       #0x5750e88
03ba946c: cbnz     x25, #0x3ba9568
03ba9470: cmp      w23, #5
03ba9474: b.eq     #0x3ba947c
03ba9478: cbnz     w23, #0x3ba94b8
03ba947c: mov      x0, x21
03ba9480: mov      x1, x24
03ba9484: mov      x2, xzr
03ba9488: bl       #0x9401c28
03ba948c: ldr      w8, [x20, #0x18]
03ba9490: cmp      w8, #1
03ba9494: b.lt     #0x3ba94a8
03ba9498: ldr      x1, [x22, #0xb8]
03ba949c: mov      x0, x21
03ba94a0: mov      x2, xzr
03ba94a4: bl       #0x9401eb8
03ba94a8: mov      x21, xzr
03ba94ac: mov      w23, #7
03ba94b0: cbnz     x20, #0x3ba94c0
03ba94b4: b        #0x3ba9520
03ba94b8: mov      x21, xzr
03ba94bc: cbz      x20, #0x3ba9520
03ba94c0: adrp     x10, #0x9b3f000
03ba94c4: ldr      x8, [x20]
03ba94c8: ldr      x10, [x10, #0xed8]
03ba94cc: ldrh     w9, [x8, #0x12e]
03ba94d0: ldr      x1, [x10]
03ba94d4: cbz      x9, #0x3ba94f8
03ba94d8: ldr      x10, [x8, #0xb0]
03ba94dc: add      x10, x10, #8
03ba94e0: ldur     x11, [x10, #-8]
03ba94e4: cmp      x11, x1
03ba94e8: b.eq     #0x3ba9508
03ba94ec: subs     x9, x9, #1
03ba94f0: add      x10, x10, #0x10
03ba94f4: b.ne     #0x3ba94e0
03ba94f8: mov      x0, x20
03ba94fc: mov      w2, wzr
03ba9500: bl       #0x39a94f0
03ba9504: b        #0x3ba9514
03ba9508: ldrsw    x9, [x10]
03ba950c: add      x8, x8, x9, lsl #4
03ba9510: add      x0, x8, #0x138
03ba9514: ldp      x8, x1, [x0]
03ba9518: mov      x0, x20
03ba951c: blr      x8
03ba9520: cbnz     x21, #0x3ba9560
03ba9524: cmp      w23, #7
03ba9528: b.eq     #0x3ba9530
03ba952c: cbnz     w23, #0x3ba953c
03ba9530: mov      x0, x19
03ba9534: mov      x1, xzr
03ba9538: bl       #0x8b3bf14
03ba953c: ldp      x20, x19, [sp, #0x80]
03ba9540: ldp      x22, x21, [sp, #0x70]
03ba9544: ldp      x24, x23, [sp, #0x60]
03ba9548: ldp      x26, x25, [sp, #0x50]
03ba954c: ldr      x30, [sp, #0x40]
03ba9550: add      sp, sp, #0x90
03ba9554: ret      
03ba9558: bl       #0x39d36e4
03ba955c: bl       #0x39d36e4
03ba9560: mov      x0, x21
03ba9564: bl       #0x39d36dc
03ba9568: mov      x0, x25
03ba956c: bl       #0x39d36dc
03ba9570: b        #0x3ba9588
03ba9574: b        #0x3ba9588
03ba9578: b        #0x3ba9588
03ba957c: b        #0x3ba9588
03ba9580: b        #0x3ba9588
03ba9584: b        #0x3ba9588
03ba9588: mov      x23, x1
03ba958c: mov      x26, x0
03ba9590: b        #0x3ba95e4
03ba9594: b        #0x3ba95a0
03ba9598: b        #0x3ba95a0
03ba959c: b        #0x3ba95a0
03ba95a0: mov      x26, x0
03ba95a4: cmp      w1, #1
03ba95a8: b.ne     #0x3ba95c4
03ba95ac: mov      x0, x26
03ba95b0: bl       #0x9749aa0
03ba95b4: ldr      x25, [x0]
03ba95b8: bl       #0x9749ab0
03ba95bc: mov      w23, wzr
03ba95c0: b        #0x3ba9458
03ba95c4: mov      x23, x1
03ba95c8: mov      x25, xzr
03ba95cc: adrp     x8, #0x9b45000
03ba95d0: ldr      x8, [x8, #0x9c0]
03ba95d4: ldr      x1, [x8]
03ba95d8: add      x0, sp, #0x20
03ba95dc: bl       #0x5750e88
03ba95e0: cbnz     x25, #0x3ba9610
03ba95e4: cmp      w23, #1
03ba95e8: b.ne     #0x3ba9608
03ba95ec: mov      x0, x26
03ba95f0: bl       #0x9749aa0
03ba95f4: ldr      x21, [x0]
03ba95f8: bl       #0x9749ab0
03ba95fc: mov      w23, wzr
03ba9600: cbnz     x20, #0x3ba94c0
03ba9604: b        #0x3ba9520
03ba9608: mov      x21, xzr
03ba960c: b        #0x3ba9628
03ba9610: mov      x0, x25
03ba9614: bl       #0x39d36dc
03ba9618: mov      x23, x1
03ba961c: mov      x26, x0
03ba9620: b        #0x3ba95cc
03ba9624: mov      x26, x0
03ba9628: cbz      x20, #0x3ba968c
03ba962c: adrp     x10, #0x9b3f000
03ba9630: ldr      x8, [x20]
03ba9634: ldr      x10, [x10, #0xed8]
03ba9638: ldrh     w9, [x8, #0x12e]
03ba963c: ldr      x1, [x10]
03ba9640: cbz      x9, #0x3ba9664
03ba9644: ldr      x10, [x8, #0xb0]
03ba9648: add      x10, x10, #8
03ba964c: ldur     x11, [x10, #-8]
03ba9650: cmp      x11, x1
03ba9654: b.eq     #0x3ba9674
03ba9658: subs     x9, x9, #1
03ba965c: add      x10, x10, #0x10
03ba9660: b.ne     #0x3ba964c
03ba9664: mov      x0, x20
03ba9668: mov      w2, wzr
03ba966c: bl       #0x39a94f0
03ba9670: b        #0x3ba9680
03ba9674: ldrsw    x9, [x10]
03ba9678: add      x8, x8, x9, lsl #4
03ba967c: add      x0, x8, #0x138
03ba9680: ldp      x8, x1, [x0]
03ba9684: mov      x0, x20
03ba9688: blr      x8
03ba968c: cbnz     x21, #0x3ba9698
03ba9690: mov      x0, x26
03ba9694: bl       #0x3ab82d0
03ba9698: mov      x0, x21
03ba969c: bl       #0x39d36dc
03ba96a0: bl       #0x35bb99c