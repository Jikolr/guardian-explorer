08bb9574: str      x30, [sp, #-0x40]!
08bb9578: stp      x24, x23, [sp, #0x10]
08bb957c: stp      x22, x21, [sp, #0x20]
08bb9580: stp      x20, x19, [sp, #0x30]
08bb9584: adrp     x20, #0xa279000
08bb9588: ldrb     w8, [x20, #0x38f]
08bb958c: mov      x19, x0
08bb9590: tbnz     w8, #0, #0x8bb95fc
08bb9594: adrp     x0, #0x9c43000
08bb9598: ldr      x0, [x0, #0x930]
08bb959c: bl       #0x39d34bc
08bb95a0: adrp     x0, #0x9c43000
08bb95a4: ldr      x0, [x0, #0x938]
08bb95a8: bl       #0x39d34bc
08bb95ac: adrp     x0, #0x9c43000
08bb95b0: ldr      x0, [x0, #0x458]
08bb95b4: bl       #0x39d34bc
08bb95b8: adrp     x0, #0x9b77000
08bb95bc: ldr      x0, [x0, #0x468]
08bb95c0: bl       #0x39d34bc
08bb95c4: adrp     x0, #0x9b77000
08bb95c8: ldr      x0, [x0, #0x470]
08bb95cc: bl       #0x39d34bc
08bb95d0: adrp     x0, #0x9b44000
08bb95d4: ldr      x0, [x0, #0xf00]
08bb95d8: bl       #0x39d34bc
08bb95dc: adrp     x0, #0x9b4e000
08bb95e0: ldr      x0, [x0, #0xa50]
08bb95e4: bl       #0x39d34bc
08bb95e8: adrp     x0, #0x9c43000
08bb95ec: ldr      x0, [x0, #0x958]
08bb95f0: bl       #0x39d34bc
08bb95f4: mov      w8, #1
08bb95f8: strb     w8, [x20, #0x38f]
08bb95fc: mov      w0, #0x459e
08bb9600: mov      x1, xzr
08bb9604: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb9608: tbz      w0, #0, #0x8bb9638
08bb960c: mov      w0, #0x459e
08bb9610: mov      x1, xzr
08bb9614: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb9618: cbz      x0, #0x8bb9798
08bb961c: mov      x1, x19
08bb9620: ldp      x20, x19, [sp, #0x30]
08bb9624: ldp      x22, x21, [sp, #0x20]
08bb9628: ldp      x24, x23, [sp, #0x10]
08bb962c: mov      x2, xzr
08bb9630: ldr      x30, [sp], #0x40
08bb9634: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08bb9638: adrp     x22, #0x9b44000
08bb963c: ldr      x22, [x22, #0xf00]
08bb9640: ldr      x0, [x22]
08bb9644: ldr      w8, [x0, #0xe0]
08bb9648: cbnz     w8, #0x8bb9650
08bb964c: bl       #0x39d35c4
08bb9650: adrp     x24, #0xa25e000
08bb9654: ldrb     w8, [x24, #0x1ba]
08bb9658: cbnz     w8, #0x8bb9670
08bb965c: adrp     x0, #0x9b44000
08bb9660: ldr      x0, [x0, #0xf00]
08bb9664: bl       #0x39d34bc
08bb9668: mov      w8, #1
08bb966c: strb     w8, [x24, #0x1ba]
08bb9670: ldr      x0, [x22]
08bb9674: adrp     x23, #0x9b4e000
08bb9678: adrp     x21, #0x9c43000
08bb967c: ldr      w8, [x0, #0xe0]
08bb9680: ldr      x23, [x23, #0xa50]
08bb9684: ldr      x21, [x21, #0x930]
08bb9688: cbnz     w8, #0x8bb9694
08bb968c: bl       #0x39d35c4
08bb9690: ldr      x0, [x22]
08bb9694: ldr      x8, [x0, #0xb8]
08bb9698: ldr      x0, [x23]
08bb969c: ldr      x20, [x8]
08bb96a0: bl       #0x39d36d8
08bb96a4: ldr      x2, [x21]
08bb96a8: mov      x1, x19
08bb96ac: mov      x3, xzr
08bb96b0: mov      x21, x0
08bb96b4: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08bb96b8: cbz      x20, #0x8bb9798
08bb96bc: adrp     x8, #0x9b77000
08bb96c0: ldr      x8, [x8, #0x468]
08bb96c4: mov      x0, x20
08bb96c8: mov      x1, x21
08bb96cc: ldr      x2, [x8]
08bb96d0: bl       #0x40e25f0
08bb96d4: ldrb     w8, [x24, #0x1ba]
08bb96d8: cbnz     w8, #0x8bb96f0
08bb96dc: adrp     x0, #0x9b44000
08bb96e0: ldr      x0, [x0, #0xf00]
08bb96e4: bl       #0x39d34bc
08bb96e8: mov      w8, #1
08bb96ec: strb     w8, [x24, #0x1ba]
08bb96f0: ldr      x0, [x22]
08bb96f4: ldr      w8, [x0, #0xe0]
08bb96f8: cbnz     w8, #0x8bb9704
08bb96fc: bl       #0x39d35c4
08bb9700: ldr      x0, [x22]
08bb9704: ldr      x8, [x0, #0xb8]
08bb9708: ldr      x0, [x23]
08bb970c: ldr      x20, [x8]
08bb9710: bl       #0x39d36d8
08bb9714: adrp     x8, #0x9c43000
08bb9718: ldr      x8, [x8, #0x938]
08bb971c: mov      x1, x19
08bb9720: mov      x3, xzr
08bb9724: mov      x21, x0
08bb9728: ldr      x2, [x8]
08bb972c: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08bb9730: cbz      x20, #0x8bb9798
08bb9734: adrp     x8, #0x9b77000
08bb9738: ldr      x8, [x8, #0x470]
08bb973c: mov      x0, x20
08bb9740: mov      x1, x21
08bb9744: ldr      x2, [x8]
08bb9748: bl       #0x40e25f0
08bb974c: adrp     x20, #0x9c43000
08bb9750: ldr      x20, [x20, #0x458]
08bb9754: ldr      x0, [x20]
08bb9758: ldr      w8, [x0, #0xe0]
08bb975c: cbnz     w8, #0x8bb9768
08bb9760: bl       #0x39d35c4
08bb9764: ldr      x0, [x20]
08bb9768: ldr      x8, [x0, #0xb8]
08bb976c: ldr      x0, [x8]
08bb9770: cbz      x0, #0x8bb9798
08bb9774: adrp     x8, #0x9c43000
08bb9778: ldr      x8, [x8, #0x958]
08bb977c: mov      x1, x19
08bb9780: ldp      x20, x19, [sp, #0x30]
08bb9784: ldp      x22, x21, [sp, #0x20]
08bb9788: ldr      x2, [x8]
08bb978c: ldp      x24, x23, [sp, #0x10]
08bb9790: ldr      x30, [sp], #0x40
08bb9794: b        #0x4f51a9c
08bb9798: bl       #0x39d36e4