08bb8c14: str      x30, [sp, #-0x20]!
08bb8c18: stp      x20, x19, [sp, #0x10]
08bb8c1c: adrp     x20, #0xa279000
08bb8c20: ldrb     w8, [x20, #0x38c]
08bb8c24: mov      x19, x0
08bb8c28: tbnz     w8, #0, #0x8bb8c40
08bb8c2c: adrp     x0, #0x9c43000
08bb8c30: ldr      x0, [x0, #0x888]
08bb8c34: bl       #0x39d34bc
08bb8c38: mov      w8, #1
08bb8c3c: strb     w8, [x20, #0x38c]
08bb8c40: mov      w0, #0x4596
08bb8c44: mov      x1, xzr
08bb8c48: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8c4c: tbz      w0, #0, #0x8bb8c74
08bb8c50: mov      w0, #0x4596
08bb8c54: mov      x1, xzr
08bb8c58: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8c5c: cbz      x0, #0x8bb8c8c
08bb8c60: mov      x1, x19
08bb8c64: ldp      x20, x19, [sp, #0x10]
08bb8c68: mov      x2, xzr
08bb8c6c: ldr      x30, [sp], #0x20
08bb8c70: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
08bb8c74: adrp     x8, #0x9c43000
08bb8c78: ldr      x8, [x8, #0x888]
08bb8c7c: ldp      x20, x19, [sp, #0x10]
08bb8c80: ldr      x0, [x8]
08bb8c84: ldr      x30, [sp], #0x20
08bb8c88: ret      
08bb8c8c: bl       #0x39d36e4