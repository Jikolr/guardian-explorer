// Tilemaps.TilemapBinary.get_Name 0x7c898b8
07c898b8: stp      x30, x19, [sp, #-0x10]!
07c898bc: mov      x19, x0
07c898c0: mov      w0, #0x2d6
07c898c4: mov      x1, xzr
07c898c8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c898cc: tbz      w0, #0, #0x7c898f0
07c898d0: mov      w0, #0x2d6
07c898d4: mov      x1, xzr
07c898d8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c898dc: cbz      x0, #0x7c898fc
07c898e0: mov      x1, x19
07c898e4: mov      x2, xzr
07c898e8: ldp      x30, x19, [sp], #0x10
07c898ec: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
07c898f0: ldr      x0, [x19, #0x10]
07c898f4: ldp      x30, x19, [sp], #0x10
07c898f8: ret      
07c898fc: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_Name 0x7c89900
07c89900: str      x30, [sp, #-0x20]!
07c89904: stp      x20, x19, [sp, #0x10]
07c89908: mov      x19, x1
07c8990c: mov      x20, x0
07c89910: mov      w0, #0x2d7
07c89914: mov      x1, xzr
07c89918: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8991c: tbz      w0, #0, #0x7c89948
07c89920: mov      w0, #0x2d7
07c89924: mov      x1, xzr
07c89928: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8992c: cbz      x0, #0x7c89958
07c89930: mov      x1, x20
07c89934: mov      x2, x19
07c89938: ldp      x20, x19, [sp, #0x10]
07c8993c: mov      x3, xzr
07c89940: ldr      x30, [sp], #0x20
07c89944: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89948: str      x19, [x20, #0x10]
07c8994c: ldp      x20, x19, [sp, #0x10]
07c89950: ldr      x30, [sp], #0x20
07c89954: ret      
07c89958: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_Version 0x7c8995c
07c8995c: stp      x30, x19, [sp, #-0x10]!
07c89960: mov      x19, x0
07c89964: mov      w0, #0x2d8
07c89968: mov      x1, xzr
07c8996c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89970: tbz      w0, #0, #0x7c89994
07c89974: mov      w0, #0x2d8
07c89978: mov      x1, xzr
07c8997c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89980: cbz      x0, #0x7c899a0
07c89984: mov      x1, x19
07c89988: mov      x2, xzr
07c8998c: ldp      x30, x19, [sp], #0x10
07c89990: b        #0x86183f0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_214
07c89994: ldr      w0, [x19, #0x18]
07c89998: ldp      x30, x19, [sp], #0x10
07c8999c: ret      
07c899a0: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_Version 0x7c899a4
07c899a4: str      x30, [sp, #-0x20]!
07c899a8: stp      x20, x19, [sp, #0x10]
07c899ac: mov      w19, w1
07c899b0: mov      x20, x0
07c899b4: mov      w0, #0x2d9
07c899b8: mov      x1, xzr
07c899bc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c899c0: tbz      w0, #0, #0x7c899ec
07c899c4: mov      w0, #0x2d9
07c899c8: mov      x1, xzr
07c899cc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c899d0: cbz      x0, #0x7c899fc
07c899d4: mov      x1, x20
07c899d8: mov      w2, w19
07c899dc: ldp      x20, x19, [sp, #0x10]
07c899e0: mov      x3, xzr
07c899e4: ldr      x30, [sp], #0x20
07c899e8: b        #0x860d364 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_39
07c899ec: str      w19, [x20, #0x18]
07c899f0: ldp      x20, x19, [sp, #0x10]
07c899f4: ldr      x30, [sp], #0x20
07c899f8: ret      
07c899fc: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_PartitionSize 0x7c89a00
07c89a00: stp      x30, x19, [sp, #-0x10]!
07c89a04: mov      x19, x0
07c89a08: mov      w0, #0x2da
07c89a0c: mov      x1, xzr
07c89a10: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89a14: tbz      w0, #0, #0x7c89a38
07c89a18: mov      w0, #0x2da
07c89a1c: mov      x1, xzr
07c89a20: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89a24: cbz      x0, #0x7c89a44
07c89a28: mov      x1, x19
07c89a2c: mov      x2, xzr
07c89a30: ldp      x30, x19, [sp], #0x10
07c89a34: b        #0x86183f0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_214
07c89a38: ldr      w0, [x19, #0x1c]
07c89a3c: ldp      x30, x19, [sp], #0x10
07c89a40: ret      
07c89a44: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_PartitionSize 0x7c89a48
07c89a48: str      x30, [sp, #-0x20]!
07c89a4c: stp      x20, x19, [sp, #0x10]
07c89a50: mov      w19, w1
07c89a54: mov      x20, x0
07c89a58: mov      w0, #0x2db
07c89a5c: mov      x1, xzr
07c89a60: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89a64: tbz      w0, #0, #0x7c89a90
07c89a68: mov      w0, #0x2db
07c89a6c: mov      x1, xzr
07c89a70: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89a74: cbz      x0, #0x7c89aa0
07c89a78: mov      x1, x20
07c89a7c: mov      w2, w19
07c89a80: ldp      x20, x19, [sp, #0x10]
07c89a84: mov      x3, xzr
07c89a88: ldr      x30, [sp], #0x20
07c89a8c: b        #0x860d364 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_39
07c89a90: str      w19, [x20, #0x1c]
07c89a94: ldp      x20, x19, [sp, #0x10]
07c89a98: ldr      x30, [sp], #0x20
07c89a9c: ret      
07c89aa0: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_UnitSize 0x7c89aa4
07c89aa4: stp      x30, x19, [sp, #-0x10]!
07c89aa8: mov      x19, x0
07c89aac: mov      w0, #0x2dc
07c89ab0: mov      x1, xzr
07c89ab4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89ab8: tbz      w0, #0, #0x7c89adc
07c89abc: mov      w0, #0x2dc
07c89ac0: mov      x1, xzr
07c89ac4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89ac8: cbz      x0, #0x7c89aec
07c89acc: mov      x1, x19
07c89ad0: mov      x2, xzr
07c89ad4: bl       #0x861cb50 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_293
07c89ad8: b        #0x7c89ae4
07c89adc: ldp      s0, s1, [x19, #0x20]
07c89ae0: ldr      s2, [x19, #0x28]
07c89ae4: ldp      x30, x19, [sp], #0x10
07c89ae8: ret      
07c89aec: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_UnitSize 0x7c89af0
07c89af0: str      d10, [sp, #-0x30]!
07c89af4: stp      d9, d8, [sp, #0x10]
07c89af8: stp      x30, x19, [sp, #0x20]
07c89afc: mov      x19, x0
07c89b00: mov      w0, #0x2dd
07c89b04: mov      x1, xzr
07c89b08: mov      v8.16b, v2.16b
07c89b0c: mov      v9.16b, v1.16b
07c89b10: mov      v10.16b, v0.16b
07c89b14: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89b18: tbz      w0, #0, #0x7c89b50
07c89b1c: mov      w0, #0x2dd
07c89b20: mov      x1, xzr
07c89b24: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89b28: cbz      x0, #0x7c89b68
07c89b2c: mov      x1, x19
07c89b30: mov      v1.16b, v9.16b
07c89b34: mov      v2.16b, v8.16b
07c89b38: ldp      x30, x19, [sp, #0x20]
07c89b3c: ldp      d9, d8, [sp, #0x10]
07c89b40: mov      v0.16b, v10.16b
07c89b44: mov      x2, xzr
07c89b48: ldr      d10, [sp], #0x30
07c89b4c: b        #0x861da90 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_310
07c89b50: stp      s10, s9, [x19, #0x20]
07c89b54: str      s8, [x19, #0x28]
07c89b58: ldp      x30, x19, [sp, #0x20]
07c89b5c: ldp      d9, d8, [sp, #0x10]
07c89b60: ldr      d10, [sp], #0x30
07c89b64: ret      
07c89b68: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_Tilesets 0x7c89b6c
07c89b6c: stp      x30, x19, [sp, #-0x10]!
07c89b70: mov      x19, x0
07c89b74: mov      w0, #0x2de
07c89b78: mov      x1, xzr
07c89b7c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89b80: tbz      w0, #0, #0x7c89ba4
07c89b84: mov      w0, #0x2de
07c89b88: mov      x1, xzr
07c89b8c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89b90: cbz      x0, #0x7c89bb0
07c89b94: mov      x1, x19
07c89b98: mov      x2, xzr
07c89b9c: ldp      x30, x19, [sp], #0x10
07c89ba0: b        #0x861db9c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_311
07c89ba4: ldr      x0, [x19, #0x30]
07c89ba8: ldp      x30, x19, [sp], #0x10
07c89bac: ret      
07c89bb0: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_Tilesets 0x7c89bb4
07c89bb4: str      x30, [sp, #-0x20]!
07c89bb8: stp      x20, x19, [sp, #0x10]
07c89bbc: mov      x19, x1
07c89bc0: mov      x20, x0
07c89bc4: mov      w0, #0x2df
07c89bc8: mov      x1, xzr
07c89bcc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89bd0: tbz      w0, #0, #0x7c89bfc
07c89bd4: mov      w0, #0x2df
07c89bd8: mov      x1, xzr
07c89bdc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89be0: cbz      x0, #0x7c89c0c
07c89be4: mov      x1, x20
07c89be8: mov      x2, x19
07c89bec: ldp      x20, x19, [sp, #0x10]
07c89bf0: mov      x3, xzr
07c89bf4: ldr      x30, [sp], #0x20
07c89bf8: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89bfc: str      x19, [x20, #0x30]
07c89c00: ldp      x20, x19, [sp, #0x10]
07c89c04: ldr      x30, [sp], #0x20
07c89c08: ret      
07c89c0c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_HasDifficultyLevels 0x7c89c10
07c89c10: ldrb     w0, [x0, #0x40]
07c89c14: ret      

// Tilemaps.TilemapBinary.set_HasDifficultyLevels 0x7c89c18
07c89c18: and      w8, w1, #1
07c89c1c: strb     w8, [x0, #0x40]
07c89c20: ret      

// Tilemaps.TilemapBinary.get_UseWaterFoam 0x7c89c24
07c89c24: ldrb     w0, [x0, #0x41]
07c89c28: ret      

// Tilemaps.TilemapBinary.set_UseWaterFoam 0x7c89c2c
07c89c2c: and      w8, w1, #1
07c89c30: strb     w8, [x0, #0x41]
07c89c34: ret      

// Tilemaps.TilemapBinary.get_HandleNames 0x7c89c38
07c89c38: stp      x30, x19, [sp, #-0x10]!
07c89c3c: mov      x19, x0
07c89c40: mov      w0, #0x2e0
07c89c44: mov      x1, xzr
07c89c48: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89c4c: tbz      w0, #0, #0x7c89c70
07c89c50: mov      w0, #0x2e0
07c89c54: mov      x1, xzr
07c89c58: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89c5c: cbz      x0, #0x7c89c7c
07c89c60: mov      x1, x19
07c89c64: mov      x2, xzr
07c89c68: ldp      x30, x19, [sp], #0x10
07c89c6c: b        #0x861dc78 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_312
07c89c70: ldr      x0, [x19, #0x38]
07c89c74: ldp      x30, x19, [sp], #0x10
07c89c78: ret      
07c89c7c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_HandleNames 0x7c89c80
07c89c80: str      x30, [sp, #-0x20]!
07c89c84: stp      x20, x19, [sp, #0x10]
07c89c88: mov      x19, x1
07c89c8c: mov      x20, x0
07c89c90: mov      w0, #0x2e1
07c89c94: mov      x1, xzr
07c89c98: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89c9c: tbz      w0, #0, #0x7c89cc8
07c89ca0: mov      w0, #0x2e1
07c89ca4: mov      x1, xzr
07c89ca8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89cac: cbz      x0, #0x7c89cd8
07c89cb0: mov      x1, x20
07c89cb4: mov      x2, x19
07c89cb8: ldp      x20, x19, [sp, #0x10]
07c89cbc: mov      x3, xzr
07c89cc0: ldr      x30, [sp], #0x20
07c89cc4: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89cc8: str      x19, [x20, #0x38]
07c89ccc: ldp      x20, x19, [sp, #0x10]
07c89cd0: ldr      x30, [sp], #0x20
07c89cd4: ret      
07c89cd8: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_Layers 0x7c89cdc
07c89cdc: stp      x30, x19, [sp, #-0x10]!
07c89ce0: mov      x19, x0
07c89ce4: mov      w0, #0x2e2
07c89ce8: mov      x1, xzr
07c89cec: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89cf0: tbz      w0, #0, #0x7c89d14
07c89cf4: mov      w0, #0x2e2
07c89cf8: mov      x1, xzr
07c89cfc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89d00: cbz      x0, #0x7c89d20
07c89d04: mov      x1, x19
07c89d08: mov      x2, xzr
07c89d0c: ldp      x30, x19, [sp], #0x10
07c89d10: b        #0x861dd54 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_313
07c89d14: ldr      x0, [x19, #0x48]
07c89d18: ldp      x30, x19, [sp], #0x10
07c89d1c: ret      
07c89d20: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_Layers 0x7c89d24
07c89d24: str      x30, [sp, #-0x20]!
07c89d28: stp      x20, x19, [sp, #0x10]
07c89d2c: mov      x19, x1
07c89d30: mov      x20, x0
07c89d34: mov      w0, #0x2e3
07c89d38: mov      x1, xzr
07c89d3c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89d40: tbz      w0, #0, #0x7c89d6c
07c89d44: mov      w0, #0x2e3
07c89d48: mov      x1, xzr
07c89d4c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89d50: cbz      x0, #0x7c89d7c
07c89d54: mov      x1, x20
07c89d58: mov      x2, x19
07c89d5c: ldp      x20, x19, [sp, #0x10]
07c89d60: mov      x3, xzr
07c89d64: ldr      x30, [sp], #0x20
07c89d68: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89d6c: str      x19, [x20, #0x48]
07c89d70: ldp      x20, x19, [sp, #0x10]
07c89d74: ldr      x30, [sp], #0x20
07c89d78: ret      
07c89d7c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_Floors 0x7c89d80
07c89d80: stp      x30, x19, [sp, #-0x10]!
07c89d84: mov      x19, x0
07c89d88: mov      w0, #0x2e4
07c89d8c: mov      x1, xzr
07c89d90: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89d94: tbz      w0, #0, #0x7c89db8
07c89d98: mov      w0, #0x2e4
07c89d9c: mov      x1, xzr
07c89da0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89da4: cbz      x0, #0x7c89dc4
07c89da8: mov      x1, x19
07c89dac: mov      x2, xzr
07c89db0: ldp      x30, x19, [sp], #0x10
07c89db4: b        #0x861de30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_314
07c89db8: ldr      x0, [x19, #0x50]
07c89dbc: ldp      x30, x19, [sp], #0x10
07c89dc0: ret      
07c89dc4: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_Floors 0x7c89dc8
07c89dc8: str      x30, [sp, #-0x20]!
07c89dcc: stp      x20, x19, [sp, #0x10]
07c89dd0: mov      x19, x1
07c89dd4: mov      x20, x0
07c89dd8: mov      w0, #0x2e5
07c89ddc: mov      x1, xzr
07c89de0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89de4: tbz      w0, #0, #0x7c89e10
07c89de8: mov      w0, #0x2e5
07c89dec: mov      x1, xzr
07c89df0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89df4: cbz      x0, #0x7c89e20
07c89df8: mov      x1, x20
07c89dfc: mov      x2, x19
07c89e00: ldp      x20, x19, [sp, #0x10]
07c89e04: mov      x3, xzr
07c89e08: ldr      x30, [sp], #0x20
07c89e0c: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89e10: str      x19, [x20, #0x50]
07c89e14: ldp      x20, x19, [sp, #0x10]
07c89e18: ldr      x30, [sp], #0x20
07c89e1c: ret      
07c89e20: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_UpperFloors 0x7c89e24
07c89e24: stp      x30, x19, [sp, #-0x10]!
07c89e28: mov      x19, x0
07c89e2c: mov      w0, #0x2e6
07c89e30: mov      x1, xzr
07c89e34: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89e38: tbz      w0, #0, #0x7c89e5c
07c89e3c: mov      w0, #0x2e6
07c89e40: mov      x1, xzr
07c89e44: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89e48: cbz      x0, #0x7c89e68
07c89e4c: mov      x1, x19
07c89e50: mov      x2, xzr
07c89e54: ldp      x30, x19, [sp], #0x10
07c89e58: b        #0x861de30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_314
07c89e5c: ldr      x0, [x19, #0x58]
07c89e60: ldp      x30, x19, [sp], #0x10
07c89e64: ret      
07c89e68: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_UpperFloors 0x7c89e6c
07c89e6c: str      x30, [sp, #-0x20]!
07c89e70: stp      x20, x19, [sp, #0x10]
07c89e74: mov      x19, x1
07c89e78: mov      x20, x0
07c89e7c: mov      w0, #0x2e7
07c89e80: mov      x1, xzr
07c89e84: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89e88: tbz      w0, #0, #0x7c89eb4
07c89e8c: mov      w0, #0x2e7
07c89e90: mov      x1, xzr
07c89e94: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89e98: cbz      x0, #0x7c89ec4
07c89e9c: mov      x1, x20
07c89ea0: mov      x2, x19
07c89ea4: ldp      x20, x19, [sp, #0x10]
07c89ea8: mov      x3, xzr
07c89eac: ldr      x30, [sp], #0x20
07c89eb0: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89eb4: str      x19, [x20, #0x58]
07c89eb8: ldp      x20, x19, [sp, #0x10]
07c89ebc: ldr      x30, [sp], #0x20
07c89ec0: ret      
07c89ec4: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_MergedWalls 0x7c89ec8
07c89ec8: stp      x30, x19, [sp, #-0x10]!
07c89ecc: mov      x19, x0
07c89ed0: mov      w0, #0x2e8
07c89ed4: mov      x1, xzr
07c89ed8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89edc: tbz      w0, #0, #0x7c89f00
07c89ee0: mov      w0, #0x2e8
07c89ee4: mov      x1, xzr
07c89ee8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89eec: cbz      x0, #0x7c89f0c
07c89ef0: mov      x1, x19
07c89ef4: mov      x2, xzr
07c89ef8: ldp      x30, x19, [sp], #0x10
07c89efc: b        #0x861df0c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_315
07c89f00: ldr      x0, [x19, #0x60]
07c89f04: ldp      x30, x19, [sp], #0x10
07c89f08: ret      
07c89f0c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_MergedWalls 0x7c89f10
07c89f10: str      x30, [sp, #-0x20]!
07c89f14: stp      x20, x19, [sp, #0x10]
07c89f18: mov      x19, x1
07c89f1c: mov      x20, x0
07c89f20: mov      w0, #0x2e9
07c89f24: mov      x1, xzr
07c89f28: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89f2c: tbz      w0, #0, #0x7c89f58
07c89f30: mov      w0, #0x2e9
07c89f34: mov      x1, xzr
07c89f38: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89f3c: cbz      x0, #0x7c89f68
07c89f40: mov      x1, x20
07c89f44: mov      x2, x19
07c89f48: ldp      x20, x19, [sp, #0x10]
07c89f4c: mov      x3, xzr
07c89f50: ldr      x30, [sp], #0x20
07c89f54: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89f58: str      x19, [x20, #0x60]
07c89f5c: ldp      x20, x19, [sp, #0x10]
07c89f60: ldr      x30, [sp], #0x20
07c89f64: ret      
07c89f68: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_NonUnitSizedWalls 0x7c89f6c
07c89f6c: stp      x30, x19, [sp, #-0x10]!
07c89f70: mov      x19, x0
07c89f74: mov      w0, #0x2ea
07c89f78: mov      x1, xzr
07c89f7c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89f80: tbz      w0, #0, #0x7c89fa4
07c89f84: mov      w0, #0x2ea
07c89f88: mov      x1, xzr
07c89f8c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89f90: cbz      x0, #0x7c89fb0
07c89f94: mov      x1, x19
07c89f98: mov      x2, xzr
07c89f9c: ldp      x30, x19, [sp], #0x10
07c89fa0: b        #0x861dfe8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_316
07c89fa4: ldr      x0, [x19, #0x68]
07c89fa8: ldp      x30, x19, [sp], #0x10
07c89fac: ret      
07c89fb0: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_NonUnitSizedWalls 0x7c89fb4
07c89fb4: str      x30, [sp, #-0x20]!
07c89fb8: stp      x20, x19, [sp, #0x10]
07c89fbc: mov      x19, x1
07c89fc0: mov      x20, x0
07c89fc4: mov      w0, #0x2eb
07c89fc8: mov      x1, xzr
07c89fcc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c89fd0: tbz      w0, #0, #0x7c89ffc
07c89fd4: mov      w0, #0x2eb
07c89fd8: mov      x1, xzr
07c89fdc: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c89fe0: cbz      x0, #0x7c8a00c
07c89fe4: mov      x1, x20
07c89fe8: mov      x2, x19
07c89fec: ldp      x20, x19, [sp, #0x10]
07c89ff0: mov      x3, xzr
07c89ff4: ldr      x30, [sp], #0x20
07c89ff8: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c89ffc: str      x19, [x20, #0x68]
07c8a000: ldp      x20, x19, [sp, #0x10]
07c8a004: ldr      x30, [sp], #0x20
07c8a008: ret      
07c8a00c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_MergedUpperWalls 0x7c8a010
07c8a010: stp      x30, x19, [sp, #-0x10]!
07c8a014: mov      x19, x0
07c8a018: mov      w0, #0x2ec
07c8a01c: mov      x1, xzr
07c8a020: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a024: tbz      w0, #0, #0x7c8a048
07c8a028: mov      w0, #0x2ec
07c8a02c: mov      x1, xzr
07c8a030: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a034: cbz      x0, #0x7c8a054
07c8a038: mov      x1, x19
07c8a03c: mov      x2, xzr
07c8a040: ldp      x30, x19, [sp], #0x10
07c8a044: b        #0x861df0c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_315
07c8a048: ldr      x0, [x19, #0x70]
07c8a04c: ldp      x30, x19, [sp], #0x10
07c8a050: ret      
07c8a054: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_MergedUpperWalls 0x7c8a058
07c8a058: str      x30, [sp, #-0x20]!
07c8a05c: stp      x20, x19, [sp, #0x10]
07c8a060: mov      x19, x1
07c8a064: mov      x20, x0
07c8a068: mov      w0, #0x2ed
07c8a06c: mov      x1, xzr
07c8a070: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a074: tbz      w0, #0, #0x7c8a0a0
07c8a078: mov      w0, #0x2ed
07c8a07c: mov      x1, xzr
07c8a080: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a084: cbz      x0, #0x7c8a0b0
07c8a088: mov      x1, x20
07c8a08c: mov      x2, x19
07c8a090: ldp      x20, x19, [sp, #0x10]
07c8a094: mov      x3, xzr
07c8a098: ldr      x30, [sp], #0x20
07c8a09c: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c8a0a0: str      x19, [x20, #0x70]
07c8a0a4: ldp      x20, x19, [sp, #0x10]
07c8a0a8: ldr      x30, [sp], #0x20
07c8a0ac: ret      
07c8a0b0: bl       #0x39d36e4

// Tilemaps.TilemapBinary.get_NonUnitSizedUpperWalls 0x7c8a0b4
07c8a0b4: stp      x30, x19, [sp, #-0x10]!
07c8a0b8: mov      x19, x0
07c8a0bc: mov      w0, #0x2ee
07c8a0c0: mov      x1, xzr
07c8a0c4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a0c8: tbz      w0, #0, #0x7c8a0ec
07c8a0cc: mov      w0, #0x2ee
07c8a0d0: mov      x1, xzr
07c8a0d4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a0d8: cbz      x0, #0x7c8a0f8
07c8a0dc: mov      x1, x19
07c8a0e0: mov      x2, xzr
07c8a0e4: ldp      x30, x19, [sp], #0x10
07c8a0e8: b        #0x861dfe8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_316
07c8a0ec: ldr      x0, [x19, #0x78]
07c8a0f0: ldp      x30, x19, [sp], #0x10
07c8a0f4: ret      
07c8a0f8: bl       #0x39d36e4

// Tilemaps.TilemapBinary.set_NonUnitSizedUpperWalls 0x7c8a0fc
07c8a0fc: str      x30, [sp, #-0x20]!
07c8a100: stp      x20, x19, [sp, #0x10]
07c8a104: mov      x19, x1
07c8a108: mov      x20, x0
07c8a10c: mov      w0, #0x2ef
07c8a110: mov      x1, xzr
07c8a114: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a118: tbz      w0, #0, #0x7c8a144
07c8a11c: mov      w0, #0x2ef
07c8a120: mov      x1, xzr
07c8a124: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a128: cbz      x0, #0x7c8a154
07c8a12c: mov      x1, x20
07c8a130: mov      x2, x19
07c8a134: ldp      x20, x19, [sp, #0x10]
07c8a138: mov      x3, xzr
07c8a13c: ldr      x30, [sp], #0x20
07c8a140: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
07c8a144: str      x19, [x20, #0x78]
07c8a148: ldp      x20, x19, [sp, #0x10]
07c8a14c: ldr      x30, [sp], #0x20
07c8a150: ret      
07c8a154: bl       #0x39d36e4

// Tilemaps.TilemapBinary.GetTilemapPath 0x7c8a158
07c8a158: str      x30, [sp, #-0x40]!
07c8a15c: stp      x24, x23, [sp, #0x10]
07c8a160: stp      x22, x21, [sp, #0x20]
07c8a164: stp      x20, x19, [sp, #0x30]
07c8a168: adrp     x20, #0xa271000
07c8a16c: ldrb     w8, [x20, #0x984]
07c8a170: mov      x19, x0
07c8a174: tbnz     w8, #0, #0x7c8a1bc
07c8a178: adrp     x0, #0x9b3f000
07c8a17c: ldr      x0, [x0, #0xf98]
07c8a180: bl       #0x39d34bc
07c8a184: adrp     x0, #0x9b4b000
07c8a188: ldr      x0, [x0, #0x490]
07c8a18c: bl       #0x39d34bc
07c8a190: adrp     x0, #0x9b3f000
07c8a194: ldr      x0, [x0, #0xea8]
07c8a198: bl       #0x39d34bc
07c8a19c: adrp     x0, #0x9b4b000
07c8a1a0: ldr      x0, [x0, #0xc70]
07c8a1a4: bl       #0x39d34bc
07c8a1a8: adrp     x0, #0x9b7a000
07c8a1ac: ldr      x0, [x0, #0xb80]
07c8a1b0: bl       #0x39d34bc
07c8a1b4: mov      w8, #1
07c8a1b8: strb     w8, [x20, #0x984]
07c8a1bc: mov      w0, #0x2f0
07c8a1c0: mov      x1, xzr
07c8a1c4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a1c8: tbz      w0, #0, #0x7c8a1f8
07c8a1cc: mov      w0, #0x2f0
07c8a1d0: mov      x1, xzr
07c8a1d4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a1d8: cbz      x0, #0x7c8a338
07c8a1dc: mov      x1, x19
07c8a1e0: ldp      x20, x19, [sp, #0x30]
07c8a1e4: ldp      x22, x21, [sp, #0x20]
07c8a1e8: ldp      x24, x23, [sp, #0x10]
07c8a1ec: mov      x2, xzr
07c8a1f0: ldr      x30, [sp], #0x40
07c8a1f4: b        #0x860c428 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_22
07c8a1f8: adrp     x20, #0x9b4b000
07c8a1fc: ldr      x20, [x20, #0x490]
07c8a200: ldr      x0, [x20]
07c8a204: ldr      w8, [x0, #0xe0]
07c8a208: cbnz     w8, #0x7c8a210
07c8a20c: bl       #0x39d35c4
07c8a210: adrp     x21, #0xa25e000
07c8a214: ldrb     w8, [x21, #0xe8b]
07c8a218: cbnz     w8, #0x7c8a230
07c8a21c: adrp     x0, #0x9b4b000
07c8a220: ldr      x0, [x0, #0x490]
07c8a224: bl       #0x39d34bc
07c8a228: mov      w8, #1
07c8a22c: strb     w8, [x21, #0xe8b]
07c8a230: ldr      x0, [x20]
07c8a234: ldr      w8, [x0, #0xe0]
07c8a238: cbnz     w8, #0x7c8a244
07c8a23c: bl       #0x39d35c4
07c8a240: ldr      x0, [x20]
07c8a244: adrp     x22, #0x9b7a000
07c8a248: ldr      x8, [x0, #0xb8]
07c8a24c: ldr      x22, [x22, #0xb80]
07c8a250: mov      x0, x19
07c8a254: mov      x2, xzr
07c8a258: ldr      x20, [x8, #8]
07c8a25c: ldr      x1, [x22]
07c8a260: bl       #0x5ab2818
07c8a264: adrp     x23, #0x9b3f000
07c8a268: ldr      x23, [x23, #0xea8]
07c8a26c: mov      x21, x0
07c8a270: ldr      x8, [x23]
07c8a274: ldr      w9, [x8, #0xe0]
07c8a278: cbnz     w9, #0x7c8a284
07c8a27c: mov      x0, x8
07c8a280: bl       #0x39d35c4
07c8a284: adrp     x24, #0x9b4b000
07c8a288: ldr      x24, [x24, #0xc70]
07c8a28c: mov      x0, x20
07c8a290: mov      x2, x21
07c8a294: mov      x3, xzr
07c8a298: ldr      x1, [x24]
07c8a29c: bl       #0x5bd3afc
07c8a2a0: mov      x1, xzr
07c8a2a4: mov      x20, x0
07c8a2a8: bl       #0x5b94aec
07c8a2ac: tbz      w0, #0, #0x7c8a2c8
07c8a2b0: mov      x0, x20
07c8a2b4: ldp      x20, x19, [sp, #0x30]
07c8a2b8: ldp      x22, x21, [sp, #0x20]
07c8a2bc: ldp      x24, x23, [sp, #0x10]
07c8a2c0: ldr      x30, [sp], #0x40
07c8a2c4: ret      
07c8a2c8: adrp     x8, #0x9b3f000
07c8a2cc: ldr      x8, [x8, #0xf98]
07c8a2d0: ldr      x0, [x8]
07c8a2d4: ldr      w8, [x0, #0xe0]
07c8a2d8: cbnz     w8, #0x7c8a2e0
07c8a2dc: bl       #0x39d35c4
07c8a2e0: mov      x0, xzr
07c8a2e4: bl       #0x9480c24
07c8a2e8: ldr      x1, [x22]
07c8a2ec: mov      x20, x0
07c8a2f0: mov      x0, x19
07c8a2f4: mov      x2, xzr
07c8a2f8: bl       #0x5ab2818
07c8a2fc: ldr      x8, [x23]
07c8a300: mov      x19, x0
07c8a304: ldr      w9, [x8, #0xe0]
07c8a308: cbnz     w9, #0x7c8a314
07c8a30c: mov      x0, x8
07c8a310: bl       #0x39d35c4
07c8a314: ldr      x1, [x24]
07c8a318: mov      x0, x20
07c8a31c: mov      x2, x19
07c8a320: ldp      x20, x19, [sp, #0x30]
07c8a324: ldp      x22, x21, [sp, #0x20]
07c8a328: ldp      x24, x23, [sp, #0x10]
07c8a32c: mov      x3, xzr
07c8a330: ldr      x30, [sp], #0x40
07c8a334: b        #0x5bd3afc
07c8a338: bl       #0x39d36e4

// Tilemaps.TilemapBinary.ReadByTilemapName 0x7c8a33c
07c8a33c: stp      x30, x21, [sp, #-0x20]!
07c8a340: stp      x20, x19, [sp, #0x10]
07c8a344: adrp     x21, #0xa271000
07c8a348: ldrb     w8, [x21, #0x985]
07c8a34c: mov      x19, x1
07c8a350: mov      x20, x0
07c8a354: tbnz     w8, #0, #0x7c8a36c
07c8a358: adrp     x0, #0x9c0a000
07c8a35c: ldr      x0, [x0, #0x6b8]
07c8a360: bl       #0x39d34bc
07c8a364: mov      w8, #1
07c8a368: strb     w8, [x21, #0x985]
07c8a36c: mov      w0, #0x2f1
07c8a370: mov      x1, xzr
07c8a374: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a378: tbz      w0, #0, #0x7c8a3a4
07c8a37c: mov      w0, #0x2f1
07c8a380: mov      x1, xzr
07c8a384: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a388: cbz      x0, #0x7c8a3dc
07c8a38c: mov      x1, x20
07c8a390: mov      x2, x19
07c8a394: ldp      x20, x19, [sp, #0x10]
07c8a398: mov      x3, xzr
07c8a39c: ldp      x30, x21, [sp], #0x20
07c8a3a0: b        #0x861e1d0 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_318
07c8a3a4: adrp     x8, #0x9c0a000
07c8a3a8: ldr      x8, [x8, #0x6b8]
07c8a3ac: ldr      x0, [x8]
07c8a3b0: bl       #0x39d36d8
07c8a3b4: mov      w1, wzr
07c8a3b8: mov      x2, xzr
07c8a3bc: mov      x21, x0
07c8a3c0: bl       #0x7d48fcc ; <ReadByTilemapName>d__65..ctor
07c8a3c4: cbz      x21, #0x7c8a3dc
07c8a3c8: stp      x20, x19, [x21, #0x20]
07c8a3cc: ldp      x20, x19, [sp, #0x10]
07c8a3d0: mov      x0, x21
07c8a3d4: ldp      x30, x21, [sp], #0x20
07c8a3d8: ret      
07c8a3dc: bl       #0x39d36e4

// Tilemaps.TilemapBinary.ReadFromPath 0x7c8a3e0
07c8a3e0: stp      x30, x21, [sp, #-0x20]!
07c8a3e4: stp      x20, x19, [sp, #0x10]
07c8a3e8: adrp     x21, #0xa271000
07c8a3ec: ldrb     w8, [x21, #0x986]
07c8a3f0: mov      x20, x1
07c8a3f4: mov      x19, x0
07c8a3f8: tbnz     w8, #0, #0x7c8a428
07c8a3fc: adrp     x0, #0x9b40000
07c8a400: ldr      x0, [x0, #0x778]
07c8a404: bl       #0x39d34bc
07c8a408: adrp     x0, #0x9b3f000
07c8a40c: ldr      x0, [x0, #0xea8]
07c8a410: bl       #0x39d34bc
07c8a414: adrp     x0, #0x9ba5000
07c8a418: ldr      x0, [x0, #0x6a0]
07c8a41c: bl       #0x39d34bc
07c8a420: mov      w8, #1
07c8a424: strb     w8, [x21, #0x986]
07c8a428: mov      w0, #0x2fd
07c8a42c: mov      x1, xzr
07c8a430: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a434: tbz      w0, #0, #0x7c8a460
07c8a438: mov      w0, #0x2fd
07c8a43c: mov      x1, xzr
07c8a440: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a444: cbz      x0, #0x7c8a52c
07c8a448: mov      x1, x19
07c8a44c: mov      x2, x20
07c8a450: ldp      x20, x19, [sp, #0x10]
07c8a454: mov      x3, xzr
07c8a458: ldp      x30, x21, [sp], #0x20
07c8a45c: b        #0x861e2c8 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_319
07c8a460: cbz      x20, #0x7c8a49c
07c8a464: mov      x0, x20
07c8a468: mov      x1, xzr
07c8a46c: bl       #0x9728858
07c8a470: adrp     x8, #0x9b40000
07c8a474: ldr      x8, [x8, #0x778]
07c8a478: mov      x21, x0
07c8a47c: ldr      x8, [x8]
07c8a480: mov      x0, x8
07c8a484: bl       #0x39d36d8
07c8a488: mov      x1, x21
07c8a48c: mov      x2, xzr
07c8a490: mov      x20, x0
07c8a494: bl       #0x5b91cf4
07c8a498: b        #0x7c8a4ac
07c8a49c: mov      x0, x19
07c8a4a0: mov      x1, xzr
07c8a4a4: bl       #0x5b9deb4
07c8a4a8: mov      x20, x0
07c8a4ac: adrp     x8, #0x9b3f000
07c8a4b0: ldr      x8, [x8, #0xea8]
07c8a4b4: ldr      x0, [x8]
07c8a4b8: ldr      w8, [x0, #0xe0]
07c8a4bc: cbnz     w8, #0x7c8a4c4
07c8a4c0: bl       #0x39d35c4
07c8a4c4: mov      x0, x19
07c8a4c8: mov      x1, xzr
07c8a4cc: bl       #0x5bd2c9c
07c8a4d0: adrp     x8, #0x9ba5000
07c8a4d4: ldr      x8, [x8, #0x6a0]
07c8a4d8: mov      x19, x0
07c8a4dc: ldr      x8, [x8]
07c8a4e0: ldr      w9, [x8, #0xe0]
07c8a4e4: cbnz     w9, #0x7c8a4f0
07c8a4e8: mov      x0, x8
07c8a4ec: bl       #0x39d35c4
07c8a4f0: mov      x0, x19
07c8a4f4: mov      x1, x20
07c8a4f8: mov      w2, wzr
07c8a4fc: bl       #0x7c8a530 ; Tilemaps.TilemapBinary.ReadFromStream
07c8a500: cbz      x20, #0x7c8a52c
07c8a504: ldr      x8, [x20]
07c8a508: mov      x19, x0
07c8a50c: mov      x0, x20
07c8a510: ldr      x9, [x8, #0x268]
07c8a514: ldr      x1, [x8, #0x270]
07c8a518: blr      x9
07c8a51c: mov      x0, x19
07c8a520: ldp      x20, x19, [sp, #0x10]
07c8a524: ldp      x30, x21, [sp], #0x20
07c8a528: ret      
07c8a52c: bl       #0x39d36e4

// Tilemaps.TilemapBinary.ReadFromStream 0x7c8a530
07c8a530: sub      sp, sp, #0x130
07c8a534: stp      x29, x30, [sp, #0xd0]
07c8a538: stp      x28, x27, [sp, #0xe0]
07c8a53c: stp      x26, x25, [sp, #0xf0]
07c8a540: stp      x24, x23, [sp, #0x100]
07c8a544: stp      x22, x21, [sp, #0x110]
07c8a548: stp      x20, x19, [sp, #0x120]
07c8a54c: adrp     x19, #0xa271000
07c8a550: ldrb     w8, [x19, #0x987]
07c8a554: mov      w23, w2
07c8a558: mov      x22, x1
07c8a55c: mov      x24, x0
07c8a560: tbnz     w8, #0, #0x7c8a7a0
07c8a564: adrp     x0, #0x9b40000
07c8a568: ldr      x0, [x0, #0x4c8]
07c8a56c: bl       #0x39d34bc
07c8a570: adrp     x0, #0x9b40000
07c8a574: ldr      x0, [x0, #0x738]
07c8a578: bl       #0x39d34bc
07c8a57c: adrp     x0, #0x9b3f000
07c8a580: ldr      x0, [x0, #0x738]
07c8a584: bl       #0x39d34bc
07c8a588: adrp     x0, #0x9b4c000
07c8a58c: ldr      x0, [x0, #0x28]
07c8a590: bl       #0x39d34bc
07c8a594: adrp     x0, #0x9b45000
07c8a598: ldr      x0, [x0, #0x2b0]
07c8a59c: bl       #0x39d34bc
07c8a5a0: adrp     x0, #0x9b4b000
07c8a5a4: ldr      x0, [x0, #0xbb0]
07c8a5a8: bl       #0x39d34bc
07c8a5ac: adrp     x0, #0x9c0a000
07c8a5b0: ldr      x0, [x0, #0x6c0]
07c8a5b4: bl       #0x39d34bc
07c8a5b8: adrp     x0, #0x9c0a000
07c8a5bc: ldr      x0, [x0, #0x6c8]
07c8a5c0: bl       #0x39d34bc
07c8a5c4: adrp     x0, #0x9c0a000
07c8a5c8: ldr      x0, [x0, #0x6d0]
07c8a5cc: bl       #0x39d34bc
07c8a5d0: adrp     x0, #0x9b3f000
07c8a5d4: ldr      x0, [x0, #0xed8]
07c8a5d8: bl       #0x39d34bc
07c8a5dc: adrp     x0, #0x9b40000
07c8a5e0: ldr      x0, [x0, #0xd78]
07c8a5e4: bl       #0x39d34bc
07c8a5e8: adrp     x0, #0x9c0a000
07c8a5ec: ldr      x0, [x0, #0x6d8]
07c8a5f0: bl       #0x39d34bc
07c8a5f4: adrp     x0, #0x9c0a000
07c8a5f8: ldr      x0, [x0, #0x6e0]
07c8a5fc: bl       #0x39d34bc
07c8a600: adrp     x0, #0x9bee000
07c8a604: ldr      x0, [x0, #0xcb8]
07c8a608: bl       #0x39d34bc
07c8a60c: adrp     x0, #0x9c0a000
07c8a610: ldr      x0, [x0, #0x6e8]
07c8a614: bl       #0x39d34bc
07c8a618: adrp     x0, #0x9b40000
07c8a61c: ldr      x0, [x0, #0x668]
07c8a620: bl       #0x39d34bc
07c8a624: adrp     x0, #0x9c0a000
07c8a628: ldr      x0, [x0, #0x6f0]
07c8a62c: bl       #0x39d34bc
07c8a630: adrp     x0, #0x9b61000
07c8a634: ldr      x0, [x0, #0xb0]
07c8a638: bl       #0x39d34bc
07c8a63c: adrp     x0, #0x9c0a000
07c8a640: ldr      x0, [x0, #0x6f8]
07c8a644: bl       #0x39d34bc
07c8a648: adrp     x0, #0x9c0a000
07c8a64c: ldr      x0, [x0, #0x700]
07c8a650: bl       #0x39d34bc
07c8a654: adrp     x0, #0x9c0a000
07c8a658: ldr      x0, [x0, #0x708]
07c8a65c: bl       #0x39d34bc
07c8a660: adrp     x0, #0x9c0a000
07c8a664: ldr      x0, [x0, #0x710]
07c8a668: bl       #0x39d34bc
07c8a66c: adrp     x0, #0x9c0a000
07c8a670: ldr      x0, [x0, #0x718]
07c8a674: bl       #0x39d34bc
07c8a678: adrp     x0, #0x9c0a000
07c8a67c: ldr      x0, [x0, #0x720]
07c8a680: bl       #0x39d34bc
07c8a684: adrp     x0, #0x9c0a000
07c8a688: ldr      x0, [x0, #0x728]
07c8a68c: bl       #0x39d34bc
07c8a690: adrp     x0, #0x9c0a000
07c8a694: ldr      x0, [x0, #0x730]
07c8a698: bl       #0x39d34bc
07c8a69c: adrp     x0, #0x9c0a000
07c8a6a0: ldr      x0, [x0, #0x738]
07c8a6a4: bl       #0x39d34bc
07c8a6a8: adrp     x0, #0x9bee000
07c8a6ac: ldr      x0, [x0, #0xcc8]
07c8a6b0: bl       #0x39d34bc
07c8a6b4: adrp     x0, #0x9b40000
07c8a6b8: ldr      x0, [x0, #0x6c0]
07c8a6bc: bl       #0x39d34bc
07c8a6c0: adrp     x0, #0x9b40000
07c8a6c4: ldr      x0, [x0, #0x4d8]
07c8a6c8: bl       #0x39d34bc
07c8a6cc: adrp     x0, #0x9b4c000
07c8a6d0: ldr      x0, [x0, #0x30]
07c8a6d4: bl       #0x39d34bc
07c8a6d8: adrp     x0, #0x9b4c000
07c8a6dc: ldr      x0, [x0, #0x38]
07c8a6e0: bl       #0x39d34bc
07c8a6e4: adrp     x0, #0x9c0a000
07c8a6e8: ldr      x0, [x0, #0x740]
07c8a6ec: bl       #0x39d34bc
07c8a6f0: adrp     x0, #0x9c0a000
07c8a6f4: ldr      x0, [x0, #0x748]
07c8a6f8: bl       #0x39d34bc
07c8a6fc: adrp     x0, #0x9c0a000
07c8a700: ldr      x0, [x0, #0x750]
07c8a704: bl       #0x39d34bc
07c8a708: adrp     x0, #0x9c0a000
07c8a70c: ldr      x0, [x0, #0x758]
07c8a710: bl       #0x39d34bc
07c8a714: adrp     x0, #0x9c0a000
07c8a718: ldr      x0, [x0, #0x760]
07c8a71c: bl       #0x39d34bc
07c8a720: adrp     x0, #0x9c0a000
07c8a724: ldr      x0, [x0, #0x768]
07c8a728: bl       #0x39d34bc
07c8a72c: adrp     x0, #0x9c0a000
07c8a730: ldr      x0, [x0, #0x770]
07c8a734: bl       #0x39d34bc
07c8a738: adrp     x0, #0x9c0a000
07c8a73c: ldr      x0, [x0, #0x778]
07c8a740: bl       #0x39d34bc
07c8a744: adrp     x0, #0x9ba5000
07c8a748: ldr      x0, [x0, #0x6a0]
07c8a74c: bl       #0x39d34bc
07c8a750: adrp     x0, #0x9b3f000
07c8a754: ldr      x0, [x0, #0x9c8]
07c8a758: bl       #0x39d34bc
07c8a75c: adrp     x0, #0x9b4c000
07c8a760: ldr      x0, [x0, #0x40]
07c8a764: bl       #0x39d34bc
07c8a768: adrp     x0, #0x9c0a000
07c8a76c: ldr      x0, [x0, #0x780]
07c8a770: bl       #0x39d34bc
07c8a774: adrp     x0, #0x9c0a000
07c8a778: ldr      x0, [x0, #0x788]
07c8a77c: bl       #0x39d34bc
07c8a780: adrp     x0, #0x9c0a000
07c8a784: ldr      x0, [x0, #0x790]
07c8a788: bl       #0x39d34bc
07c8a78c: adrp     x0, #0x9c0a000
07c8a790: ldr      x0, [x0, #0x798]
07c8a794: bl       #0x39d34bc
07c8a798: mov      w8, #1
07c8a79c: strb     w8, [x19, #0x987]
07c8a7a0: mov      w0, #0x2f7
07c8a7a4: mov      x1, xzr
07c8a7a8: stp      xzr, xzr, [sp, #0x90]
07c8a7ac: stp      xzr, xzr, [sp, #0x80]
07c8a7b0: stp      xzr, xzr, [sp, #0x70]
07c8a7b4: stp      xzr, xzr, [sp, #0x60]
07c8a7b8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
07c8a7bc: tbz      w0, #0, #0x7c8a7ec
07c8a7c0: mov      w0, #0x2f7
07c8a7c4: mov      x1, xzr
07c8a7c8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
07c8a7cc: cbz      x0, #0x7c8c134
07c8a7d0: and      w3, w23, #1
07c8a7d4: mov      x1, x24
07c8a7d8: mov      x2, x22
07c8a7dc: mov      x4, xzr
07c8a7e0: bl       #0x861e0c4 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_317
07c8a7e4: mov      x28, x0
07c8a7e8: b        #0x7c8ad68
07c8a7ec: adrp     x8, #0x9b40000
07c8a7f0: ldr      x8, [x8, #0x738]
07c8a7f4: ldr      x0, [x8]
07c8a7f8: bl       #0x39d36d8
07c8a7fc: mov      x1, x22
07c8a800: mov      x2, xzr
07c8a804: mov      x21, x0
07c8a808: bl       #0x5bc96a4
07c8a80c: adrp     x26, #0x9ba5000
07c8a810: ldr      x26, [x26, #0x6a0]
07c8a814: ldr      x0, [x26]
07c8a818: bl       #0x39d36d8
07c8a81c: mov      x25, x0
07c8a820: bl       #0x7c8c498 ; Tilemaps.TilemapBinary..ctor
07c8a824: cbz      x25, #0x7c8c134
07c8a828: str      x24, [x25, #0x10]
07c8a82c: cbz      x21, #0x7c8c134
07c8a830: ldr      x8, [x21]
07c8a834: mov      w1, #4
07c8a838: mov      x0, x21
07c8a83c: ldr      x9, [x8, #0x2d8]
07c8a840: ldr      x2, [x8, #0x2e0]
07c8a844: blr      x9
07c8a848: cbz      x0, #0x7c8c134
07c8a84c: ldr      w8, [x0, #0x18]
07c8a850: cmp      w8, #4
07c8a854: b.ne     #0x7c8a930
07c8a858: ldrb     w8, [x0, #0x20]
07c8a85c: cmp      w8, #0x4b
07c8a860: b.ne     #0x7c8a930
07c8a864: ldrb     w8, [x0, #0x21]
07c8a868: cmp      w8, #0x4f
07c8a86c: b.ne     #0x7c8a930
07c8a870: ldrb     w8, [x0, #0x22]
07c8a874: cmp      w8, #0x4e
07c8a878: b.ne     #0x7c8a930
07c8a87c: ldrb     w8, [x0, #0x23]
07c8a880: cmp      w8, #0x47
07c8a884: b.ne     #0x7c8a930
07c8a888: ldr      x8, [x21]
07c8a88c: mov      x0, x21
07c8a890: ldr      x9, [x8, #0x238]
07c8a894: ldr      x1, [x8, #0x240]
07c8a898: blr      x9
07c8a89c: str      w0, [x25, #0x18]
07c8a8a0: ldr      x8, [x21]
07c8a8a4: mov      x0, x21
07c8a8a8: ldr      x9, [x8, #0x238]
07c8a8ac: ldr      x1, [x8, #0x240]
07c8a8b0: blr      x9
07c8a8b4: str      w0, [x25, #0x1c]
07c8a8b8: mov      x0, x21
07c8a8bc: mov      x1, xzr
07c8a8c0: bl       #0x695a260 ; BinaryReaderAndWriterExtensions.ReadVector3
07c8a8c4: ldr      w8, [x25, #0x18]
07c8a8c8: stp      s0, s1, [x25, #0x20]
07c8a8cc: str      s2, [x25, #0x28]
07c8a8d0: cmp      w8, #0xb
07c8a8d4: b.ge     #0x7c8ad8c
07c8a8d8: adrp     x20, #0x9b40000
07c8a8dc: ldr      x20, [x20, #0xd78]
07c8a8e0: add      x1, sp, #0xa8
07c8a8e4: str      w8, [sp, #0xa8]
07c8a8e8: ldr      x0, [x20]
07c8a8ec: bl       #0x39d35cc
07c8a8f0: mov      x19, x0
07c8a8f4: ldr      x0, [x20]
07c8a8f8: mov      w8, #0x10
07c8a8fc: add      x1, sp, #0xa0
07c8a900: str      w8, [sp, #0xa0]
07c8a904: bl       #0x39d35cc
07c8a908: adrp     x8, #0x9c0a000
07c8a90c: ldr      x8, [x8, #0x790]
07c8a910: mov      x3, x0
07c8a914: mov      x1, x24
07c8a918: mov      x2, x19
07c8a91c: ldr      x8, [x8]
07c8a920: mov      x4, xzr
07c8a924: mov      x0, x8
07c8a928: bl       #0x5abf6f0
07c8a92c: b        #0x7c8a94c
07c8a930: tbz      w23, #0, #0x7c8a980
07c8a934: adrp     x8, #0x9c0a000
07c8a938: ldr      x8, [x8, #0x780]
07c8a93c: mov      x1, x24
07c8a940: mov      x2, xzr
07c8a944: ldr      x0, [x8]
07c8a948: bl       #0x5ab2818
07c8a94c: adrp     x8, #0x9b45000
07c8a950: ldr      x8, [x8, #0x2b0]
07c8a954: mov      x19, x0
07c8a958: ldr      x8, [x8]
07c8a95c: ldr      w9, [x8, #0xe0]
07c8a960: cbnz     w9, #0x7c8a96c
07c8a964: mov      x0, x8
07c8a968: bl       #0x39d35c4
07c8a96c: mov      x0, x19
07c8a970: mov      x1, xzr
07c8a974: bl       #0x3c4dd3c
07c8a978: mov      x28, xzr
07c8a97c: b        #0x7c8ad68
07c8a980: cbz      x22, #0x7c8c134
07c8a984: ldr      x8, [x22]
07c8a988: mov      x0, x22
07c8a98c: mov      x1, xzr
07c8a990: ldr      x9, [x8, #0x208]
07c8a994: ldr      x2, [x8, #0x210]
07c8a998: blr      x9
07c8a99c: adrp     x8, #0x9b4c000
07c8a9a0: ldr      x8, [x8, #0x38]
07c8a9a4: ldr      x0, [x8]
07c8a9a8: bl       #0x39d36d8
07c8a9ac: mov      x1, xzr
07c8a9b0: mov      x20, x0
07c8a9b4: bl       #0x5b0679c
07c8a9b8: mov      x0, xzr
07c8a9bc: bl       #0x5adc15c
07c8a9c0: adrp     x8, #0x9b4c000
07c8a9c4: ldr      x8, [x8, #0x40]
07c8a9c8: mov      x19, x0
07c8a9cc: ldr      x0, [x8]
07c8a9d0: mov      x1, x24
07c8a9d4: mov      x2, xzr
07c8a9d8: bl       #0x5ab2818
07c8a9dc: mov      x1, x0
07c8a9e0: cbz      x19, #0x7c8c140
07c8a9e4: ldr      x8, [x19]
07c8a9e8: ldr      x9, [x8, #0x268]
07c8a9ec: ldr      x2, [x8, #0x270]
07c8a9f0: mov      x0, x19
07c8a9f4: blr      x9
07c8a9f8: mov      x1, x0
07c8a9fc: cbz      x20, #0x7c8c144
07c8aa00: mov      x0, x20
07c8aa04: mov      x2, xzr
07c8aa08: bl       #0x5aee744
07c8aa0c: mov      x23, x0
07c8aa10: mov      x21, xzr
07c8aa14: mov      w19, #6
07c8aa18: adrp     x10, #0x9b3f000
07c8aa1c: ldr      x8, [x20]
07c8aa20: ldr      x10, [x10, #0xed8]
07c8aa24: ldrh     w9, [x8, #0x12e]
07c8aa28: ldr      x1, [x10]
07c8aa2c: cbz      x9, #0x7c8aa50
07c8aa30: ldr      x10, [x8, #0xb0]
07c8aa34: add      x10, x10, #8
07c8aa38: ldur     x11, [x10, #-8]
07c8aa3c: cmp      x11, x1
07c8aa40: b.eq     #0x7c8aa60
07c8aa44: subs     x9, x9, #1
07c8aa48: add      x10, x10, #0x10
07c8aa4c: b.ne     #0x7c8aa38
07c8aa50: mov      x0, x20
07c8aa54: mov      w2, wzr
07c8aa58: bl       #0x39a94f0
07c8aa5c: b        #0x7c8aa6c
07c8aa60: ldrsw    x9, [x10]
07c8aa64: add      x8, x8, x9, lsl #4
07c8aa68: add      x0, x8, #0x138
07c8aa6c: ldp      x8, x1, [x0]
07c8aa70: mov      x0, x20
07c8aa74: blr      x8
07c8aa78: cbnz     x21, #0x7c8c138
07c8aa7c: cmp      w19, #6
07c8aa80: b.eq     #0x7c8aa88
07c8aa84: cbnz     w19, #0x7c8ad68
07c8aa88: adrp     x8, #0x9b4c000
07c8aa8c: ldr      x8, [x8, #0x30]
07c8aa90: ldr      x0, [x8]
07c8aa94: bl       #0x39d36d8
07c8aa98: mov      x1, xzr
07c8aa9c: mov      x21, x0
07c8aaa0: bl       #0x5afa4b4
07c8aaa4: cbz      x21, #0x7c8c148
07c8aaa8: ldr      x8, [x21]
07c8aaac: ldr      x9, [x8, #0x248]
07c8aab0: ldr      x2, [x8, #0x250]
07c8aab4: mov      w1, #0x100
07c8aab8: mov      x0, x21
07c8aabc: blr      x9
07c8aac0: ldr      x8, [x21]
07c8aac4: ldp      x9, x2, [x8, #0x1a8]
07c8aac8: mov      w1, #0x80
07c8aacc: mov      x0, x21
07c8aad0: blr      x9
07c8aad4: ldr      x8, [x21]
07c8aad8: ldr      x9, [x8, #0x268]
07c8aadc: ldr      x2, [x8, #0x270]
07c8aae0: mov      w1, #1
07c8aae4: mov      x0, x21
07c8aae8: blr      x9
07c8aaec: ldr      x8, [x21]
07c8aaf0: ldr      x9, [x8, #0x288]
07c8aaf4: ldr      x2, [x8, #0x290]
07c8aaf8: mov      w1, #2
07c8aafc: mov      x0, x21
07c8ab00: blr      x9
07c8ab04: ldr      x8, [x21]
07c8ab08: ldr      x9, [x8, #0x208]
07c8ab0c: ldr      x2, [x8, #0x210]
07c8ab10: mov      x0, x21
07c8ab14: mov      x1, x23
07c8ab18: blr      x9
07c8ab1c: ldr      x0, [x26]
07c8ab20: ldr      w8, [x0, #0xe0]
07c8ab24: cbnz     w8, #0x7c8ab2c
07c8ab28: bl       #0x39d35c4
07c8ab2c: ldr      x8, [x26]
07c8ab30: ldr      x9, [x21]
07c8ab34: ldr      x8, [x8, #0xb8]
07c8ab38: ldr      x1, [x8, #0x10]
07c8ab3c: ldp      x8, x2, [x9, #0x1e8]
07c8ab40: mov      x0, x21
07c8ab44: blr      x8
07c8ab48: ldr      x8, [x21]
07c8ab4c: ldp      x9, x1, [x8, #0x1f8]
07c8ab50: mov      x0, x21
07c8ab54: blr      x9
07c8ab58: ldr      x8, [x21]
07c8ab5c: mov      x19, x0
07c8ab60: ldp      x9, x1, [x8, #0x1d8]
07c8ab64: mov      x0, x21
07c8ab68: blr      x9
07c8ab6c: ldr      x8, [x21]
07c8ab70: mov      x2, x0
07c8ab74: ldr      x9, [x8, #0x2c8]
07c8ab78: ldr      x3, [x8, #0x2d0]
07c8ab7c: mov      x0, x21
07c8ab80: mov      x1, x19
07c8ab84: blr      x9
07c8ab88: adrp     x8, #0x9b4c000
07c8ab8c: ldr      x8, [x8, #0x28]
07c8ab90: mov      x19, x0
07c8ab94: ldr      x0, [x8]
07c8ab98: bl       #0x39d36d8
07c8ab9c: mov      x23, x0
07c8aba0: mov      x1, x22
07c8aba4: mov      x2, x19
07c8aba8: mov      w3, wzr
07c8abac: mov      x4, xzr
07c8abb0: bl       #0x5ae9d78
07c8abb4: adrp     x8, #0x9b4b000
07c8abb8: ldr      x8, [x8, #0xbb0]
07c8abbc: ldr      x0, [x8]
07c8abc0: bl       #0x39d36d8
07c8abc4: mov      x25, x0
07c8abc8: mov      x1, x23
07c8abcc: mov      w2, wzr
07c8abd0: mov      x3, xzr
07c8abd4: bl       #0x91550e0
07c8abd8: ldr      x0, [x26]
07c8abdc: ldr      w8, [x0, #0xe0]
07c8abe0: cbnz     w8, #0x7c8abe8
07c8abe4: bl       #0x39d35c4
07c8abe8: mov      w2, #1
07c8abec: mov      x0, x24
07c8abf0: mov      x1, x25
07c8abf4: bl       #0x7c8a530 ; Tilemaps.TilemapBinary.ReadFromStream
07c8abf8: mov      x28, x0
07c8abfc: mov      x26, xzr
07c8ac00: mov      w20, wzr
07c8ac04: mov      w19, #7
07c8ac08: cbz      x25, #0x7c8ac6c
07c8ac0c: adrp     x10, #0x9b3f000
07c8ac10: ldr      x8, [x25]
07c8ac14: ldr      x10, [x10, #0xed8]
07c8ac18: ldrh     w9, [x8, #0x12e]
07c8ac1c: ldr      x1, [x10]
07c8ac20: cbz      x9, #0x7c8ac44
07c8ac24: ldr      x10, [x8, #0xb0]
07c8ac28: add      x10, x10, #8
07c8ac2c: ldur     x11, [x10, #-8]
07c8ac30: cmp      x11, x1
07c8ac34: b.eq     #0x7c8ac54
07c8ac38: subs     x9, x9, #1
07c8ac3c: add      x10, x10, #0x10
07c8ac40: b.ne     #0x7c8ac2c
07c8ac44: mov      x0, x25
07c8ac48: mov      w2, wzr
07c8ac4c: bl       #0x39a94f0
07c8ac50: b        #0x7c8ac60
07c8ac54: ldrsw    x9, [x10]
07c8ac58: add      x8, x8, x9, lsl #4
07c8ac5c: add      x0, x8, #0x138
07c8ac60: ldp      x8, x1, [x0]
07c8ac64: mov      x0, x25
07c8ac68: blr      x8
07c8ac6c: cbnz     x26, #0x7c8c15c
07c8ac70: mov      x25, xzr
07c8ac74: mov      x22, xzr
07c8ac78: tbz      w20, #0, #0x7c8ac84
07c8ac7c: mov      w19, wzr
07c8ac80: mov      x22, x25
07c8ac84: cbz      x23, #0x7c8ace8
07c8ac88: adrp     x10, #0x9b3f000
07c8ac8c: ldr      x8, [x23]
07c8ac90: ldr      x10, [x10, #0xed8]
07c8ac94: ldrh     w9, [x8, #0x12e]
07c8ac98: ldr      x1, [x10]
07c8ac9c: cbz      x9, #0x7c8acc0
07c8aca0: ldr      x10, [x8, #0xb0]
07c8aca4: add      x10, x10, #8
07c8aca8: ldur     x11, [x10, #-8]
07c8acac: cmp      x11, x1
07c8acb0: b.eq     #0x7c8acd0
07c8acb4: subs     x9, x9, #1
07c8acb8: add      x10, x10, #0x10
07c8acbc: b.ne     #0x7c8aca8
07c8acc0: mov      x0, x23
07c8acc4: mov      w2, wzr
07c8acc8: bl       #0x39a94f0
07c8accc: b        #0x7c8acdc
07c8acd0: ldrsw    x9, [x10]
07c8acd4: add      x8, x8, x9, lsl #4
07c8acd8: add      x0, x8, #0x138
07c8acdc: ldp      x8, x1, [x0]
07c8ace0: mov      x0, x23
07c8ace4: blr      x8
07c8ace8: cbnz     x22, #0x7c8c154
07c8acec: mov      x23, xzr
07c8acf0: cbnz     w19, #0x7c8acfc
07c8acf4: mov      w19, wzr
07c8acf8: mov      x23, x22
07c8acfc: cbz      x21, #0x7c8ad60
07c8ad00: adrp     x10, #0x9b3f000
07c8ad04: ldr      x8, [x21]
07c8ad08: ldr      x10, [x10, #0xed8]
07c8ad0c: ldrh     w9, [x8, #0x12e]
07c8ad10: ldr      x1, [x10]
07c8ad14: cbz      x9, #0x7c8ad38
07c8ad18: ldr      x10, [x8, #0xb0]
07c8ad1c: add      x10, x10, #8
07c8ad20: ldur     x11, [x10, #-8]
07c8ad24: cmp      x11, x1
07c8ad28: b.eq     #0x7c8ad48
07c8ad2c: subs     x9, x9, #1
07c8ad30: add      x10, x10, #0x10
07c8ad34: b.ne     #0x7c8ad20
07c8ad38: mov      x0, x21
07c8ad3c: mov      w2, wzr
07c8ad40: bl       #0x39a94f0
07c8ad44: b        #0x7c8ad54
07c8ad48: ldrsw    x9, [x10]
07c8ad4c: add      x8, x8, x9, lsl #4
07c8ad50: add      x0, x8, #0x138
07c8ad54: ldp      x8, x1, [x0]
07c8ad58: mov      x0, x21
07c8ad5c: blr      x8
07c8ad60: cbnz     x23, #0x7c8c14c
07c8ad64: cbz      w19, #0x7c8a934
07c8ad68: mov      x0, x28
07c8ad6c: ldp      x20, x19, [sp, #0x120]
07c8ad70: ldp      x22, x21, [sp, #0x110]
07c8ad74: ldp      x24, x23, [sp, #0x100]
07c8ad78: ldp      x26, x25, [sp, #0xf0]
07c8ad7c: ldp      x28, x27, [sp, #0xe0]
07c8ad80: ldp      x29, x30, [sp, #0xd0]
07c8ad84: add      sp, sp, #0x130
07c8ad88: ret      
07c8ad8c: cmp      w8, #0xf
07c8ad90: b.le     #0x7c8ada0
07c8ad94: cmp      w8, #0x10
07c8ad98: b.ne     #0x7c8a8d8
07c8ad9c: b        #0x7c8ae20
07c8ada0: adrp     x20, #0x9b40000
07c8ada4: ldr      x20, [x20, #0xd78]
07c8ada8: add      x1, sp, #0xa8
07c8adac: str      w8, [sp, #0xa8]
07c8adb0: ldr      x0, [x20]
07c8adb4: bl       #0x39d35cc
07c8adb8: mov      x19, x0
07c8adbc: ldr      x0, [x20]
07c8adc0: mov      w8, #0x10
07c8adc4: add      x1, sp, #0xa0
07c8adc8: str      w8, [sp, #0xa0]
07c8adcc: bl       #0x39d35cc
07c8add0: adrp     x8, #0x9c0a000
07c8add4: ldr      x8, [x8, #0x798]
07c8add8: mov      x3, x0
07c8addc: mov      x1, x24
07c8ade0: mov      x2, x19
07c8ade4: ldr      x8, [x8]
07c8ade8: mov      x4, xzr
07c8adec: mov      x0, x8
07c8adf0: bl       #0x5abf6f0
07c8adf4: adrp     x8, #0x9b45000
07c8adf8: ldr      x8, [x8, #0x2b0]
07c8adfc: mov      x19, x0
07c8ae00: ldr      x8, [x8]
07c8ae04: ldr      w9, [x8, #0xe0]
07c8ae08: cbnz     w9, #0x7c8ae14
07c8ae0c: mov      x0, x8
07c8ae10: bl       #0x39d35c4
07c8ae14: mov      x0, x19
07c8ae18: mov      x1, xzr
07c8ae1c: bl       #0x3c4da4c
07c8ae20: ldr      x8, [x21]
07c8ae24: mov      x0, x21
07c8ae28: str      x24, [sp, #0x10]
07c8ae2c: ldr      x9, [x8, #0x238]
07c8ae30: ldr      x1, [x8, #0x240]
07c8ae34: blr      x9
07c8ae38: adrp     x8, #0x9c0a000
07c8ae3c: ldr      x8, [x8, #0x738]
07c8ae40: mov      w22, w0
07c8ae44: ldr      x8, [x8]
07c8ae48: mov      x0, x8
07c8ae4c: bl       #0x39d36d8
07c8ae50: adrp     x8, #0x9c0a000
07c8ae54: ldr      x8, [x8, #0x710]
07c8ae58: mov      w1, w22
07c8ae5c: mov      x19, x0
07c8ae60: ldr      x2, [x8]
07c8ae64: bl       #0x481dab0
07c8ae68: cmp      w22, #1
07c8ae6c: str      x25, [sp, #0x38]
07c8ae70: str      x19, [x25, #0x30]
07c8ae74: b.lt     #0x7c8afd0
07c8ae78: adrp     x20, #0x9b40000
07c8ae7c: adrp     x26, #0x9b61000
07c8ae80: adrp     x27, #0x9b40000
07c8ae84: adrp     x28, #0x9c0a000
07c8ae88: ldr      x20, [x20, #0x6c0]
07c8ae8c: ldr      x26, [x26, #0xb0]
07c8ae90: ldr      x27, [x27, #0x668]
07c8ae94: ldr      x28, [x28, #0x6d8]
07c8ae98: mov      w19, wzr
07c8ae9c: ldr      x8, [x21]
07c8aea0: mov      x0, x21
07c8aea4: ldr      x9, [x8, #0x2a8]
07c8aea8: ldr      x1, [x8, #0x2b0]
07c8aeac: blr      x9
07c8aeb0: ldr      x8, [x21]
07c8aeb4: mov      x23, x0
07c8aeb8: mov      x0, x21
07c8aebc: ldr      x9, [x8, #0x238]
07c8aec0: ldr      x1, [x8, #0x240]
07c8aec4: blr      x9
07c8aec8: ldr      x8, [x20]
07c8aecc: mov      w25, w0
07c8aed0: mov      x0, x8
07c8aed4: bl       #0x39d36d8
07c8aed8: ldr      x2, [x26]
07c8aedc: mov      w1, w25
07c8aee0: mov      x24, x0
07c8aee4: bl       #0x47485f0
07c8aee8: cmp      w25, #1
07c8aeec: b.lt     #0x7c8af64
07c8aef0: ldr      x8, [x21]
07c8aef4: mov      x0, x21
07c8aef8: ldr      x9, [x8, #0x2a8]
07c8aefc: ldr      x1, [x8, #0x2b0]
07c8af00: blr      x9
07c8af04: cbz      x24, #0x7c8c134
07c8af08: ldr      w10, [x24, #0x1c]
07c8af0c: ldr      x8, [x24, #0x10]
07c8af10: ldr      x9, [x27]
07c8af14: add      w10, w10, #1
07c8af18: str      w10, [x24, #0x1c]
07c8af1c: cbz      x8, #0x7c8c134
07c8af20: ldrsw    x10, [x24, #0x18]
07c8af24: ldr      w11, [x8, #0x18]
07c8af28: mov      x1, x0
07c8af2c: cmp      w10, w11
07c8af30: b.hs     #0x7c8af48
07c8af34: add      w9, w10, #1
07c8af38: add      x8, x8, x10, lsl #3
07c8af3c: str      w9, [x24, #0x18]
07c8af40: str      x1, [x8, #0x20]
07c8af44: b        #0x7c8af5c
07c8af48: ldr      x8, [x9, #0x20]
07c8af4c: mov      x0, x24
07c8af50: ldr      x8, [x8, #0xc0]
07c8af54: ldr      x2, [x8, #0x70]
07c8af58: bl       #0x4748d50
07c8af5c: subs     w25, w25, #1
07c8af60: b.ne     #0x7c8aef0
07c8af64: ldr      x8, [sp, #0x38]
07c8af68: ldr      x0, [x8, #0x30]
07c8af6c: cbz      x0, #0x7c8c134
07c8af70: ldr      w10, [x0, #0x1c]
07c8af74: ldr      x8, [x0, #0x10]
07c8af78: ldr      x9, [x28]
07c8af7c: add      w10, w10, #1
07c8af80: str      w10, [x0, #0x1c]
07c8af84: cbz      x8, #0x7c8c134
07c8af88: ldrsw    x10, [x0, #0x18]
07c8af8c: ldr      w11, [x8, #0x18]
07c8af90: cmp      w10, w11
07c8af94: b.hs     #0x7c8afac
07c8af98: add      w9, w10, #1
07c8af9c: add      x8, x8, x10, lsl #4
07c8afa0: str      w9, [x0, #0x18]
07c8afa4: stp      x23, x24, [x8, #0x20]
07c8afa8: b        #0x7c8afc4
07c8afac: ldr      x8, [x9, #0x20]
07c8afb0: mov      x1, x23
07c8afb4: mov      x2, x24
07c8afb8: ldr      x8, [x8, #0xc0]
07c8afbc: ldr      x3, [x8, #0x70]
07c8afc0: bl       #0x481e250
07c8afc4: add      w19, w19, #1
07c8afc8: cmp      w19, w22
07c8afcc: b.ne     #0x7c8ae9c
07c8afd0: ldr      x20, [sp, #0x38]
07c8afd4: ldr      w8, [x20, #0x18]
07c8afd8: cmp      w8, #0xc
07c8afdc: b.lt     #0x7c8b040
07c8afe0: ldr      x8, [x21]
07c8afe4: mov      x0, x21
07c8afe8: ldp      x9, x1, [x8, #0x1d8]
07c8afec: blr      x9
07c8aff0: ldr      w8, [x20, #0x18]
07c8aff4: and      w9, w0, #1
07c8aff8: strb     w9, [x20, #0x40]
07c8affc: cmp      w8, #0xf
07c8b000: b.lt     #0x7c8b040
07c8b004: ldr      x8, [x21]
07c8b008: mov      x0, x21
07c8b00c: ldp      x9, x1, [x8, #0x1d8]
07c8b010: blr      x9
07c8b014: ldr      w8, [x20, #0x18]
07c8b018: and      w9, w0, #1
07c8b01c: strb     w9, [x20, #0x41]
07c8b020: cmp      w8, #0x10
07c8b024: b.lt     #0x7c8b040
07c8b028: ldr      x8, [x21]
07c8b02c: mov      x0, x21
07c8b030: ldr      x9, [x8, #0x2a8]
07c8b034: ldr      x1, [x8, #0x2b0]
07c8b038: blr      x9
07c8b03c: str      x0, [x20, #0x80]
07c8b040: adrp     x8, #0x9c0a000
07c8b044: ldr      x8, [x8, #0x6d0]
07c8b048: ldr      x0, [x8]
07c8b04c: bl       #0x39d36d8
07c8b050: adrp     x8, #0x9c0a000
07c8b054: ldr      x8, [x8, #0x6c8]
07c8b058: mov      x19, x0
07c8b05c: ldr      x1, [x8]
07c8b060: bl       #0x5394ef0
07c8b064: str      x19, [x20, #0x38]
07c8b068: ldr      x8, [x21]
07c8b06c: mov      x0, x21
07c8b070: ldr      x9, [x8, #0x238]
07c8b074: ldr      x1, [x8, #0x240]
07c8b078: blr      x9
07c8b07c: ldr      x8, [x21]
07c8b080: cmp      w0, #1
07c8b084: b.lt     #0x7c8b19c
07c8b088: adrp     x20, #0x9b40000
07c8b08c: adrp     x26, #0x9b61000
07c8b090: adrp     x27, #0x9b40000
07c8b094: adrp     x28, #0x9c0a000
07c8b098: ldr      x20, [x20, #0x6c0]
07c8b09c: ldr      x26, [x26, #0xb0]
07c8b0a0: ldr      x27, [x27, #0x668]
07c8b0a4: ldr      x28, [x28, #0x6c0]
07c8b0a8: mov      w22, w0
07c8b0ac: mov      w19, wzr
07c8b0b0: ldp      x9, x1, [x8, #0x1e8]
07c8b0b4: mov      x0, x21
07c8b0b8: blr      x9
07c8b0bc: ldr      x8, [x21]
07c8b0c0: mov      w23, w0
07c8b0c4: mov      x0, x21
07c8b0c8: ldr      x9, [x8, #0x238]
07c8b0cc: ldr      x1, [x8, #0x240]
07c8b0d0: blr      x9
07c8b0d4: ldr      x8, [x20]
07c8b0d8: mov      w25, w0
07c8b0dc: mov      x0, x8
07c8b0e0: bl       #0x39d36d8
07c8b0e4: ldr      x2, [x26]
07c8b0e8: mov      w1, w25
07c8b0ec: mov      x24, x0
07c8b0f0: bl       #0x47485f0
07c8b0f4: cmp      w25, #1
07c8b0f8: b.lt     #0x7c8b170
07c8b0fc: ldr      x8, [x21]
07c8b100: mov      x0, x21
07c8b104: ldr      x9, [x8, #0x2a8]
07c8b108: ldr      x1, [x8, #0x2b0]
07c8b10c: blr      x9
07c8b110: cbz      x24, #0x7c8c134
07c8b114: ldr      w10, [x24, #0x1c]
07c8b118: ldr      x8, [x24, #0x10]
07c8b11c: ldr      x9, [x27]
07c8b120: add      w10, w10, #1
07c8b124: str      w10, [x24, #0x1c]
07c8b128: cbz      x8, #0x7c8c134
07c8b12c: ldrsw    x10, [x24, #0x18]
07c8b130: ldr      w11, [x8, #0x18]
07c8b134: mov      x1, x0
07c8b138: cmp      w10, w11
07c8b13c: b.hs     #0x7c8b154
07c8b140: add      w9, w10, #1
07c8b144: add      x8, x8, x10, lsl #3
07c8b148: str      w9, [x24, #0x18]
07c8b14c: str      x1, [x8, #0x20]
07c8b150: b        #0x7c8b168
07c8b154: ldr      x8, [x9, #0x20]
07c8b158: mov      x0, x24
07c8b15c: ldr      x8, [x8, #0xc0]
07c8b160: ldr      x2, [x8, #0x70]
07c8b164: bl       #0x4748d50
07c8b168: subs     w25, w25, #1
07c8b16c: b.ne     #0x7c8b0fc
07c8b170: ldr      x8, [sp, #0x38]
07c8b174: ldr      x0, [x8, #0x38]
07c8b178: cbz      x0, #0x7c8c134
07c8b17c: ldr      x3, [x28]
07c8b180: mov      w1, w23
07c8b184: mov      x2, x24
07c8b188: bl       #0x5395868
07c8b18c: ldr      x8, [x21]
07c8b190: add      w19, w19, #1
07c8b194: cmp      w19, w22
07c8b198: b.ne     #0x7c8b0b0
07c8b19c: ldr      x9, [x8, #0x238]
07c8b1a0: ldr      x1, [x8, #0x240]
07c8b1a4: mov      x0, x21
07c8b1a8: blr      x9
07c8b1ac: adrp     x8, #0x9c0a000
07c8b1b0: ldr      x8, [x8, #0x728]
07c8b1b4: mov      w20, w0
07c8b1b8: ldr      x8, [x8]
07c8b1bc: mov      x0, x8
07c8b1c0: bl       #0x39d36d8
07c8b1c4: adrp     x8, #0x9c0a000
07c8b1c8: ldr      x8, [x8, #0x708]
07c8b1cc: mov      w1, w20
07c8b1d0: mov      x19, x0
07c8b1d4: str      w20, [sp, #0x1c]
07c8b1d8: ldr      x2, [x8]
07c8b1dc: bl       #0x4814210
07c8b1e0: ldr      x20, [sp, #0x38]
07c8b1e4: adrp     x8, #0x9b3f000
07c8b1e8: adrp     x9, #0x9c0a000
07c8b1ec: str      x19, [x20, #0x48]
07c8b1f0: ldr      x8, [x8, #0x9c8]
07c8b1f4: ldr      x0, [x8]
07c8b1f8: ldr      x9, [x9, #0x748]
07c8b1fc: ldr      w8, [x0, #0xe0]
07c8b200: ldr      x19, [x9]
07c8b204: cbnz     w8, #0x7c8b20c
07c8b208: bl       #0x39d35c4
07c8b20c: mov      x0, x19
07c8b210: mov      x1, xzr
07c8b214: bl       #0x5c67e38
07c8b218: adrp     x8, #0x9b40000
07c8b21c: ldr      x8, [x8, #0x4d8]
07c8b220: mov      x19, x0
07c8b224: ldr      x8, [x8]
07c8b228: ldr      w9, [x8, #0xe0]
07c8b22c: cbnz     w9, #0x7c8b238
07c8b230: mov      x0, x8
07c8b234: bl       #0x39d35c4
07c8b238: mov      x0, x19
07c8b23c: mov      x1, xzr
07c8b240: bl       #0x5b6ad48
07c8b244: adrp     x8, #0x9b3f000
07c8b248: ldr      w9, [x20, #0x1c]
07c8b24c: ldr      x8, [x8, #0x738]
07c8b250: mul      w10, w9, w0
07c8b254: ldr      x8, [x8]
07c8b258: mul      w23, w10, w9
07c8b25c: mov      w1, w23
07c8b260: mov      x0, x8
07c8b264: bl       #0x39d3534
07c8b268: str      x0, [sp, #0x98]
07c8b26c: ldr      w9, [sp, #0x1c]
07c8b270: ldr      x8, [x21]
07c8b274: cmp      w9, #1
07c8b278: b.lt     #0x7c8b9cc
07c8b27c: adrp     x22, #0x9c0a000
07c8b280: ldr      x22, [x22, #0x6e8]
07c8b284: add      x9, sp, #0xa8
07c8b288: mov      w20, wzr
07c8b28c: orr      x28, x9, #2
07c8b290: ldr      x9, [x8, #0x2a8]
07c8b294: ldr      x1, [x8, #0x2b0]
07c8b298: mov      x0, x21
07c8b29c: blr      x9
07c8b2a0: ldr      x8, [x21]
07c8b2a4: str      x0, [sp, #0x28]
07c8b2a8: mov      x0, x21
07c8b2ac: ldr      x9, [x8, #0x238]
07c8b2b0: ldr      x1, [x8, #0x240]
07c8b2b4: blr      x9
07c8b2b8: ldr      x8, [x21]
07c8b2bc: mov      w19, w0
07c8b2c0: mov      x0, x21
07c8b2c4: ldr      x9, [x8, #0x238]
07c8b2c8: ldr      x1, [x8, #0x240]
07c8b2cc: blr      x9
07c8b2d0: ldr      x8, [x21]
07c8b2d4: str      w0, [sp, #0x20]
07c8b2d8: mov      x0, x21
07c8b2dc: ldr      x9, [x8, #0x238]
07c8b2e0: ldr      x1, [x8, #0x240]
07c8b2e4: blr      x9
07c8b2e8: mov      w27, w0
07c8b2ec: str      w19, [sp, #0x24]
07c8b2f0: str      w20, [sp, #0x34]
07c8b2f4: cbz      w19, #0x7c8b554
07c8b2f8: adrp     x8, #0x9c0a000
07c8b2fc: ldr      x8, [x8, #0x730]
07c8b300: ldr      x0, [x8]
07c8b304: bl       #0x39d36d8
07c8b308: adrp     x8, #0x9c0a000
07c8b30c: ldr      x8, [x8, #0x718]
07c8b310: mov      w1, w27
07c8b314: mov      x29, x0
07c8b318: ldr      x2, [x8]
07c8b31c: bl       #0x4810f40
07c8b320: ldr      x8, [x21]
07c8b324: cmp      w27, #1
07c8b328: b.lt     #0x7c8b3d0
07c8b32c: ldr      x9, [x8, #0x2a8]
07c8b330: ldr      x1, [x8, #0x2b0]
07c8b334: mov      x0, x21
07c8b338: blr      x9
07c8b33c: mov      x19, x0
07c8b340: mov      x0, x21
07c8b344: mov      x1, xzr
07c8b348: bl       #0x695a260 ; BinaryReaderAndWriterExtensions.ReadVector3
07c8b34c: cbz      x29, #0x7c8c134
07c8b350: ldr      w10, [x29, #0x1c]
07c8b354: ldr      x8, [x29, #0x10]
07c8b358: ldr      x9, [x22]
07c8b35c: add      w10, w10, #1
07c8b360: str      w10, [x29, #0x1c]
07c8b364: cbz      x8, #0x7c8c134
07c8b368: ldrsw    x10, [x29, #0x18]
07c8b36c: ldr      w11, [x8, #0x18]
07c8b370: cmp      w10, w11
07c8b374: b.hs     #0x7c8b39c
07c8b378: mov      w11, #0x18
07c8b37c: add      w9, w10, #1
07c8b380: madd     x8, x10, x11, x8
07c8b384: str      w9, [x29, #0x18]
07c8b388: str      x19, [x8, #0x20]
07c8b38c: stp      s0, s1, [x8, #0x28]
07c8b390: str      s2, [x8, #0x30]
07c8b394: str      wzr, [x8, #0x34]
07c8b398: b        #0x7c8b3c4
07c8b39c: ldr      x8, [x9, #0x20]
07c8b3a0: add      x1, sp, #0xa8
07c8b3a4: mov      x0, x29
07c8b3a8: ldr      x8, [x8, #0xc0]
07c8b3ac: ldr      x2, [x8, #0x70]
07c8b3b0: str      x19, [sp, #0xa8]
07c8b3b4: stp      s0, s1, [sp, #0xb0]
07c8b3b8: str      s2, [sp, #0xb8]
07c8b3bc: str      wzr, [sp, #0xbc]
07c8b3c0: bl       #0x4811778
07c8b3c4: ldr      x8, [x21]
07c8b3c8: subs     w27, w27, #1
07c8b3cc: b.ne     #0x7c8b32c
07c8b3d0: ldr      x9, [x8, #0x238]
07c8b3d4: ldr      x1, [x8, #0x240]
07c8b3d8: mov      x0, x21
07c8b3dc: blr      x9
07c8b3e0: adrp     x8, #0x9bee000
07c8b3e4: ldr      x8, [x8, #0xcc8]
07c8b3e8: mov      w24, w0
07c8b3ec: ldr      x8, [x8]
07c8b3f0: mov      x0, x8
07c8b3f4: bl       #0x39d36d8
07c8b3f8: adrp     x8, #0x9c0a000
07c8b3fc: ldr      x8, [x8, #0x6f8]
07c8b400: mov      w1, w24
07c8b404: mov      x22, x0
07c8b408: ldr      x2, [x8]
07c8b40c: bl       #0x481a7e0
07c8b410: cmp      w24, #1
07c8b414: b.lt     #0x7c8b54c
07c8b418: ldr      x8, [x21]
07c8b41c: mov      x0, x21
07c8b420: ldr      x9, [x8, #0x218]
07c8b424: ldr      x1, [x8, #0x220]
07c8b428: blr      x9
07c8b42c: ldr      x8, [x21]
07c8b430: mov      w26, w0
07c8b434: mov      x0, x21
07c8b438: ldr      x9, [x8, #0x2a8]
07c8b43c: ldr      x1, [x8, #0x2b0]
07c8b440: blr      x9
07c8b444: ldr      x8, [x21]
07c8b448: mov      x25, x0
07c8b44c: mov      x0, x21
07c8b450: ldr      x9, [x8, #0x238]
07c8b454: ldr      x1, [x8, #0x240]
07c8b458: blr      x9
07c8b45c: adrp     x8, #0x9b3f000
07c8b460: ldr      x8, [x8, #0x738]
07c8b464: mov      w20, w0
07c8b468: mov      w1, w20
07c8b46c: ldr      x8, [x8]
07c8b470: mov      x0, x8
07c8b474: bl       #0x39d3534
07c8b478: ldr      x8, [x21]
07c8b47c: mov      x19, x0
07c8b480: mov      x0, x21
07c8b484: mov      x1, x19
07c8b488: ldr      x9, [x8, #0x2c8]
07c8b48c: ldr      x4, [x8, #0x2d0]
07c8b490: mov      w2, wzr
07c8b494: mov      w3, w20
07c8b498: blr      x9
07c8b49c: strh     wzr, [sp, #0x5c]
07c8b4a0: str      wzr, [sp, #0x58]
07c8b4a4: cbz      x22, #0x7c8c134
07c8b4a8: ldr      w8, [sp, #0x58]
07c8b4ac: ldrh     w9, [sp, #0x5c]
07c8b4b0: str      w8, [sp, #0xa0]
07c8b4b4: strh     w9, [sp, #0xa4]
07c8b4b8: adrp     x9, #0x9bee000
07c8b4bc: ldr      w10, [x22, #0x1c]
07c8b4c0: ldr      x8, [x22, #0x10]
07c8b4c4: ldr      x9, [x9, #0xcb8]
07c8b4c8: add      w10, w10, #1
07c8b4cc: ldr      x9, [x9]
07c8b4d0: str      w10, [x22, #0x1c]
07c8b4d4: cbz      x8, #0x7c8c134
07c8b4d8: ldrsw    x10, [x22, #0x18]
07c8b4dc: ldr      w11, [x8, #0x18]
07c8b4e0: cmp      w10, w11
07c8b4e4: b.hs     #0x7c8b514
07c8b4e8: mov      w11, #0x18
07c8b4ec: add      w9, w10, #1
07c8b4f0: madd     x8, x10, x11, x8
07c8b4f4: str      w9, [x22, #0x18]
07c8b4f8: strh     w26, [x8, #0x20]
07c8b4fc: ldrh     w9, [sp, #0xa4]
07c8b500: ldr      w10, [sp, #0xa0]
07c8b504: stp      x25, x19, [x8, #0x28]
07c8b508: strh     w9, [x8, #0x26]
07c8b50c: stur     w10, [x8, #0x22]
07c8b510: b        #0x7c8b544
07c8b514: ldr      x8, [x9, #0x20]
07c8b518: ldrh     w9, [sp, #0xa4]
07c8b51c: ldr      w10, [sp, #0xa0]
07c8b520: add      x1, sp, #0xa8
07c8b524: ldr      x8, [x8, #0xc0]
07c8b528: mov      x0, x22
07c8b52c: ldr      x2, [x8, #0x70]
07c8b530: strh     w26, [sp, #0xa8]
07c8b534: strh     w9, [x28, #4]
07c8b538: str      w10, [x28]
07c8b53c: stp      x25, x19, [sp, #0xb0]
07c8b540: bl       #0x481b018
07c8b544: subs     w24, w24, #1
07c8b548: b.ne     #0x7c8b418
07c8b54c: mov      x19, xzr
07c8b550: b        #0x7c8b910
07c8b554: adrp     x8, #0x9c0a000
07c8b558: ldr      x8, [x8, #0x720]
07c8b55c: ldr      x0, [x8]
07c8b560: bl       #0x39d36d8
07c8b564: adrp     x8, #0x9c0a000
07c8b568: ldr      x8, [x8, #0x700]
07c8b56c: mov      w1, w27
07c8b570: mov      x19, x0
07c8b574: ldr      x2, [x8]
07c8b578: bl       #0x4817510
07c8b57c: cmp      w27, #1
07c8b580: b.lt     #0x7c8b908
07c8b584: mov      w22, wzr
07c8b588: str      x19, [sp, #0x40]
07c8b58c: ldr      x8, [x21]
07c8b590: mov      x0, x21
07c8b594: ldr      x9, [x8, #0x248]
07c8b598: ldr      x1, [x8, #0x250]
07c8b59c: blr      x9
07c8b5a0: ldr      x8, [x21]
07c8b5a4: str      w0, [sp, #0x54]
07c8b5a8: mov      x0, x21
07c8b5ac: ldr      x9, [x8, #0x238]
07c8b5b0: ldr      x1, [x8, #0x240]
07c8b5b4: blr      x9
07c8b5b8: adrp     x8, #0x9b3f000
07c8b5bc: ldr      x8, [x8, #0x9c8]
07c8b5c0: adrp     x10, #0x9c0a000
07c8b5c4: mov      w19, w0
07c8b5c8: ldr      x8, [x8]
07c8b5cc: ldr      w9, [x8, #0xe0]
07c8b5d0: ldr      x10, [x10, #0x748]
07c8b5d4: ldr      x20, [x10]
07c8b5d8: cbnz     w9, #0x7c8b5e4
07c8b5dc: mov      x0, x8
07c8b5e0: bl       #0x39d35c4
07c8b5e4: mov      x0, x20
07c8b5e8: mov      x1, xzr
07c8b5ec: bl       #0x5c67e38
07c8b5f0: adrp     x8, #0x9b40000
07c8b5f4: ldr      x8, [x8, #0x4d8]
07c8b5f8: mov      x20, x0
07c8b5fc: ldr      x8, [x8]
07c8b600: ldr      w9, [x8, #0xe0]
07c8b604: cbnz     w9, #0x7c8b610
07c8b608: mov      x0, x8
07c8b60c: bl       #0x39d35c4
07c8b610: mov      x0, x20
07c8b614: mov      x1, xzr
07c8b618: bl       #0x5b6ad48
07c8b61c: mul      w24, w0, w19
07c8b620: cmp      w23, w24
07c8b624: b.ge     #0x7c8b654
07c8b628: mov      w20, w23
07c8b62c: cmp      w23, w24
07c8b630: lsl      w23, w23, #1
07c8b634: b.lt     #0x7c8b628
07c8b638: adrp     x8, #0x9b40000
07c8b63c: ldr      x8, [x8, #0x4c8]
07c8b640: add      x0, sp, #0x98
07c8b644: mov      w1, w20
07c8b648: ldr      x2, [x8]
07c8b64c: bl       #0x3f1932c
07c8b650: mov      w23, w20
07c8b654: adrp     x8, #0x9c0a000
07c8b658: ldr      x8, [x8, #0x740]
07c8b65c: mov      w1, w19
07c8b660: ldr      x0, [x8]
07c8b664: bl       #0x39d3534
07c8b668: ldr      x8, [x21]
07c8b66c: ldr      x1, [sp, #0x98]
07c8b670: mov      x19, x0
07c8b674: mov      x0, x21
07c8b678: ldr      x9, [x8, #0x2c8]
07c8b67c: ldr      x4, [x8, #0x2d0]
07c8b680: mov      w2, wzr
07c8b684: mov      w3, w24
07c8b688: blr      x9
07c8b68c: mov      w1, #3
07c8b690: mov      x0, x19
07c8b694: mov      x2, xzr
07c8b698: str      x19, [sp, #0x48]
07c8b69c: bl       #0x5b6a098
07c8b6a0: str      x0, [sp, #0x90]
07c8b6a4: add      x0, sp, #0x90
07c8b6a8: mov      x1, xzr
07c8b6ac: bl       #0x5b69fa8
07c8b6b0: adrp     x8, #0x9b40000
07c8b6b4: ldr      x8, [x8, #0x4d8]
07c8b6b8: ldr      x20, [sp, #0x98]
07c8b6bc: mov      x19, x0
07c8b6c0: ldr      x8, [x8]
07c8b6c4: ldr      w9, [x8, #0xe0]
07c8b6c8: cbnz     w9, #0x7c8b6d4
07c8b6cc: mov      x0, x8
07c8b6d0: bl       #0x39d35c4
07c8b6d4: mov      x0, x20
07c8b6d8: mov      w1, wzr
07c8b6dc: mov      x2, x19
07c8b6e0: mov      w3, w24
07c8b6e4: mov      x4, xzr
07c8b6e8: bl       #0x5b6a518
07c8b6ec: add      x0, sp, #0x90
07c8b6f0: mov      x1, xzr
07c8b6f4: bl       #0x5b6a0ac
07c8b6f8: ldr      x8, [x21]
07c8b6fc: mov      x0, x21
07c8b700: ldr      x9, [x8, #0x238]
07c8b704: ldr      x1, [x8, #0x240]
07c8b708: blr      x9
07c8b70c: adrp     x8, #0x9bee000
07c8b710: ldr      x8, [x8, #0xcc8]
07c8b714: mov      w26, w0
07c8b718: ldr      x8, [x8]
07c8b71c: mov      x0, x8
07c8b720: bl       #0x39d36d8
07c8b724: adrp     x8, #0x9c0a000
07c8b728: ldr      x8, [x8, #0x6f8]
07c8b72c: mov      w1, w26
07c8b730: mov      x24, x0
07c8b734: ldr      x2, [x8]
07c8b738: bl       #0x481a7e0
07c8b73c: cmp      w26, #1
07c8b740: b.lt     #0x7c8b878
07c8b744: ldr      x8, [x21]
07c8b748: mov      x0, x21
07c8b74c: ldr      x9, [x8, #0x218]
07c8b750: ldr      x1, [x8, #0x220]
07c8b754: blr      x9
07c8b758: ldr      x8, [x21]
07c8b75c: mov      w25, w0
07c8b760: mov      x0, x21
07c8b764: ldr      x9, [x8, #0x2a8]
07c8b768: ldr      x1, [x8, #0x2b0]
07c8b76c: blr      x9
07c8b770: ldr      x8, [x21]
07c8b774: mov      x19, x0
07c8b778: mov      x0, x21
07c8b77c: ldr      x9, [x8, #0x238]
07c8b780: ldr      x1, [x8, #0x240]
07c8b784: blr      x9
07c8b788: adrp     x8, #0x9b3f000
07c8b78c: ldr      x8, [x8, #0x738]
07c8b790: mov      w29, w0
07c8b794: mov      w1, w29
07c8b798: ldr      x8, [x8]
07c8b79c: mov      x0, x8
07c8b7a0: bl       #0x39d3534
07c8b7a4: ldr      x8, [x21]
07c8b7a8: mov      x20, x0
07c8b7ac: mov      x0, x21
07c8b7b0: mov      x1, x20
07c8b7b4: ldr      x9, [x8, #0x2c8]
07c8b7b8: ldr      x4, [x8, #0x2d0]
07c8b7bc: mov      w2, wzr
07c8b7c0: mov      w3, w29
07c8b7c4: blr      x9
07c8b7c8: strh     wzr, [sp, #0x5c]
07c8b7cc: str      wzr, [sp, #0x58]
07c8b7d0: cbz      x24, #0x7c8c134
07c8b7d4: ldr      w8, [sp, #0x58]
07c8b7d8: ldrh     w9, [sp, #0x5c]
07c8b7dc: str      w8, [sp, #0xa0]
07c8b7e0: strh     w9, [sp, #0xa4]
07c8b7e4: adrp     x9, #0x9bee000
07c8b7e8: ldr      w10, [x24, #0x1c]
07c8b7ec: ldr      x8, [x24, #0x10]
07c8b7f0: ldr      x9, [x9, #0xcb8]
07c8b7f4: add      w10, w10, #1
07c8b7f8: ldr      x9, [x9]
07c8b7fc: str      w10, [x24, #0x1c]
07c8b800: cbz      x8, #0x7c8c134
07c8b804: ldrsw    x10, [x24, #0x18]
07c8b808: ldr      w11, [x8, #0x18]
07c8b80c: cmp      w10, w11
07c8b810: b.hs     #0x7c8b840
07c8b814: mov      w11, #0x18
07c8b818: add      w9, w10, #1
07c8b81c: madd     x8, x10, x11, x8
07c8b820: str      w9, [x24, #0x18]
07c8b824: strh     w25, [x8, #0x20]
07c8b828: ldrh     w9, [sp, #0xa4]
07c8b82c: ldr      w10, [sp, #0xa0]
07c8b830: stp      x19, x20, [x8, #0x28]
07c8b834: strh     w9, [x8, #0x26]
07c8b838: stur     w10, [x8, #0x22]
07c8b83c: b        #0x7c8b870
07c8b840: ldr      x8, [x9, #0x20]
07c8b844: ldrh     w9, [sp, #0xa4]
07c8b848: ldr      w10, [sp, #0xa0]
07c8b84c: add      x1, sp, #0xa8
07c8b850: ldr      x8, [x8, #0xc0]
07c8b854: mov      x0, x24
07c8b858: ldr      x2, [x8, #0x70]
07c8b85c: strh     w25, [sp, #0xa8]
07c8b860: strh     w9, [x28, #4]
07c8b864: str      w10, [x28]
07c8b868: stp      x19, x20, [sp, #0xb0]
07c8b86c: bl       #0x481b018
07c8b870: subs     w26, w26, #1
07c8b874: b.ne     #0x7c8b744
07c8b878: ldr      x19, [sp, #0x40]
07c8b87c: cbz      x19, #0x7c8c134
07c8b880: adrp     x9, #0x9c0a000
07c8b884: ldr      w10, [x19, #0x1c]
07c8b888: ldr      x8, [x19, #0x10]
07c8b88c: ldr      x9, [x9, #0x6e0]
07c8b890: add      w10, w10, #1
07c8b894: ldr      x9, [x9]
07c8b898: str      w10, [x19, #0x1c]
07c8b89c: cbz      x8, #0x7c8c134
07c8b8a0: ldrsw    x10, [x19, #0x18]
07c8b8a4: ldr      w11, [x8, #0x18]
07c8b8a8: cmp      w10, w11
07c8b8ac: b.hs     #0x7c8b8d4
07c8b8b0: add      w9, w10, #1
07c8b8b4: str      w9, [x19, #0x18]
07c8b8b8: ldr      w9, [sp, #0x54]
07c8b8bc: mov      w11, #0x18
07c8b8c0: madd     x8, x10, x11, x8
07c8b8c4: stp      w9, wzr, [x8, #0x20]
07c8b8c8: ldr      x9, [sp, #0x48]
07c8b8cc: stp      x9, x24, [x8, #0x28]
07c8b8d0: b        #0x7c8b8fc
07c8b8d4: ldr      x8, [x9, #0x20]
07c8b8d8: add      x1, sp, #0xa8
07c8b8dc: mov      x0, x19
07c8b8e0: ldr      x8, [x8, #0xc0]
07c8b8e4: ldr      x2, [x8, #0x70]
07c8b8e8: ldr      w8, [sp, #0x54]
07c8b8ec: stp      w8, wzr, [sp, #0xa8]
07c8b8f0: ldr      x8, [sp, #0x48]
07c8b8f4: stp      x8, x24, [sp, #0xb0]
07c8b8f8: bl       #0x4817d48
07c8b8fc: add      w22, w22, #1
07c8b900: cmp      w22, w27
07c8b904: b.ne     #0x7c8b58c
07c8b908: mov      x22, xzr
07c8b90c: mov      x29, xzr
07c8b910: ldr      x8, [sp, #0x38]
07c8b914: ldr      x0, [x8, #0x48]
07c8b918: cbz      x0, #0x7c8c134
07c8b91c: adrp     x9, #0x9c0a000
07c8b920: ldr      w10, [x0, #0x1c]
07c8b924: ldr      x8, [x0, #0x10]
07c8b928: ldr      x9, [x9, #0x6f0]
07c8b92c: add      w10, w10, #1
07c8b930: ldr      x9, [x9]
07c8b934: str      w10, [x0, #0x1c]
07c8b938: cbz      x8, #0x7c8c134
07c8b93c: ldrsw    x10, [x0, #0x18]
07c8b940: ldr      w11, [x8, #0x18]
07c8b944: cmp      w10, w11
07c8b948: b.hs     #0x7c8b97c
07c8b94c: add      w9, w10, #1
07c8b950: str      w9, [x0, #0x18]
07c8b954: ldr      x9, [sp, #0x28]
07c8b958: mov      w11, #0x28
07c8b95c: madd     x8, x10, x11, x8
07c8b960: ldr      w10, [sp, #0x24]
07c8b964: str      x9, [x8, #0x20]
07c8b968: ldr      w9, [sp, #0x20]
07c8b96c: stp      x19, x29, [x8, #0x30]
07c8b970: str      x22, [x8, #0x40]
07c8b974: stp      w10, w9, [x8, #0x28]
07c8b978: b        #0x7c8b9ac
07c8b97c: ldr      x8, [x9, #0x20]
07c8b980: ldr      w9, [sp, #0x24]
07c8b984: add      x1, sp, #0xa8
07c8b988: ldr      x8, [x8, #0xc0]
07c8b98c: ldr      x2, [x8, #0x70]
07c8b990: ldr      x8, [sp, #0x28]
07c8b994: stp      x19, x29, [sp, #0xb8]
07c8b998: str      x22, [sp, #0xc8]
07c8b99c: str      x8, [sp, #0xa8]
07c8b9a0: ldr      w8, [sp, #0x20]
07c8b9a4: stp      w9, w8, [sp, #0xb0]
07c8b9a8: bl       #0x4814a4c
07c8b9ac: ldr      w20, [sp, #0x34]
07c8b9b0: ldr      w9, [sp, #0x1c]
07c8b9b4: adrp     x22, #0x9c0a000
07c8b9b8: ldr      x8, [x21]
07c8b9bc: ldr      x22, [x22, #0x6e8]
07c8b9c0: add      w20, w20, #1
07c8b9c4: cmp      w20, w9
07c8b9c8: b.ne     #0x7c8b290
07c8b9cc: ldr      x9, [x8, #0x238]
07c8b9d0: ldr      x1, [x8, #0x240]
07c8b9d4: mov      x0, x21
07c8b9d8: blr      x9
07c8b9dc: adrp     x22, #0x9c0a000
07c8b9e0: ldr      x22, [x22, #0x750]
07c8b9e4: mov      w19, w0
07c8b9e8: mov      w1, w19
07c8b9ec: ldr      x8, [x22]
07c8b9f0: mov      x0, x8
07c8b9f4: bl       #0x39d3534
07c8b9f8: ldr      x28, [sp, #0x38]
07c8b9fc: ldr      x24, [sp, #0x10]
07c8ba00: cmp      w19, #1
07c8ba04: str      x0, [x28, #0x50]
07c8ba08: b.lt     #0x7c8baf0
07c8ba0c: adrp     x8, #0x9b3f000
07c8ba10: ldr      x8, [x8, #0x9c8]
07c8ba14: ldr      x0, [x8]
07c8ba18: adrp     x8, #0x9c0a000
07c8ba1c: ldr      x8, [x8, #0x758]
07c8ba20: ldr      w9, [x0, #0xe0]
07c8ba24: ldr      x20, [x8]
07c8ba28: cbnz     w9, #0x7c8ba30
07c8ba2c: bl       #0x39d35c4
07c8ba30: mov      x0, x20
07c8ba34: mov      x1, xzr
07c8ba38: bl       #0x5c67e38
07c8ba3c: adrp     x8, #0x9b40000
07c8ba40: ldr      x8, [x8, #0x4d8]
07c8ba44: mov      x20, x0
07c8ba48: ldr      x8, [x8]
07c8ba4c: ldr      w9, [x8, #0xe0]
07c8ba50: cbnz     w9, #0x7c8ba5c
07c8ba54: mov      x0, x8
07c8ba58: bl       #0x39d35c4
07c8ba5c: mov      x0, x20
07c8ba60: mov      x1, xzr
07c8ba64: bl       #0x5b6ad48
07c8ba68: adrp     x8, #0x9b3f000
07c8ba6c: ldr      x8, [x8, #0x738]
07c8ba70: mul      w19, w0, w19
07c8ba74: mov      w1, w19
07c8ba78: ldr      x8, [x8]
07c8ba7c: mov      x0, x8
07c8ba80: bl       #0x39d3534
07c8ba84: str      x0, [sp, #0x98]
07c8ba88: ldr      x8, [x21]
07c8ba8c: mov      x1, x0
07c8ba90: mov      x0, x21
07c8ba94: mov      w2, wzr
07c8ba98: ldr      x9, [x8, #0x2c8]
07c8ba9c: ldr      x4, [x8, #0x2d0]
07c8baa0: mov      w3, w19
07c8baa4: blr      x9
07c8baa8: ldr      x0, [x28, #0x50]
07c8baac: mov      w1, #3
07c8bab0: mov      x2, xzr
07c8bab4: bl       #0x5b6a098
07c8bab8: str      x0, [sp, #0x88]
07c8babc: add      x0, sp, #0x88
07c8bac0: mov      x1, xzr
07c8bac4: bl       #0x5b69fa8
07c8bac8: ldr      x8, [sp, #0x98]
07c8bacc: mov      x2, x0
07c8bad0: mov      w1, wzr
07c8bad4: mov      w3, w19
07c8bad8: mov      x0, x8
07c8badc: mov      x4, xzr
07c8bae0: bl       #0x5b6a518
07c8bae4: add      x0, sp, #0x88
07c8bae8: mov      x1, xzr
07c8baec: bl       #0x5b6a0ac
07c8baf0: ldr      w8, [x28, #0x18]
07c8baf4: cmp      w8, #0xd
07c8baf8: b.lt     #0x7c8bc14
07c8bafc: ldr      x8, [x21]
07c8bb00: mov      x0, x21
07c8bb04: ldr      x9, [x8, #0x238]
07c8bb08: ldr      x1, [x8, #0x240]
07c8bb0c: blr      x9
07c8bb10: ldr      x8, [x22]
07c8bb14: mov      w19, w0
07c8bb18: mov      w1, w19
07c8bb1c: mov      x0, x8
07c8bb20: bl       #0x39d3534
07c8bb24: cmp      w19, #1
07c8bb28: str      x0, [x28, #0x58]
07c8bb2c: b.lt     #0x7c8bc14
07c8bb30: adrp     x8, #0x9b3f000
07c8bb34: ldr      x8, [x8, #0x9c8]
07c8bb38: ldr      x0, [x8]
07c8bb3c: adrp     x8, #0x9c0a000
07c8bb40: ldr      x8, [x8, #0x758]
07c8bb44: ldr      w9, [x0, #0xe0]
07c8bb48: ldr      x20, [x8]
07c8bb4c: cbnz     w9, #0x7c8bb54
07c8bb50: bl       #0x39d35c4
07c8bb54: mov      x0, x20
07c8bb58: mov      x1, xzr
07c8bb5c: bl       #0x5c67e38
07c8bb60: adrp     x8, #0x9b40000
07c8bb64: ldr      x8, [x8, #0x4d8]
07c8bb68: mov      x20, x0
07c8bb6c: ldr      x8, [x8]
07c8bb70: ldr      w9, [x8, #0xe0]
07c8bb74: cbnz     w9, #0x7c8bb80
07c8bb78: mov      x0, x8
07c8bb7c: bl       #0x39d35c4
07c8bb80: mov      x0, x20
07c8bb84: mov      x1, xzr
07c8bb88: bl       #0x5b6ad48
07c8bb8c: adrp     x8, #0x9b3f000
07c8bb90: ldr      x8, [x8, #0x738]
07c8bb94: mul      w19, w0, w19
07c8bb98: mov      w1, w19
07c8bb9c: ldr      x8, [x8]
07c8bba0: mov      x0, x8
07c8bba4: bl       #0x39d3534
07c8bba8: str      x0, [sp, #0x98]
07c8bbac: ldr      x8, [x21]
07c8bbb0: mov      x1, x0
07c8bbb4: mov      x0, x21
07c8bbb8: mov      w2, wzr
07c8bbbc: ldr      x9, [x8, #0x2c8]
07c8bbc0: ldr      x4, [x8, #0x2d0]
07c8bbc4: mov      w3, w19
07c8bbc8: blr      x9
07c8bbcc: ldr      x0, [x28, #0x58]
07c8bbd0: mov      w1, #3
07c8bbd4: mov      x2, xzr
07c8bbd8: bl       #0x5b6a098
07c8bbdc: str      x0, [sp, #0x80]
07c8bbe0: add      x0, sp, #0x80
07c8bbe4: mov      x1, xzr
07c8bbe8: bl       #0x5b69fa8
07c8bbec: ldr      x8, [sp, #0x98]
07c8bbf0: mov      x2, x0
07c8bbf4: mov      w1, wzr
07c8bbf8: mov      w3, w19
07c8bbfc: mov      x0, x8
07c8bc00: mov      x4, xzr
07c8bc04: bl       #0x5b6a518
07c8bc08: add      x0, sp, #0x80
07c8bc0c: mov      x1, xzr
07c8bc10: bl       #0x5b6a0ac
07c8bc14: ldr      x8, [x21]
07c8bc18: mov      x0, x21
07c8bc1c: ldr      x9, [x8, #0x238]
07c8bc20: ldr      x1, [x8, #0x240]
07c8bc24: blr      x9
07c8bc28: adrp     x22, #0x9c0a000
07c8bc2c: ldr      x22, [x22, #0x770]
07c8bc30: mov      w19, w0
07c8bc34: mov      w1, w19
07c8bc38: ldr      x8, [x22]
07c8bc3c: mov      x0, x8
07c8bc40: bl       #0x39d3534
07c8bc44: cmp      w19, #1
07c8bc48: str      x0, [x28, #0x60]
07c8bc4c: b.lt     #0x7c8bd34
07c8bc50: adrp     x8, #0x9b3f000
07c8bc54: ldr      x8, [x8, #0x9c8]
07c8bc58: ldr      x0, [x8]
07c8bc5c: adrp     x8, #0x9c0a000
07c8bc60: ldr      x8, [x8, #0x778]
07c8bc64: ldr      w9, [x0, #0xe0]
07c8bc68: ldr      x20, [x8]
07c8bc6c: cbnz     w9, #0x7c8bc74
07c8bc70: bl       #0x39d35c4
07c8bc74: mov      x0, x20
07c8bc78: mov      x1, xzr
07c8bc7c: bl       #0x5c67e38
07c8bc80: adrp     x8, #0x9b40000
07c8bc84: ldr      x8, [x8, #0x4d8]
07c8bc88: mov      x20, x0
07c8bc8c: ldr      x8, [x8]
07c8bc90: ldr      w9, [x8, #0xe0]
07c8bc94: cbnz     w9, #0x7c8bca0
07c8bc98: mov      x0, x8
07c8bc9c: bl       #0x39d35c4
07c8bca0: mov      x0, x20
07c8bca4: mov      x1, xzr
07c8bca8: bl       #0x5b6ad48
07c8bcac: adrp     x8, #0x9b3f000
07c8bcb0: ldr      x8, [x8, #0x738]
07c8bcb4: mul      w19, w0, w19
07c8bcb8: mov      w1, w19
07c8bcbc: ldr      x8, [x8]
07c8bcc0: mov      x0, x8
07c8bcc4: bl       #0x39d3534
07c8bcc8: str      x0, [sp, #0x98]
07c8bccc: ldr      x8, [x21]
07c8bcd0: mov      x1, x0
07c8bcd4: mov      x0, x21
07c8bcd8: mov      w2, wzr
07c8bcdc: ldr      x9, [x8, #0x2c8]
07c8bce0: ldr      x4, [x8, #0x2d0]
07c8bce4: mov      w3, w19
07c8bce8: blr      x9
07c8bcec: ldr      x0, [x28, #0x60]
07c8bcf0: mov      w1, #3
07c8bcf4: mov      x2, xzr
07c8bcf8: bl       #0x5b6a098
07c8bcfc: str      x0, [sp, #0x78]
07c8bd00: add      x0, sp, #0x78
07c8bd04: mov      x1, xzr
07c8bd08: bl       #0x5b69fa8
07c8bd0c: ldr      x8, [sp, #0x98]
07c8bd10: mov      x2, x0
07c8bd14: mov      w1, wzr
07c8bd18: mov      w3, w19
07c8bd1c: mov      x0, x8
07c8bd20: mov      x4, xzr
07c8bd24: bl       #0x5b6a518
07c8bd28: add      x0, sp, #0x78
07c8bd2c: mov      x1, xzr
07c8bd30: bl       #0x5b6a0ac
07c8bd34: ldr      x8, [x21]
07c8bd38: mov      x0, x21
07c8bd3c: ldr      x9, [x8, #0x238]
07c8bd40: ldr      x1, [x8, #0x240]
07c8bd44: blr      x9
07c8bd48: adrp     x23, #0x9c0a000
07c8bd4c: ldr      x23, [x23, #0x760]
07c8bd50: mov      w19, w0
07c8bd54: mov      w1, w19
07c8bd58: ldr      x8, [x23]
07c8bd5c: mov      x0, x8
07c8bd60: bl       #0x39d3534
07c8bd64: cmp      w19, #1
07c8bd68: str      x0, [x28, #0x68]
07c8bd6c: b.lt     #0x7c8be54
07c8bd70: adrp     x8, #0x9b3f000
07c8bd74: ldr      x8, [x8, #0x9c8]
07c8bd78: ldr      x0, [x8]
07c8bd7c: adrp     x8, #0x9c0a000
07c8bd80: ldr      x8, [x8, #0x768]
07c8bd84: ldr      w9, [x0, #0xe0]
07c8bd88: ldr      x20, [x8]
07c8bd8c: cbnz     w9, #0x7c8bd94
07c8bd90: bl       #0x39d35c4
07c8bd94: mov      x0, x20
07c8bd98: mov      x1, xzr
07c8bd9c: bl       #0x5c67e38
07c8bda0: adrp     x8, #0x9b40000
07c8bda4: ldr      x8, [x8, #0x4d8]
07c8bda8: mov      x20, x0
07c8bdac: ldr      x8, [x8]
07c8bdb0: ldr      w9, [x8, #0xe0]
07c8bdb4: cbnz     w9, #0x7c8bdc0
07c8bdb8: mov      x0, x8
07c8bdbc: bl       #0x39d35c4
07c8bdc0: mov      x0, x20
07c8bdc4: mov      x1, xzr
07c8bdc8: bl       #0x5b6ad48
07c8bdcc: adrp     x8, #0x9b3f000
07c8bdd0: ldr      x8, [x8, #0x738]
07c8bdd4: mul      w19, w0, w19
07c8bdd8: mov      w1, w19
07c8bddc: ldr      x8, [x8]
07c8bde0: mov      x0, x8
07c8bde4: bl       #0x39d3534
07c8bde8: str      x0, [sp, #0x98]
07c8bdec: ldr      x8, [x21]
07c8bdf0: mov      x1, x0
07c8bdf4: mov      x0, x21
07c8bdf8: mov      w2, wzr
07c8bdfc: ldr      x9, [x8, #0x2c8]
07c8be00: ldr      x4, [x8, #0x2d0]
07c8be04: mov      w3, w19
07c8be08: blr      x9
07c8be0c: ldr      x0, [x28, #0x68]
07c8be10: mov      w1, #3
07c8be14: mov      x2, xzr
07c8be18: bl       #0x5b6a098
07c8be1c: str      x0, [sp, #0x70]
07c8be20: add      x0, sp, #0x70
07c8be24: mov      x1, xzr
07c8be28: bl       #0x5b69fa8
07c8be2c: ldr      x8, [sp, #0x98]
07c8be30: mov      x2, x0
07c8be34: mov      w1, wzr
07c8be38: mov      w3, w19
07c8be3c: mov      x0, x8
07c8be40: mov      x4, xzr
07c8be44: bl       #0x5b6a518
07c8be48: add      x0, sp, #0x70
07c8be4c: mov      x1, xzr
07c8be50: bl       #0x5b6a0ac
07c8be54: ldr      w8, [x28, #0x18]
07c8be58: cmp      w8, #0xe
07c8be5c: b.lt     #0x7c8c094
07c8be60: ldr      x8, [x21]
07c8be64: mov      x0, x21
07c8be68: ldr      x9, [x8, #0x238]
07c8be6c: ldr      x1, [x8, #0x240]
07c8be70: blr      x9
07c8be74: ldr      x8, [x22]
07c8be78: mov      w19, w0
07c8be7c: mov      w1, w19
07c8be80: mov      x0, x8
07c8be84: bl       #0x39d3534
07c8be88: cmp      w19, #1
07c8be8c: str      x0, [x28, #0x70]
07c8be90: b.lt     #0x7c8bf78
07c8be94: adrp     x8, #0x9b3f000
07c8be98: ldr      x8, [x8, #0x9c8]
07c8be9c: ldr      x0, [x8]
07c8bea0: adrp     x8, #0x9c0a000
07c8bea4: ldr      x8, [x8, #0x778]
07c8bea8: ldr      w9, [x0, #0xe0]
07c8beac: ldr      x20, [x8]
07c8beb0: cbnz     w9, #0x7c8beb8
07c8beb4: bl       #0x39d35c4
07c8beb8: mov      x0, x20
07c8bebc: mov      x1, xzr
07c8bec0: bl       #0x5c67e38
07c8bec4: adrp     x8, #0x9b40000
07c8bec8: ldr      x8, [x8, #0x4d8]
07c8becc: mov      x20, x0
07c8bed0: ldr      x8, [x8]
07c8bed4: ldr      w9, [x8, #0xe0]
07c8bed8: cbnz     w9, #0x7c8bee4
07c8bedc: mov      x0, x8
07c8bee0: bl       #0x39d35c4
07c8bee4: mov      x0, x20
07c8bee8: mov      x1, xzr
07c8beec: bl       #0x5b6ad48
07c8bef0: adrp     x8, #0x9b3f000
07c8bef4: ldr      x8, [x8, #0x738]
07c8bef8: mul      w19, w0, w19
07c8befc: mov      w1, w19
07c8bf00: ldr      x8, [x8]
07c8bf04: mov      x0, x8
07c8bf08: bl       #0x39d3534
07c8bf0c: str      x0, [sp, #0x98]
07c8bf10: ldr      x8, [x21]
07c8bf14: mov      x1, x0
07c8bf18: mov      x0, x21
07c8bf1c: mov      w2, wzr
07c8bf20: ldr      x9, [x8, #0x2c8]
07c8bf24: ldr      x4, [x8, #0x2d0]
07c8bf28: mov      w3, w19
07c8bf2c: blr      x9
07c8bf30: ldr      x0, [x28, #0x70]
07c8bf34: mov      w1, #3
07c8bf38: mov      x2, xzr
07c8bf3c: bl       #0x5b6a098
07c8bf40: str      x0, [sp, #0x68]
07c8bf44: add      x0, sp, #0x68
07c8bf48: mov      x1, xzr
07c8bf4c: bl       #0x5b69fa8
07c8bf50: ldr      x8, [sp, #0x98]
07c8bf54: mov      x2, x0
07c8bf58: mov      w1, wzr
07c8bf5c: mov      w3, w19
07c8bf60: mov      x0, x8
07c8bf64: mov      x4, xzr
07c8bf68: bl       #0x5b6a518
07c8bf6c: add      x0, sp, #0x68
07c8bf70: mov      x1, xzr
07c8bf74: bl       #0x5b6a0ac
07c8bf78: ldr      x8, [x21]
07c8bf7c: mov      x0, x21
07c8bf80: ldr      x9, [x8, #0x238]
07c8bf84: ldr      x1, [x8, #0x240]
07c8bf88: blr      x9
07c8bf8c: ldr      x8, [x23]
07c8bf90: mov      w19, w0
07c8bf94: mov      w1, w19
07c8bf98: mov      x0, x8
07c8bf9c: bl       #0x39d3534
07c8bfa0: cmp      w19, #1
07c8bfa4: str      x0, [x28, #0x78]
07c8bfa8: b.lt     #0x7c8c090
07c8bfac: adrp     x8, #0x9b3f000
07c8bfb0: ldr      x8, [x8, #0x9c8]
07c8bfb4: ldr      x0, [x8]
07c8bfb8: adrp     x8, #0x9c0a000
07c8bfbc: ldr      x8, [x8, #0x768]
07c8bfc0: ldr      w9, [x0, #0xe0]
07c8bfc4: ldr      x20, [x8]
07c8bfc8: cbnz     w9, #0x7c8bfd0
07c8bfcc: bl       #0x39d35c4
07c8bfd0: mov      x0, x20
07c8bfd4: mov      x1, xzr
07c8bfd8: bl       #0x5c67e38
07c8bfdc: adrp     x8, #0x9b40000
07c8bfe0: ldr      x8, [x8, #0x4d8]
07c8bfe4: mov      x20, x0
07c8bfe8: ldr      x8, [x8]
07c8bfec: ldr      w9, [x8, #0xe0]
07c8bff0: cbnz     w9, #0x7c8bffc
07c8bff4: mov      x0, x8
07c8bff8: bl       #0x39d35c4
07c8bffc: mov      x0, x20
07c8c000: mov      x1, xzr
07c8c004: bl       #0x5b6ad48
07c8c008: adrp     x8, #0x9b3f000
07c8c00c: ldr      x8, [x8, #0x738]
07c8c010: mul      w19, w0, w19
07c8c014: mov      w1, w19
07c8c018: ldr      x8, [x8]
07c8c01c: mov      x0, x8
07c8c020: bl       #0x39d3534
07c8c024: str      x0, [sp, #0x98]
07c8c028: ldr      x8, [x21]
07c8c02c: mov      x1, x0
07c8c030: mov      x0, x21
07c8c034: mov      w2, wzr
07c8c038: ldr      x9, [x8, #0x2c8]
07c8c03c: ldr      x4, [x8, #0x2d0]
07c8c040: mov      w3, w19
07c8c044: blr      x9
07c8c048: ldr      x0, [x28, #0x78]
07c8c04c: mov      w1, #3
07c8c050: mov      x2, xzr
07c8c054: bl       #0x5b6a098
07c8c058: str      x0, [sp, #0x60]
07c8c05c: add      x0, sp, #0x60
07c8c060: mov      x1, xzr
07c8c064: bl       #0x5b69fa8
07c8c068: ldr      x8, [sp, #0x98]
07c8c06c: mov      x2, x0
07c8c070: mov      w1, wzr
07c8c074: mov      w3, w19
07c8c078: mov      x0, x8
07c8c07c: mov      x4, xzr
07c8c080: bl       #0x5b6a518
07c8c084: add      x0, sp, #0x60
07c8c088: mov      x1, xzr
07c8c08c: bl       #0x5b6a0ac
07c8c090: ldr      w8, [x28, #0x18]
07c8c094: cmp      w8, #0xd
07c8c098: b.ne     #0x7c8ad68
07c8c09c: ldr      x8, [x28, #0x58]
07c8c0a0: cbz      x8, #0x7c8ad68
07c8c0a4: ldr      w8, [x8, #0x18]
07c8c0a8: cbz      w8, #0x7c8ad68
07c8c0ac: adrp     x20, #0x9b40000
07c8c0b0: ldr      x20, [x20, #0xd78]
07c8c0b4: mov      w8, #0xd
07c8c0b8: add      x1, sp, #0xa8
07c8c0bc: str      w8, [sp, #0xa8]
07c8c0c0: ldr      x0, [x20]
07c8c0c4: bl       #0x39d35cc
07c8c0c8: mov      x19, x0
07c8c0cc: ldr      x0, [x20]
07c8c0d0: mov      w8, #0x10
07c8c0d4: add      x1, sp, #0xa0
07c8c0d8: str      w8, [sp, #0xa0]
07c8c0dc: bl       #0x39d35cc
07c8c0e0: adrp     x8, #0x9c0a000
07c8c0e4: ldr      x8, [x8, #0x788]
07c8c0e8: mov      x3, x0
07c8c0ec: mov      x1, x24
07c8c0f0: mov      x2, x19
07c8c0f4: ldr      x8, [x8]
07c8c0f8: mov      x4, xzr
07c8c0fc: mov      x0, x8
07c8c100: bl       #0x5abf6f0
07c8c104: adrp     x8, #0x9b45000
07c8c108: ldr      x8, [x8, #0x2b0]
07c8c10c: mov      x19, x0
07c8c110: ldr      x8, [x8]
07c8c114: ldr      w9, [x8, #0xe0]
07c8c118: cbnz     w9, #0x7c8c124
07c8c11c: mov      x0, x8
07c8c120: bl       #0x39d35c4
07c8c124: mov      x0, x19
07c8c128: mov      x1, xzr
07c8c12c: bl       #0x3c4dd3c
07c8c130: b        #0x7c8ad68
07c8c134: bl       #0x39d36e4
07c8c138: mov      x0, x21
07c8c13c: bl       #0x39d36dc
07c8c140: bl       #0x39d36e4
07c8c144: bl       #0x39d36e4
07c8c148: bl       #0x39d36e4
07c8c14c: mov      x0, x23
07c8c150: bl       #0x39d36dc
07c8c154: mov      x0, x22
07c8c158: bl       #0x39d36dc
07c8c15c: mov      x0, x26
07c8c160: bl       #0x39d36dc
07c8c164: b        #0x7c8c16c
07c8c168: b        #0x7c8c26c
07c8c16c: mov      x22, x1
07c8c170: mov      x27, x24
07c8c174: mov      x24, x0
07c8c178: cmp      w22, #1
07c8c17c: b.ne     #0x7c8c1a8
07c8c180: mov      x0, x24
07c8c184: bl       #0x9749aa0
07c8c188: ldr      x26, [x0]
07c8c18c: bl       #0x9749ab0
07c8c190: mov      w19, wzr
07c8c194: mov      x28, xzr
07c8c198: mov      w20, #1
07c8c19c: mov      x24, x27
07c8c1a0: cbnz     x25, #0x7c8ac0c
07c8c1a4: b        #0x7c8ac6c
07c8c1a8: mov      x26, xzr
07c8c1ac: cbz      x25, #0x7c8c210
07c8c1b0: adrp     x10, #0x9b3f000
07c8c1b4: ldr      x8, [x25]
07c8c1b8: ldr      x10, [x10, #0xed8]
07c8c1bc: ldrh     w9, [x8, #0x12e]
07c8c1c0: ldr      x1, [x10]
07c8c1c4: cbz      x9, #0x7c8c1e8
07c8c1c8: ldr      x10, [x8, #0xb0]
07c8c1cc: add      x10, x10, #8
07c8c1d0: ldur     x11, [x10, #-8]
07c8c1d4: cmp      x11, x1
07c8c1d8: b.eq     #0x7c8c1f8
07c8c1dc: subs     x9, x9, #1
07c8c1e0: add      x10, x10, #0x10
07c8c1e4: b.ne     #0x7c8c1d0
07c8c1e8: mov      x0, x25
07c8c1ec: mov      w2, wzr
07c8c1f0: bl       #0x39a94f0
07c8c1f4: b        #0x7c8c204
07c8c1f8: ldrsw    x9, [x10]
07c8c1fc: add      x8, x8, x9, lsl #4
07c8c200: add      x0, x8, #0x138
07c8c204: ldp      x8, x1, [x0]
07c8c208: mov      x0, x25
07c8c20c: blr      x8
07c8c210: cbz      x26, #0x7c8c260
07c8c214: mov      x0, x26
07c8c218: bl       #0x39d36dc
07c8c21c: mov      x22, x1
07c8c220: mov      x24, x0
07c8c224: cbnz     x25, #0x7c8c1b0
07c8c228: b        #0x7c8c210
07c8c22c: b        #0x7c8c26c
07c8c230: b        #0x7c8c26c
07c8c234: b        #0x7c8c26c
07c8c238: b        #0x7c8c26c
07c8c23c: b        #0x7c8c26c
07c8c240: b        #0x7c8c26c
07c8c244: b        #0x7c8c26c
07c8c248: b        #0x7c8c26c
07c8c24c: b        #0x7c8c3dc
07c8c250: b        #0x7c8c3dc
07c8c254: mov      x27, x24
07c8c258: mov      x22, x1
07c8c25c: mov      x24, x0
07c8c260: mov      x28, xzr
07c8c264: b        #0x7c8c324
07c8c268: b        #0x7c8c26c
07c8c26c: mov      x27, x24
07c8c270: mov      x22, x1
07c8c274: mov      x24, x0
07c8c278: mov      x28, xzr
07c8c27c: cmp      w22, #1
07c8c280: b.ne     #0x7c8c29c
07c8c284: mov      x0, x24
07c8c288: bl       #0x9749aa0
07c8c28c: ldr      x22, [x0]
07c8c290: bl       #0x9749ab0
07c8c294: mov      x24, x27
07c8c298: b        #0x7c8acf4
07c8c29c: mov      x22, xzr
07c8c2a0: b        #0x7c8c2a8
07c8c2a4: mov      x24, x0
07c8c2a8: cbz      x21, #0x7c8c30c
07c8c2ac: adrp     x10, #0x9b3f000
07c8c2b0: ldr      x8, [x21]
07c8c2b4: ldr      x10, [x10, #0xed8]
07c8c2b8: ldrh     w9, [x8, #0x12e]
07c8c2bc: ldr      x1, [x10]
07c8c2c0: cbz      x9, #0x7c8c2e4
07c8c2c4: ldr      x10, [x8, #0xb0]
07c8c2c8: add      x10, x10, #8
07c8c2cc: ldur     x11, [x10, #-8]
07c8c2d0: cmp      x11, x1
07c8c2d4: b.eq     #0x7c8c2f4
07c8c2d8: subs     x9, x9, #1
07c8c2dc: add      x10, x10, #0x10
07c8c2e0: b.ne     #0x7c8c2cc
07c8c2e4: mov      x0, x21
07c8c2e8: mov      w2, wzr
07c8c2ec: bl       #0x39a94f0
07c8c2f0: b        #0x7c8c300
07c8c2f4: ldrsw    x9, [x10]
07c8c2f8: add      x8, x8, x9, lsl #4
07c8c2fc: add      x0, x8, #0x138
07c8c300: ldp      x8, x1, [x0]
07c8c304: mov      x0, x21
07c8c308: blr      x8
07c8c30c: cbz      x22, #0x7c8c484
07c8c310: mov      x0, x22
07c8c314: bl       #0x39d36dc
07c8c318: mov      x27, x24
07c8c31c: mov      x22, x1
07c8c320: mov      x24, x0
07c8c324: cmp      w22, #1
07c8c328: b.ne     #0x7c8c344
07c8c32c: mov      x0, x24
07c8c330: bl       #0x9749aa0
07c8c334: ldr      x25, [x0]
07c8c338: bl       #0x9749ab0
07c8c33c: mov      x24, x27
07c8c340: b        #0x7c8ac7c
07c8c344: mov      x25, xzr
07c8c348: cbz      x23, #0x7c8c3ac
07c8c34c: adrp     x10, #0x9b3f000
07c8c350: ldr      x8, [x23]
07c8c354: ldr      x10, [x10, #0xed8]
07c8c358: ldrh     w9, [x8, #0x12e]
07c8c35c: ldr      x1, [x10]
07c8c360: cbz      x9, #0x7c8c384
07c8c364: ldr      x10, [x8, #0xb0]
07c8c368: add      x10, x10, #8
07c8c36c: ldur     x11, [x10, #-8]
07c8c370: cmp      x11, x1
07c8c374: b.eq     #0x7c8c394
07c8c378: subs     x9, x9, #1
07c8c37c: add      x10, x10, #0x10
07c8c380: b.ne     #0x7c8c36c
07c8c384: mov      x0, x23
07c8c388: mov      w2, wzr
07c8c38c: bl       #0x39a94f0
07c8c390: b        #0x7c8c3a0
07c8c394: ldrsw    x9, [x10]
07c8c398: add      x8, x8, x9, lsl #4
07c8c39c: add      x0, x8, #0x138
07c8c3a0: ldp      x8, x1, [x0]
07c8c3a4: mov      x0, x23
07c8c3a8: blr      x8
07c8c3ac: cbz      x25, #0x7c8c27c
07c8c3b0: mov      x0, x25
07c8c3b4: bl       #0x39d36dc
07c8c3b8: mov      x22, x1
07c8c3bc: mov      x24, x0
07c8c3c0: cbnz     x23, #0x7c8c34c
07c8c3c4: b        #0x7c8c3ac
07c8c3c8: mov      x27, x24
07c8c3cc: mov      x22, x1
07c8c3d0: mov      x24, x0
07c8c3d4: b        #0x7c8c27c
07c8c3d8: b        #0x7c8c3dc
07c8c3dc: mov      x25, x24
07c8c3e0: mov      x24, x0
07c8c3e4: cmp      w1, #1
07c8c3e8: b.ne     #0x7c8c410
07c8c3ec: mov      x0, x24
07c8c3f0: bl       #0x9749aa0
07c8c3f4: ldr      x21, [x0]
07c8c3f8: bl       #0x9749ab0
07c8c3fc: mov      x23, xzr
07c8c400: mov      w19, wzr
07c8c404: mov      x24, x25
07c8c408: cbnz     x20, #0x7c8aa18
07c8c40c: b        #0x7c8aa78
07c8c410: mov      x21, xzr
07c8c414: b        #0x7c8c41c
07c8c418: mov      x24, x0
07c8c41c: cbz      x20, #0x7c8c480
07c8c420: adrp     x10, #0x9b3f000
07c8c424: ldr      x8, [x20]
07c8c428: ldr      x10, [x10, #0xed8]
07c8c42c: ldrh     w9, [x8, #0x12e]
07c8c430: ldr      x1, [x10]
07c8c434: cbz      x9, #0x7c8c458
07c8c438: ldr      x10, [x8, #0xb0]
07c8c43c: add      x10, x10, #8
07c8c440: ldur     x11, [x10, #-8]
07c8c444: cmp      x11, x1
07c8c448: b.eq     #0x7c8c468
07c8c44c: subs     x9, x9, #1
07c8c450: add      x10, x10, #0x10
07c8c454: b.ne     #0x7c8c440
07c8c458: mov      x0, x20
07c8c45c: mov      w2, wzr
07c8c460: bl       #0x39a94f0
07c8c464: b        #0x7c8c474
07c8c468: ldrsw    x9, [x10]
07c8c46c: add      x8, x8, x9, lsl #4
07c8c470: add      x0, x8, #0x138
07c8c474: ldp      x8, x1, [x0]
07c8c478: mov      x0, x20
07c8c47c: blr      x8
07c8c480: cbnz     x21, #0x7c8c48c
07c8c484: mov      x0, x24
07c8c488: bl       #0x3ab82d0
07c8c48c: mov      x0, x21
07c8c490: bl       #0x39d36dc
07c8c494: bl       #0x35bb99c

// Tilemaps.TilemapBinary..ctor 0x7c8c498
07c8c498: stp      x30, x21, [sp, #-0x20]!
07c8c49c: stp      x20, x19, [sp, #0x10]
07c8c4a0: adrp     x20, #0xa271000
07c8c4a4: adrp     x21, #0x9b3f000
07c8c4a8: ldrb     w8, [x20, #0x988]
07c8c4ac: ldr      x21, [x21, #0x8d0]
07c8c4b0: mov      x19, x0
07c8c4b4: tbnz     w8, #0, #0x7c8c4cc
07c8c4b8: adrp     x0, #0x9b3f000
07c8c4bc: ldr      x0, [x0, #0x8d0]
07c8c4c0: bl       #0x39d34bc
07c8c4c4: mov      w8, #1
07c8c4c8: strb     w8, [x20, #0x988]
07c8c4cc: ldr      x8, [x21]
07c8c4d0: mov      x0, x19
07c8c4d4: mov      x1, xzr
07c8c4d8: ldr      x8, [x8, #0xb8]
07c8c4dc: ldr      x8, [x8]
07c8c4e0: str      x8, [x19, #0x80]
07c8c4e4: ldp      x20, x19, [sp, #0x10]
07c8c4e8: ldp      x30, x21, [sp], #0x20
07c8c4ec: b        #0x5c9bdb4

// Tilemaps.TilemapBinary..cctor 0x7c8c4f0
07c8c4f0: str      x30, [sp, #-0x30]!
07c8c4f4: stp      x22, x21, [sp, #0x10]
07c8c4f8: stp      x20, x19, [sp, #0x20]
07c8c4fc: adrp     x22, #0xa271000
07c8c500: adrp     x20, #0x9ba5000
07c8c504: adrp     x21, #0x9b3f000
07c8c508: adrp     x19, #0x9c0a000
07c8c50c: ldrb     w8, [x22, #0x989]
07c8c510: ldr      x20, [x20, #0x6a0]
07c8c514: ldr      x21, [x21, #0x738]
07c8c518: ldr      x19, [x19, #0x7a0]
07c8c51c: tbnz     w8, #0, #0x7c8c54c
07c8c520: adrp     x0, #0x9b3f000
07c8c524: ldr      x0, [x0, #0x738]
07c8c528: bl       #0x39d34bc
07c8c52c: adrp     x0, #0x9ba5000
07c8c530: ldr      x0, [x0, #0x6a0]
07c8c534: bl       #0x39d34bc
07c8c538: adrp     x0, #0x9c0a000
07c8c53c: ldr      x0, [x0, #0x7a0]
07c8c540: bl       #0x39d34bc
07c8c544: mov      w8, #1
07c8c548: strb     w8, [x22, #0x989]
07c8c54c: ldr      x8, [x20]
07c8c550: adrp     x9, #0x176a000
07c8c554: ldr      d0, [x9, #0x170]
07c8c558: mov      w9, #0xcccd
07c8c55c: ldr      x8, [x8, #0xb8]
07c8c560: movk     w9, #0x3dcc, lsl #16
07c8c564: mov      w1, #0x10
07c8c568: str      d0, [x8]
07c8c56c: str      w9, [x8, #8]
07c8c570: ldr      x0, [x21]
07c8c574: bl       #0x39d3534
07c8c578: ldr      x1, [x19]
07c8c57c: mov      x2, xzr
07c8c580: mov      x19, x0
07c8c584: bl       #0x5b6ef30
07c8c588: ldr      x8, [x20]
07c8c58c: ldp      x22, x21, [sp, #0x10]
07c8c590: ldr      x8, [x8, #0xb8]
07c8c594: str      x19, [x8, #0x10]
07c8c598: ldp      x20, x19, [sp, #0x20]
07c8c59c: ldr      x30, [sp], #0x30
07c8c5a0: ret      
