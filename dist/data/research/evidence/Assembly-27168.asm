08c0fadc: str      x30, [sp, #-0x30]!
08c0fae0: stp      x22, x21, [sp, #0x10]
08c0fae4: stp      x20, x19, [sp, #0x20]
08c0fae8: adrp     x21, #0xa279000
08c0faec: ldrb     w8, [x21, #0x651]
08c0faf0: mov      w20, w1
08c0faf4: mov      x19, x0
08c0faf8: tbnz     w8, #0, #0x8c0fb4c
08c0fafc: adrp     x0, #0x9b44000
08c0fb00: ldr      x0, [x0, #0xf68]
08c0fb04: bl       #0x39d34bc
08c0fb08: adrp     x0, #0x9b3f000
08c0fb0c: ldr      x0, [x0, #0xee0]
08c0fb10: bl       #0x39d34bc
08c0fb14: adrp     x0, #0x9b5d000
08c0fb18: ldr      x0, [x0, #0x1c8]
08c0fb1c: bl       #0x39d34bc
08c0fb20: adrp     x0, #0x9c44000
08c0fb24: ldr      x0, [x0, #0xa98]
08c0fb28: bl       #0x39d34bc
08c0fb2c: adrp     x0, #0x9c44000
08c0fb30: ldr      x0, [x0, #0xaa0]
08c0fb34: bl       #0x39d34bc
08c0fb38: adrp     x0, #0x9b6d000
08c0fb3c: ldr      x0, [x0, #0x10]
08c0fb40: bl       #0x39d34bc
08c0fb44: mov      w8, #1
08c0fb48: strb     w8, [x21, #0x651]
08c0fb4c: mov      w0, #0x49b2
08c0fb50: mov      x1, xzr
08c0fb54: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08c0fb58: tbz      w0, #0, #0x8c0fb88
08c0fb5c: mov      w0, #0x49b2
08c0fb60: mov      x1, xzr
08c0fb64: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08c0fb68: cbz      x0, #0x8c0fc68
08c0fb6c: and      w2, w20, #1
08c0fb70: mov      x1, x19
08c0fb74: ldp      x20, x19, [sp, #0x20]
08c0fb78: ldp      x22, x21, [sp, #0x10]
08c0fb7c: mov      x3, xzr
08c0fb80: ldr      x30, [sp], #0x30
08c0fb84: b        #0x861b3b8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_265
08c0fb88: adrp     x8, #0x9b44000
08c0fb8c: ldr      x8, [x8, #0xf68]
08c0fb90: ldr      x0, [x8]
08c0fb94: ldr      w8, [x0, #0xe0]
08c0fb98: cbnz     w8, #0x8c0fba0
08c0fb9c: bl       #0x39d35c4
08c0fba0: mov      x0, xzr
08c0fba4: bl       #0x6963ce8 ; GameStrings.get_Instance
08c0fba8: adrp     x8, #0x9c44000
08c0fbac: adrp     x9, #0x9c44000
08c0fbb0: ldr      x8, [x8, #0xaa0]
08c0fbb4: ldr      x9, [x9, #0xa98]
08c0fbb8: adrp     x10, #0x9b3f000
08c0fbbc: ldr      x10, [x10, #0xee0]
08c0fbc0: tst      w20, #1
08c0fbc4: csel     x8, x8, x9, ne
08c0fbc8: ldr      x20, [x8]
08c0fbcc: ldr      x8, [x10]
08c0fbd0: mov      x21, x0
08c0fbd4: mov      w1, #1
08c0fbd8: mov      x0, x8
08c0fbdc: bl       #0x39d3534
08c0fbe0: adrp     x8, #0x9b6d000
08c0fbe4: ldr      x8, [x8, #0x10]
08c0fbe8: mov      x22, x0
08c0fbec: add      x0, x19, #0x38
08c0fbf0: mov      x2, xzr
08c0fbf4: ldr      x1, [x8]
08c0fbf8: bl       #0x3ac6a18
08c0fbfc: adrp     x8, #0x9b5d000
08c0fc00: ldr      x8, [x8, #0x1c8]
08c0fc04: mov      x1, x0
08c0fc08: mov      x2, xzr
08c0fc0c: ldr      x8, [x8]
08c0fc10: mov      x0, x8
08c0fc14: bl       #0x5ab2818
08c0fc18: cbz      x22, #0x8c0fc68
08c0fc1c: mov      x19, x0
08c0fc20: cbz      x0, #0x8c0fc38
08c0fc24: ldr      x8, [x22]
08c0fc28: mov      x0, x19
08c0fc2c: ldr      x1, [x8, #0x40]
08c0fc30: bl       #0x39d35c8
08c0fc34: cbz      x0, #0x8c0fc70
08c0fc38: ldr      w8, [x22, #0x18]
08c0fc3c: cbz      w8, #0x8c0fc6c
08c0fc40: str      x19, [x22, #0x20]
08c0fc44: cbz      x21, #0x8c0fc68
08c0fc48: mov      x0, x21
08c0fc4c: mov      x1, x20
08c0fc50: mov      x2, x22
08c0fc54: ldp      x20, x19, [sp, #0x20]
08c0fc58: ldp      x22, x21, [sp, #0x10]
08c0fc5c: mov      x3, xzr
08c0fc60: ldr      x30, [sp], #0x30
08c0fc64: b        #0x69673dc ; GameStrings.Format
08c0fc68: bl       #0x39d36e4
08c0fc6c: bl       #0x39d36ec
08c0fc70: bl       #0x39d3708
08c0fc74: mov      x1, xzr
08c0fc78: bl       #0x39d35b4