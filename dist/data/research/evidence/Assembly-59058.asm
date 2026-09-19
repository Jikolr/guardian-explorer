067113fc: sub      sp, sp, #0x150
06711400: stp      x29, x30, [sp, #0x120]
06711404: stp      x22, x21, [sp, #0x130]
06711408: stp      x20, x19, [sp, #0x140]
0671140c: mrs      x20, tpidr_el0
06711410: ldr      x8, [x20, #0x28]
06711414: adrp     x21, #0xa269000
06711418: mov      x19, x0
0671141c: str      x8, [sp, #0x118]
06711420: ldrb     w8, [x21, #0x57c]
06711424: tbnz     w8, #0, #0x6711460
06711428: adrp     x0, #0x9b9c000
0671142c: ldr      x0, [x0, #0x938]
06711430: bl       #0x39d34bc
06711434: adrp     x0, #0x9b7f000
06711438: ldr      x0, [x0, #0xa60]
0671143c: bl       #0x39d34bc
06711440: adrp     x0, #0x9b7f000
06711444: ldr      x0, [x0, #0x540]
06711448: bl       #0x39d34bc
0671144c: adrp     x0, #0x9b7f000
06711450: ldr      x0, [x0, #0x548]
06711454: bl       #0x39d34bc
06711458: mov      w8, #1
0671145c: strb     w8, [x21, #0x57c]
06711460: mov      w0, #0xfb0
06711464: mov      x1, xzr
06711468: stp      xzr, xzr, [sp, #0xd0]
0671146c: str      wzr, [sp, #0xe8]
06711470: str      xzr, [sp, #0xe0]
06711474: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06711478: tbz      w0, #0, #0x671149c
0671147c: mov      w0, #0xfb0
06711480: mov      x1, xzr
06711484: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06711488: cbz      x0, #0x67115d8
0671148c: mov      x1, x19
06711490: mov      x2, xzr
06711494: bl       #0x86225fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_384
06711498: b        #0x67115b4
0671149c: add      x9, x19, #0x331
067114a0: ldrb     w8, [x19, #0x330]
067114a4: ldur     q0, [x9, #0xb]
067114a8: ldr      q1, [x9]
067114ac: add      x21, sp, #0x90
067114b0: stur     q0, [x21, #0x6b]
067114b4: str      q1, [sp, #0xf0]
067114b8: cbz      w8, #0x67114c8
067114bc: ldur     q0, [x21, #0x63]
067114c0: ldur     x8, [x21, #0x73]
067114c4: b        #0x6711594
067114c8: mov      x0, x19
067114cc: add      x22, x19, #0x330
067114d0: bl       #0x67115e0 ; Oak.WeaponSpec.CalcAtk2Dps
067114d4: add      x8, sp, #0x90
067114d8: mov      x0, xzr
067114dc: bl       #0x3ac68b0
067114e0: ldr      x8, [sp, #0xa0]
067114e4: ldr      q0, [sp, #0x90]
067114e8: stp      xzr, xzr, [sp, #0x90]
067114ec: str      wzr, [sp, #0xa8]
067114f0: str      xzr, [sp, #0xa0]
067114f4: adrp     x9, #0x9b7f000
067114f8: ldr      x9, [x9, #0xa60]
067114fc: add      x0, sp, #0x90
06711500: add      x1, sp, #0x50
06711504: str      x8, [sp, #0x80]
06711508: ldr      x2, [x9]
0671150c: str      q0, [sp, #0x70]
06711510: str      q0, [sp, #0x50]
06711514: str      x8, [sp, #0x60]
06711518: bl       #0x4b3fcd4
0671151c: ldr      q0, [sp, #0x90]
06711520: ldur     q1, [x21, #0xc]
06711524: adrp     x8, #0x9b7f000
06711528: add      x0, sp, #0xd0
0671152c: str      q0, [sp, #0x50]
06711530: stur     q1, [sp, #0x5c]
06711534: ldur     q0, [sp, #0x5c]
06711538: ldr      q1, [sp, #0x50]
0671153c: ldr      x8, [x8, #0x548]
06711540: stur     q0, [x22, #0xc]
06711544: str      q1, [x22]
06711548: ldr      q0, [sp, #0x90]
0671154c: ldur     q1, [x21, #0xc]
06711550: ldr      x1, [x8]
06711554: add      x8, sp, #0xb0
06711558: str      q0, [sp, #0xd0]
0671155c: stur     q1, [x21, #0x4c]
06711560: bl       #0x4b3fcf8
06711564: ldr      q0, [sp, #0xb0]
06711568: ldr      x8, [sp, #0xc0]
0671156c: add      x0, sp, #0x30
06711570: mov      x1, xzr
06711574: str      q0, [sp, #0x30]
06711578: str      x8, [sp, #0x40]
0671157c: bl       #0x3ac5138
06711580: add      x8, sp, #0x18
06711584: mov      x0, xzr
06711588: bl       #0x3ac68b0
0671158c: ldur     q0, [sp, #0x18]
06711590: ldr      x8, [sp, #0x28]
06711594: str      q0, [sp, #0xb0]
06711598: ldr      q0, [sp, #0xb0]
0671159c: mov      x0, sp
067115a0: mov      x1, xzr
067115a4: str      x8, [sp, #0xc0]
067115a8: str      q0, [sp]
067115ac: str      x8, [sp, #0x10]
067115b0: bl       #0x3ac5138
067115b4: ldr      x8, [x20, #0x28]
067115b8: ldr      x9, [sp, #0x118]
067115bc: cmp      x8, x9
067115c0: b.ne     #0x67115dc
067115c4: ldp      x20, x19, [sp, #0x140]
067115c8: ldp      x22, x21, [sp, #0x130]
067115cc: ldp      x29, x30, [sp, #0x120]
067115d0: add      sp, sp, #0x150
067115d4: ret      
067115d8: bl       #0x39d36e4
067115dc: bl       #0x9749ae0