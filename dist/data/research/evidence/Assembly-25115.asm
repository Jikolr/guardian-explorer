08bba074: str      x30, [sp, #-0x30]!
08bba078: stp      x22, x21, [sp, #0x10]
08bba07c: stp      x20, x19, [sp, #0x20]
08bba080: adrp     x22, #0xa279000
08bba084: ldrb     w8, [x22, #0x393]
08bba088: mov      w19, w2
08bba08c: mov      w21, w1
08bba090: mov      x20, x0
08bba094: tbnz     w8, #0, #0x8bba100
08bba098: adrp     x0, #0x9b44000
08bba09c: ldr      x0, [x0, #0xf68]
08bba0a0: bl       #0x39d34bc
08bba0a4: adrp     x0, #0x9b3f000
08bba0a8: ldr      x0, [x0, #0xee0]
08bba0ac: bl       #0x39d34bc
08bba0b0: adrp     x0, #0x9b47000
08bba0b4: ldr      x0, [x0, #0xa0]
08bba0b8: bl       #0x39d34bc
08bba0bc: adrp     x0, #0x9b5d000
08bba0c0: ldr      x0, [x0, #0x1c8]
08bba0c4: bl       #0x39d34bc
08bba0c8: adrp     x0, #0x9c43000
08bba0cc: ldr      x0, [x0, #0x948]
08bba0d0: bl       #0x39d34bc
08bba0d4: adrp     x0, #0x9c43000
08bba0d8: ldr      x0, [x0, #0x8a0]
08bba0dc: bl       #0x39d34bc
08bba0e0: adrp     x0, #0x9b6d000
08bba0e4: ldr      x0, [x0, #0x10]
08bba0e8: bl       #0x39d34bc
08bba0ec: adrp     x0, #0x9c43000
08bba0f0: ldr      x0, [x0, #0x8a8]
08bba0f4: bl       #0x39d34bc
08bba0f8: mov      w8, #1
08bba0fc: strb     w8, [x22, #0x393]
08bba100: mov      w0, #0x44c9
08bba104: mov      x1, xzr
08bba108: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bba10c: tbz      w0, #0, #0x8bba138
08bba110: mov      w0, #0x44c9
08bba114: mov      x1, xzr
08bba118: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bba11c: cbz      x0, #0x8bba25c
08bba120: and      w3, w19, #1
08bba124: mov      x1, x20
08bba128: mov      w2, w21
08bba12c: mov      x4, xzr
08bba130: bl       #0x86acec8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_2519
08bba134: b        #0x8bba24c
08bba138: cbz      x20, #0x8bba25c
08bba13c: adrp     x8, #0x9b47000
08bba140: ldr      x8, [x8, #0xa0]
08bba144: ldr      x20, [x20, #0x40]
08bba148: ldr      x0, [x8]
08bba14c: ldr      w8, [x0, #0xe0]
08bba150: cbnz     w8, #0x8bba158
08bba154: bl       #0x39d35c4
08bba158: adrp     x8, #0x9c43000
08bba15c: ldr      x8, [x8, #0x948]
08bba160: fmov     s0, wzr
08bba164: mov      x0, x20
08bba168: mov      x2, xzr
08bba16c: ldr      x1, [x8]
08bba170: bl       #0x8bf8908 ; Utils.GetFloatFromDictionary
08bba174: adrp     x8, #0x9b44000
08bba178: ldr      x8, [x8, #0xf68]
08bba17c: str      s0, [sp, #0xc]
08bba180: ldr      x0, [x8]
08bba184: ldr      w8, [x0, #0xe0]
08bba188: cbnz     w8, #0x8bba190
08bba18c: bl       #0x39d35c4
08bba190: mov      x0, xzr
08bba194: bl       #0x6963ce8 ; GameStrings.get_Instance
08bba198: adrp     x8, #0x9c43000
08bba19c: adrp     x9, #0x9c43000
08bba1a0: ldr      x8, [x8, #0x8a8]
08bba1a4: ldr      x9, [x9, #0x8a0]
08bba1a8: adrp     x10, #0x9b3f000
08bba1ac: ldr      x10, [x10, #0xee0]
08bba1b0: tst      w19, #1
08bba1b4: csel     x8, x8, x9, ne
08bba1b8: ldr      x19, [x8]
08bba1bc: ldr      x8, [x10]
08bba1c0: mov      x20, x0
08bba1c4: mov      w1, #1
08bba1c8: mov      x0, x8
08bba1cc: bl       #0x39d3534
08bba1d0: adrp     x8, #0x9b6d000
08bba1d4: ldr      x8, [x8, #0x10]
08bba1d8: mov      x21, x0
08bba1dc: add      x0, sp, #0xc
08bba1e0: mov      x2, xzr
08bba1e4: ldr      x1, [x8]
08bba1e8: bl       #0x5c6b7b4
08bba1ec: adrp     x8, #0x9b5d000
08bba1f0: ldr      x8, [x8, #0x1c8]
08bba1f4: mov      x1, x0
08bba1f8: mov      x2, xzr
08bba1fc: ldr      x8, [x8]
08bba200: mov      x0, x8
08bba204: bl       #0x5ab2818
08bba208: cbz      x21, #0x8bba25c
08bba20c: mov      x22, x0
08bba210: cbz      x0, #0x8bba228
08bba214: ldr      x8, [x21]
08bba218: mov      x0, x22
08bba21c: ldr      x1, [x8, #0x40]
08bba220: bl       #0x39d35c8
08bba224: cbz      x0, #0x8bba264
08bba228: ldr      w8, [x21, #0x18]
08bba22c: cbz      w8, #0x8bba260
08bba230: str      x22, [x21, #0x20]
08bba234: cbz      x20, #0x8bba25c
08bba238: mov      x0, x20
08bba23c: mov      x1, x19
08bba240: mov      x2, x21
08bba244: mov      x3, xzr
08bba248: bl       #0x69673dc ; GameStrings.Format
08bba24c: ldp      x20, x19, [sp, #0x20]
08bba250: ldp      x22, x21, [sp, #0x10]
08bba254: ldr      x30, [sp], #0x30
08bba258: ret      
08bba25c: bl       #0x39d36e4
08bba260: bl       #0x39d36ec
08bba264: bl       #0x39d3708
08bba268: mov      x1, xzr
08bba26c: bl       #0x39d35b4