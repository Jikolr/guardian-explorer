08c0e5d0: str      x30, [sp, #-0x20]!
08c0e5d4: stp      x20, x19, [sp, #0x10]
08c0e5d8: adrp     x20, #0xa279000
08c0e5dc: ldrb     w8, [x20, #0x64b]
08c0e5e0: mov      x19, x0
08c0e5e4: tbnz     w8, #0, #0x8c0e5fc
08c0e5e8: adrp     x0, #0x9c43000
08c0e5ec: ldr      x0, [x0, #0x888]
08c0e5f0: bl       #0x39d34bc
08c0e5f4: mov      w8, #1
08c0e5f8: strb     w8, [x20, #0x64b]
08c0e5fc: mov      w0, #0x49a9
08c0e600: mov      x1, xzr
08c0e604: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0e608: tbz      w0, #0, #0x8c0e630
08c0e60c: mov      w0, #0x49a9
08c0e610: mov      x1, xzr
08c0e614: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0e618: cbz      x0, #0x8c0e648
08c0e61c: mov      x1, x19
08c0e620: ldp      x20, x19, [sp, #0x10]
08c0e624: mov      x2, xzr
08c0e628: ldr      x30, [sp], #0x20
08c0e62c: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
08c0e630: adrp     x8, #0x9c43000
08c0e634: ldr      x8, [x8, #0x888]
08c0e638: ldp      x20, x19, [sp, #0x10]
08c0e63c: ldr      x0, [x8]
08c0e640: ldr      x30, [sp], #0x20
08c0e644: ret      
08c0e648: bl       #0x39d36e4