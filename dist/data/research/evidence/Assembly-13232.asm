08100748: stp      x30, x21, [sp, #-0x20]!
0810074c: stp      x20, x19, [sp, #0x10]
08100750: adrp     x20, #0xa273000
08100754: ldrb     w8, [x20, #0xe79]
08100758: mov      x19, x0
0810075c: tbnz     w8, #0, #0x8100780
08100760: adrp     x0, #0x9c01000
08100764: ldr      x0, [x0, #0x6b0]
08100768: bl       #0x39d34bc
0810076c: adrp     x0, #0x9b45000
08100770: ldr      x0, [x0, #0x7b8]
08100774: bl       #0x39d34bc
08100778: mov      w8, #1
0810077c: strb     w8, [x20, #0xe79]
08100780: mov      w0, #0xf22
08100784: mov      x1, xzr
08100788: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0810078c: tbz      w0, #0, #0x81007b4
08100790: mov      w0, #0xf22
08100794: mov      x1, xzr
08100798: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0810079c: cbz      x0, #0x8100830
081007a0: mov      x1, x19
081007a4: ldp      x20, x19, [sp, #0x10]
081007a8: mov      x2, xzr
081007ac: ldp      x30, x21, [sp], #0x20
081007b0: b        #0x86464dc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_947
081007b4: ldr      x0, [x19, #0x10]
081007b8: mov      x1, xzr
081007bc: bl       #0x81d7e98 ; Oak.AwakeningTreeUtil.OptionId
081007c0: adrp     x8, #0x9b45000
081007c4: ldr      x8, [x8, #0x7b8]
081007c8: mov      w20, w0
081007cc: ldr      x8, [x8]
081007d0: ldr      w9, [x8, #0xe0]
081007d4: cbnz     w9, #0x81007e0
081007d8: mov      x0, x8
081007dc: bl       #0x39d35c4
081007e0: adrp     x8, #0x9c01000
081007e4: ldr      x8, [x8, #0x6b0]
081007e8: ldr      x0, [x8]
081007ec: bl       #0x4057db4
081007f0: ldr      x8, [x19, #0x10]
081007f4: mov      x21, x0
081007f8: mov      x1, xzr
081007fc: mov      x0, x8
08100800: bl       #0x81d7b5c ; Oak.AwakeningTreeUtil.IsSpecialNode
08100804: mov      x2, xzr
08100808: tbz      w0, #0, #0x8100810
0810080c: ldur     x2, [x19, #0x1c]
08100810: cbz      x21, #0x8100830
08100814: ldrb     w3, [x19, #0x24]
08100818: mov      w1, w20
0810081c: ldp      x20, x19, [sp, #0x10]
08100820: mov      x0, x21
08100824: mov      x4, xzr
08100828: ldp      x30, x21, [sp], #0x20
0810082c: b        #0x6c106f4 ; Oak.AwakeningNodeOptions.GetOption
08100830: bl       #0x39d36e4