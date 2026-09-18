// Oak.StaticDataRepository.get_Instance 0x75a8a4c
075a8a4c: str      x30, [sp, #-0x20]!
075a8a50: stp      x20, x19, [sp, #0x10]
075a8a54: adrp     x19, #0xa26e000
075a8a58: ldrb     w8, [x19, #0x557]
075a8a5c: tbnz     w8, #0, #0x75a8a74
075a8a60: adrp     x0, #0x9b4e000
075a8a64: ldr      x0, [x0, #0xfd8]
075a8a68: bl       #0x39d34bc
075a8a6c: mov      w8, #1
075a8a70: strb     w8, [x19, #0x557]
075a8a74: mov      w0, #0x72a
075a8a78: mov      x1, xzr
075a8a7c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a8a80: tbz      w0, #0, #0x75a8aa4
075a8a84: mov      w0, #0x72a
075a8a88: mov      x1, xzr
075a8a8c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a8a90: cbz      x0, #0x75a8b04
075a8a94: ldp      x20, x19, [sp, #0x10]
075a8a98: mov      x1, xzr
075a8a9c: ldr      x30, [sp], #0x20
075a8aa0: b        #0x862a630 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_520
075a8aa4: adrp     x20, #0x9b4e000
075a8aa8: ldr      x20, [x20, #0xfd8]
075a8aac: ldr      x0, [x20]
075a8ab0: ldr      w8, [x0, #0xe0]
075a8ab4: cbnz     w8, #0x75a8ac0
075a8ab8: bl       #0x39d35c4
075a8abc: ldr      x0, [x20]
075a8ac0: ldr      x8, [x0, #0xb8]
075a8ac4: ldr      x19, [x8]
075a8ac8: cbnz     x19, #0x75a8af4
075a8acc: bl       #0x39d36d8
075a8ad0: mov      x19, x0
075a8ad4: bl       #0x75a8b08 ; Oak.StaticDataRepository..ctor
075a8ad8: ldr      x0, [x20]
075a8adc: ldr      w8, [x0, #0xe0]
075a8ae0: cbnz     w8, #0x75a8aec
075a8ae4: bl       #0x39d35c4
075a8ae8: ldr      x0, [x20]
075a8aec: ldr      x8, [x0, #0xb8]
075a8af0: str      x19, [x8]
075a8af4: mov      x0, x19
075a8af8: ldp      x20, x19, [sp, #0x10]
075a8afc: ldr      x30, [sp], #0x20
075a8b00: ret      
075a8b04: bl       #0x39d36e4

// Oak.StaticDataRepository.get_BuildKind 0x75a8be8
075a8be8: str      x30, [sp, #-0x20]!
075a8bec: stp      x20, x19, [sp, #0x10]
075a8bf0: adrp     x20, #0xa26e000
075a8bf4: ldrb     w8, [x20, #0x558]
075a8bf8: mov      x19, x0
075a8bfc: tbnz     w8, #0, #0x75a8c14
075a8c00: adrp     x0, #0x9b4c000
075a8c04: ldr      x0, [x0, #0x60]
075a8c08: bl       #0x39d34bc
075a8c0c: mov      w8, #1
075a8c10: strb     w8, [x20, #0x558]
075a8c14: mov      w0, #0x72b
075a8c18: mov      x1, xzr
075a8c1c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a8c20: tbz      w0, #0, #0x75a8c48
075a8c24: mov      w0, #0x72b
075a8c28: mov      x1, xzr
075a8c2c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a8c30: cbz      x0, #0x75a8ca8
075a8c34: mov      x1, x19
075a8c38: ldp      x20, x19, [sp, #0x10]
075a8c3c: mov      x2, xzr
075a8c40: ldr      x30, [sp], #0x20
075a8c44: b        #0x862a6fc ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_521
075a8c48: adrp     x19, #0x9b4c000
075a8c4c: ldr      x19, [x19, #0x60]
075a8c50: ldr      x0, [x19]
075a8c54: ldr      w8, [x0, #0xe0]
075a8c58: cbnz     w8, #0x75a8c60
075a8c5c: bl       #0x39d35c4
075a8c60: adrp     x20, #0xa25e000
075a8c64: ldrb     w8, [x20, #0xf53]
075a8c68: cbnz     w8, #0x75a8c80
075a8c6c: adrp     x0, #0x9b4c000
075a8c70: ldr      x0, [x0, #0x60]
075a8c74: bl       #0x39d34bc
075a8c78: mov      w8, #1
075a8c7c: strb     w8, [x20, #0xf53]
075a8c80: ldr      x0, [x19]
075a8c84: ldr      w8, [x0, #0xe0]
075a8c88: cbnz     w8, #0x75a8c94
075a8c8c: bl       #0x39d35c4
075a8c90: ldr      x0, [x19]
075a8c94: ldr      x8, [x0, #0xb8]
075a8c98: ldp      x20, x19, [sp, #0x10]
075a8c9c: ldr      w0, [x8]
075a8ca0: ldr      x30, [sp], #0x20
075a8ca4: ret      
075a8ca8: bl       #0x39d36e4

// Oak.StaticDataRepository.get_StaticDataDirectory 0x75a8cac
075a8cac: str      x30, [sp, #-0x20]!
075a8cb0: stp      x20, x19, [sp, #0x10]
075a8cb4: adrp     x20, #0xa26e000
075a8cb8: adrp     x19, #0x9b4e000
075a8cbc: ldrb     w8, [x20, #0x559]
075a8cc0: ldr      x19, [x19, #0xfd8]
075a8cc4: tbnz     w8, #0, #0x75a8cdc
075a8cc8: adrp     x0, #0x9b4e000
075a8ccc: ldr      x0, [x0, #0xfd8]
075a8cd0: bl       #0x39d34bc
075a8cd4: mov      w8, #1
075a8cd8: strb     w8, [x20, #0x559]
075a8cdc: ldr      x0, [x19]
075a8ce0: ldr      w8, [x0, #0xe0]
075a8ce4: cbnz     w8, #0x75a8cf0
075a8ce8: bl       #0x39d35c4
075a8cec: ldr      x0, [x19]
075a8cf0: ldr      x8, [x0, #0xb8]
075a8cf4: ldp      x20, x19, [sp, #0x10]
075a8cf8: ldr      x0, [x8, #8]
075a8cfc: ldr      x30, [sp], #0x20
075a8d00: ret      

// Oak.StaticDataRepository.get_UseBinaryInstead 0x75a8d04
075a8d04: str      x30, [sp, #-0x20]!
075a8d08: stp      x20, x19, [sp, #0x10]
075a8d0c: adrp     x19, #0xa26e000
075a8d10: ldrb     w8, [x19, #0x55a]
075a8d14: tbnz     w8, #0, #0x75a8d2c
075a8d18: adrp     x0, #0x9b4c000
075a8d1c: ldr      x0, [x0, #0x60]
075a8d20: bl       #0x39d34bc
075a8d24: mov      w8, #1
075a8d28: strb     w8, [x19, #0x55a]
075a8d2c: mov      w0, #0x9d79
075a8d30: mov      x1, xzr
075a8d34: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a8d38: tbz      w0, #0, #0x75a8d5c
075a8d3c: mov      w0, #0x9d79
075a8d40: mov      x1, xzr
075a8d44: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a8d48: cbz      x0, #0x75a8dc4
075a8d4c: ldp      x20, x19, [sp, #0x10]
075a8d50: mov      x1, xzr
075a8d54: ldr      x30, [sp], #0x20
075a8d58: b        #0x861f834 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_339
075a8d5c: adrp     x19, #0x9b4c000
075a8d60: ldr      x19, [x19, #0x60]
075a8d64: ldr      x0, [x19]
075a8d68: ldr      w8, [x0, #0xe0]
075a8d6c: cbnz     w8, #0x75a8d74
075a8d70: bl       #0x39d35c4
075a8d74: adrp     x20, #0xa25e000
075a8d78: ldrb     w8, [x20, #0xf53]
075a8d7c: cbnz     w8, #0x75a8d94
075a8d80: adrp     x0, #0x9b4c000
075a8d84: ldr      x0, [x0, #0x60]
075a8d88: bl       #0x39d34bc
075a8d8c: mov      w8, #1
075a8d90: strb     w8, [x20, #0xf53]
075a8d94: ldr      x0, [x19]
075a8d98: ldr      w8, [x0, #0xe0]
075a8d9c: cbnz     w8, #0x75a8da8
075a8da0: bl       #0x39d35c4
075a8da4: ldr      x0, [x19]
075a8da8: ldr      x8, [x0, #0xb8]
075a8dac: ldp      x20, x19, [sp, #0x10]
075a8db0: ldr      w8, [x8]
075a8db4: cmp      w8, #5
075a8db8: cset     w0, ne
075a8dbc: ldr      x30, [sp], #0x20
075a8dc0: ret      
075a8dc4: bl       #0x39d36e4

// Oak.StaticDataRepository.get_Checksum 0x75a8dc8
075a8dc8: ldr      x0, [x0, #0x18]
075a8dcc: ret      

// Oak.StaticDataRepository.set_Checksum 0x75a8dd0
075a8dd0: str      x1, [x0, #0x18]
075a8dd4: ret      

// Oak.StaticDataRepository.get_StaticDataChanged 0x75a8dd8
075a8dd8: ldrb     w0, [x0, #0x20]
075a8ddc: ret      

// Oak.StaticDataRepository.set_StaticDataChanged 0x75a8de0
075a8de0: and      w8, w1, #1
075a8de4: strb     w8, [x0, #0x20]
075a8de8: ret      

// Oak.StaticDataRepository.get_Loaded 0x75a8dec
075a8dec: ldrb     w0, [x0, #0x21]
075a8df0: ret      

// Oak.StaticDataRepository.set_Loaded 0x75a8df4
075a8df4: and      w8, w1, #1
075a8df8: strb     w8, [x0, #0x21]
075a8dfc: ret      

// Oak.StaticDataRepository.get_Item 0x75a8e00
075a8e00: sub      sp, sp, #0x40
075a8e04: stp      x30, x21, [sp, #0x20]
075a8e08: stp      x20, x19, [sp, #0x30]
075a8e0c: adrp     x21, #0xa26e000
075a8e10: ldrb     w8, [x21, #0x55b]
075a8e14: mov      x19, x1
075a8e18: mov      x20, x0
075a8e1c: tbnz     w8, #0, #0x75a8e58
075a8e20: adrp     x0, #0x9be7000
075a8e24: ldr      x0, [x0, #0x80]
075a8e28: bl       #0x39d34bc
075a8e2c: adrp     x0, #0x9b4b000
075a8e30: ldr      x0, [x0, #0x6d0]
075a8e34: bl       #0x39d34bc
075a8e38: adrp     x0, #0x9b3f000
075a8e3c: ldr      x0, [x0, #0xea8]
075a8e40: bl       #0x39d34bc
075a8e44: adrp     x0, #0x9b4e000
075a8e48: ldr      x0, [x0, #0xfd8]
075a8e4c: bl       #0x39d34bc
075a8e50: mov      w8, #1
075a8e54: strb     w8, [x21, #0x55b]
075a8e58: movi     v0.2d, #0000000000000000
075a8e5c: mov      w0, #0x4acb
075a8e60: mov      x1, xzr
075a8e64: stp      q0, q0, [sp]
075a8e68: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a8e6c: tbz      w0, #0, #0x75a8e94
075a8e70: mov      w0, #0x4acb
075a8e74: mov      x1, xzr
075a8e78: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a8e7c: cbz      x0, #0x75a8f98
075a8e80: mov      x1, x20
075a8e84: mov      x2, x19
075a8e88: mov      x3, xzr
075a8e8c: bl       #0x8619a04 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_238
075a8e90: b        #0x75a8f88
075a8e94: ldr      x0, [x20, #0x10]
075a8e98: cbz      x0, #0x75a8f98
075a8e9c: adrp     x8, #0x9be7000
075a8ea0: ldr      x8, [x8, #0x80]
075a8ea4: mov      x2, sp
075a8ea8: mov      x1, x19
075a8eac: ldr      x3, [x8]
075a8eb0: bl       #0x55866cc
075a8eb4: tbz      w0, #0, #0x75a8f84
075a8eb8: ldr      x0, [sp, #8]
075a8ebc: cbnz     x0, #0x75a8f88
075a8ec0: adrp     x20, #0x9b4e000
075a8ec4: ldr      x20, [x20, #0xfd8]
075a8ec8: ldr      x0, [x20]
075a8ecc: ldr      w8, [x0, #0xe0]
075a8ed0: cbnz     w8, #0x75a8ed8
075a8ed4: bl       #0x39d35c4
075a8ed8: adrp     x21, #0xa26a000
075a8edc: ldrb     w8, [x21, #0x6ff]
075a8ee0: cbnz     w8, #0x75a8ef8
075a8ee4: adrp     x0, #0x9b4e000
075a8ee8: ldr      x0, [x0, #0xfd8]
075a8eec: bl       #0x39d34bc
075a8ef0: mov      w8, #1
075a8ef4: strb     w8, [x21, #0x6ff]
075a8ef8: ldr      x0, [x20]
075a8efc: ldr      w8, [x0, #0xe0]
075a8f00: cbnz     w8, #0x75a8f0c
075a8f04: bl       #0x39d35c4
075a8f08: ldr      x0, [x20]
075a8f0c: ldr      x8, [x0, #0xb8]
075a8f10: ldr      x0, [x8, #8]
075a8f14: cbz      x0, #0x75a8f98
075a8f18: ldr      x8, [x0]
075a8f1c: ldp      x9, x1, [x8, #0x1b8]
075a8f20: blr      x9
075a8f24: adrp     x8, #0x9b3f000
075a8f28: ldr      x8, [x8, #0xea8]
075a8f2c: mov      x20, x0
075a8f30: ldr      x8, [x8]
075a8f34: ldr      w9, [x8, #0xe0]
075a8f38: cbnz     w9, #0x75a8f44
075a8f3c: mov      x0, x8
075a8f40: bl       #0x39d35c4
075a8f44: mov      x0, x20
075a8f48: mov      x1, x19
075a8f4c: mov      x2, xzr
075a8f50: bl       #0x5bd1ea4
075a8f54: adrp     x8, #0x9b4b000
075a8f58: ldr      x8, [x8, #0x6d0]
075a8f5c: mov      x19, x0
075a8f60: ldr      x8, [x8]
075a8f64: ldr      w9, [x8, #0xe0]
075a8f68: cbnz     w9, #0x75a8f74
075a8f6c: mov      x0, x8
075a8f70: bl       #0x39d35c4
075a8f74: mov      x0, x19
075a8f78: mov      x1, xzr
075a8f7c: bl       #0x3c6cc5c
075a8f80: b        #0x75a8f88
075a8f84: mov      x0, xzr
075a8f88: ldp      x20, x19, [sp, #0x30]
075a8f8c: ldp      x30, x21, [sp, #0x20]
075a8f90: add      sp, sp, #0x40
075a8f94: ret      
075a8f98: bl       #0x39d36e4

// Oak.StaticDataRepository.IsBinaryVersion 0x75a8f9c
075a8f9c: stp      x30, x21, [sp, #-0x20]!
075a8fa0: stp      x20, x19, [sp, #0x10]
075a8fa4: adrp     x21, #0xa26e000
075a8fa8: ldrb     w8, [x21, #0x55c]
075a8fac: mov      x19, x1
075a8fb0: mov      x20, x0
075a8fb4: tbnz     w8, #0, #0x75a8fcc
075a8fb8: adrp     x0, #0x9be7000
075a8fbc: ldr      x0, [x0, #0x88]
075a8fc0: bl       #0x39d34bc
075a8fc4: mov      w8, #1
075a8fc8: strb     w8, [x21, #0x55c]
075a8fcc: mov      w0, #0x9d74
075a8fd0: mov      x1, xzr
075a8fd4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a8fd8: tbz      w0, #0, #0x75a9004
075a8fdc: mov      w0, #0x9d74
075a8fe0: mov      x1, xzr
075a8fe4: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a8fe8: cbz      x0, #0x75a9028
075a8fec: mov      x1, x20
075a8ff0: mov      x2, x19
075a8ff4: ldp      x20, x19, [sp, #0x10]
075a8ff8: mov      x3, xzr
075a8ffc: ldp      x30, x21, [sp], #0x20
075a9000: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
075a9004: cbz      x19, #0x75a9028
075a9008: adrp     x8, #0x9be7000
075a900c: ldr      x8, [x8, #0x88]
075a9010: mov      x0, x19
075a9014: ldp      x20, x19, [sp, #0x10]
075a9018: mov      x2, xzr
075a901c: ldr      x1, [x8]
075a9020: ldp      x30, x21, [sp], #0x20
075a9024: b        #0x5ac39dc
075a9028: bl       #0x39d36e4

// Oak.StaticDataRepository.NeedDecryptAndCopyFile 0x75a902c
075a902c: stp      x30, x21, [sp, #-0x20]!
075a9030: stp      x20, x19, [sp, #0x10]
075a9034: adrp     x21, #0xa26e000
075a9038: ldrb     w8, [x21, #0x55d]
075a903c: mov      x19, x1
075a9040: mov      x20, x0
075a9044: tbnz     w8, #0, #0x75a905c
075a9048: adrp     x0, #0x9ba8000
075a904c: ldr      x0, [x0, #0x3a0]
075a9050: bl       #0x39d34bc
075a9054: mov      w8, #1
075a9058: strb     w8, [x21, #0x55d]
075a905c: mov      w0, #0x9d77
075a9060: mov      x1, xzr
075a9064: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a9068: tbz      w0, #0, #0x75a9094
075a906c: mov      w0, #0x9d77
075a9070: mov      x1, xzr
075a9074: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a9078: cbz      x0, #0x75a90d8
075a907c: mov      x1, x20
075a9080: mov      x2, x19
075a9084: ldp      x20, x19, [sp, #0x10]
075a9088: mov      x3, xzr
075a908c: ldp      x30, x21, [sp], #0x20
075a9090: b        #0x860be34 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_15
075a9094: cbz      x19, #0x75a90d8
075a9098: adrp     x8, #0x9ba8000
075a909c: ldr      x8, [x8, #0x3a0]
075a90a0: mov      x0, x19
075a90a4: mov      x2, xzr
075a90a8: ldr      x1, [x8]
075a90ac: bl       #0x5abea34
075a90b0: tbz      w0, #0, #0x75a90c4
075a90b4: ldp      x20, x19, [sp, #0x10]
075a90b8: mov      w0, wzr
075a90bc: ldp      x30, x21, [sp], #0x20
075a90c0: ret      
075a90c4: mov      x0, x20
075a90c8: mov      x1, x19
075a90cc: ldp      x20, x19, [sp, #0x10]
075a90d0: ldp      x30, x21, [sp], #0x20
075a90d4: b        #0x75a8f9c ; Oak.StaticDataRepository.IsBinaryVersion
075a90d8: bl       #0x39d36e4

// Oak.StaticDataRepository.DecryptAndCopyFile 0x75a90dc
075a90dc: sub      sp, sp, #0x40
075a90e0: stp      x30, x23, [sp, #0x10]
075a90e4: stp      x22, x21, [sp, #0x20]
075a90e8: stp      x20, x19, [sp, #0x30]
075a90ec: adrp     x22, #0xa26e000
075a90f0: ldrb     w8, [x22, #0x55e]
075a90f4: mov      x19, x2
075a90f8: mov      x20, x1
075a90fc: mov      x21, x0
075a9100: tbnz     w8, #0, #0x75a913c
075a9104: adrp     x0, #0x9be7000
075a9108: ldr      x0, [x0, #0x90]
075a910c: bl       #0x39d34bc
075a9110: adrp     x0, #0x9b3f000
075a9114: ldr      x0, [x0, #0xed8]
075a9118: bl       #0x39d34bc
075a911c: adrp     x0, #0x9b3f000
075a9120: ldr      x0, [x0, #0xea8]
075a9124: bl       #0x39d34bc
075a9128: adrp     x0, #0x9b4e000
075a912c: ldr      x0, [x0, #0xfd8]
075a9130: bl       #0x39d34bc
075a9134: mov      w8, #1
075a9138: strb     w8, [x22, #0x55e]
075a913c: mov      w0, #0x9d78
075a9140: mov      x1, xzr
075a9144: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a9148: tbz      w0, #0, #0x75a9180
075a914c: mov      w0, #0x9d78
075a9150: mov      x1, xzr
075a9154: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a9158: cbz      x0, #0x75a9398
075a915c: mov      x1, x21
075a9160: mov      x2, x20
075a9164: mov      x3, x19
075a9168: ldp      x20, x19, [sp, #0x30]
075a916c: ldp      x22, x21, [sp, #0x20]
075a9170: ldp      x30, x23, [sp, #0x10]
075a9174: mov      x4, xzr
075a9178: add      sp, sp, #0x40
075a917c: b        #0x860c610 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_24
075a9180: adrp     x21, #0x9b4e000
075a9184: ldr      x21, [x21, #0xfd8]
075a9188: ldr      x0, [x21]
075a918c: ldr      w8, [x0, #0xe0]
075a9190: cbnz     w8, #0x75a919c
075a9194: bl       #0x39d35c4
075a9198: ldr      x0, [x21]
075a919c: adrp     x8, #0x9b3f000
075a91a0: ldr      x8, [x8, #0xea8]
075a91a4: ldr      x9, [x0, #0xb8]
075a91a8: ldr      x8, [x8]
075a91ac: ldr      x21, [x9, #0x10]
075a91b0: ldr      w10, [x8, #0xe0]
075a91b4: cbnz     w10, #0x75a91c0
075a91b8: mov      x0, x8
075a91bc: bl       #0x39d35c4
075a91c0: mov      x0, x21
075a91c4: mov      x1, x20
075a91c8: mov      x2, xzr
075a91cc: bl       #0x5bd1ea4
075a91d0: mov      x21, x0
075a91d4: mov      w1, #3
075a91d8: mov      x0, x19
075a91dc: mov      x2, xzr
075a91e0: bl       #0x5b9de1c
075a91e4: adrp     x8, #0x9be7000
075a91e8: ldr      x8, [x8, #0x90]
075a91ec: mov      x19, x0
075a91f0: ldr      x8, [x8]
075a91f4: mov      x0, x8
075a91f8: bl       #0x39d36d8
075a91fc: mov      x20, x0
075a9200: mov      x1, x19
075a9204: mov      w2, wzr
075a9208: mov      w3, wzr
075a920c: mov      w4, wzr
075a9210: mov      x5, xzr
075a9214: bl       #0x7c78c30 ; Foundations.EncryptStream..ctor
075a9218: mov      w1, #2
075a921c: mov      x0, x21
075a9220: mov      x2, xzr
075a9224: bl       #0x5b9de1c
075a9228: mov      x23, x0
075a922c: cbz      x20, #0x75a93a4
075a9230: mov      x0, x20
075a9234: mov      x1, x23
075a9238: mov      x2, xzr
075a923c: bl       #0x5bc4e00
075a9240: mov      x21, xzr
075a9244: cbz      x23, #0x75a92a8
075a9248: adrp     x10, #0x9b3f000
075a924c: ldr      x8, [x23]
075a9250: ldr      x10, [x10, #0xed8]
075a9254: ldrh     w9, [x8, #0x12e]
075a9258: ldr      x1, [x10]
075a925c: cbz      x9, #0x75a9280
075a9260: ldr      x10, [x8, #0xb0]
075a9264: add      x10, x10, #8
075a9268: ldur     x11, [x10, #-8]
075a926c: cmp      x11, x1
075a9270: b.eq     #0x75a9290
075a9274: subs     x9, x9, #1
075a9278: add      x10, x10, #0x10
075a927c: b.ne     #0x75a9268
075a9280: mov      x0, x23
075a9284: mov      w2, wzr
075a9288: bl       #0x39a94f0
075a928c: b        #0x75a929c
075a9290: ldrsw    x9, [x10]
075a9294: add      x8, x8, x9, lsl #4
075a9298: add      x0, x8, #0x138
075a929c: ldp      x8, x1, [x0]
075a92a0: mov      x0, x23
075a92a4: blr      x8
075a92a8: cbnz     x21, #0x75a93a8
075a92ac: mov      x23, xzr
075a92b0: cbz      x20, #0x75a9314
075a92b4: adrp     x10, #0x9b3f000
075a92b8: ldr      x8, [x20]
075a92bc: ldr      x10, [x10, #0xed8]
075a92c0: ldrh     w9, [x8, #0x12e]
075a92c4: ldr      x1, [x10]
075a92c8: cbz      x9, #0x75a92ec
075a92cc: ldr      x10, [x8, #0xb0]
075a92d0: add      x10, x10, #8
075a92d4: ldur     x11, [x10, #-8]
075a92d8: cmp      x11, x1
075a92dc: b.eq     #0x75a92fc
075a92e0: subs     x9, x9, #1
075a92e4: add      x10, x10, #0x10
075a92e8: b.ne     #0x75a92d4
075a92ec: mov      x0, x20
075a92f0: mov      w2, wzr
075a92f4: bl       #0x39a94f0
075a92f8: b        #0x75a9308
075a92fc: ldrsw    x9, [x10]
075a9300: add      x8, x8, x9, lsl #4
075a9304: add      x0, x8, #0x138
075a9308: ldp      x8, x1, [x0]
075a930c: mov      x0, x20
075a9310: blr      x8
075a9314: cbnz     x23, #0x75a93b0
075a9318: mov      x20, xzr
075a931c: cbz      x19, #0x75a9380
075a9320: adrp     x10, #0x9b3f000
075a9324: ldr      x8, [x19]
075a9328: ldr      x10, [x10, #0xed8]
075a932c: ldrh     w9, [x8, #0x12e]
075a9330: ldr      x1, [x10]
075a9334: cbz      x9, #0x75a9358
075a9338: ldr      x10, [x8, #0xb0]
075a933c: add      x10, x10, #8
075a9340: ldur     x11, [x10, #-8]
075a9344: cmp      x11, x1
075a9348: b.eq     #0x75a9368
075a934c: subs     x9, x9, #1
075a9350: add      x10, x10, #0x10
075a9354: b.ne     #0x75a9340
075a9358: mov      x0, x19
075a935c: mov      w2, wzr
075a9360: bl       #0x39a94f0
075a9364: b        #0x75a9374
075a9368: ldrsw    x9, [x10]
075a936c: add      x8, x8, x9, lsl #4
075a9370: add      x0, x8, #0x138
075a9374: ldp      x8, x1, [x0]
075a9378: mov      x0, x19
075a937c: blr      x8
075a9380: cbnz     x20, #0x75a939c
075a9384: ldp      x20, x19, [sp, #0x30]
075a9388: ldp      x22, x21, [sp, #0x20]
075a938c: ldp      x30, x23, [sp, #0x10]
075a9390: add      sp, sp, #0x40
075a9394: ret      
075a9398: bl       #0x39d36e4
075a939c: mov      x0, x20
075a93a0: bl       #0x39d36dc
075a93a4: bl       #0x39d36e4
075a93a8: mov      x0, x21
075a93ac: bl       #0x39d36dc
075a93b0: mov      x0, x23
075a93b4: bl       #0x39d36dc
075a93b8: b        #0x75a9484
075a93bc: mov      x22, x1
075a93c0: cmp      w22, #1
075a93c4: mov      x21, x0
075a93c8: b.ne     #0x75a93ec
075a93cc: mov      x0, x21
075a93d0: bl       #0x9749aa0
075a93d4: ldr      x8, [x0]
075a93d8: str      x8, [sp, #8]
075a93dc: bl       #0x9749ab0
075a93e0: ldr      x21, [sp, #8]
075a93e4: cbnz     x23, #0x75a9248
075a93e8: b        #0x75a92a8
075a93ec: str      xzr, [sp, #8]
075a93f0: cbz      x23, #0x75a9454
075a93f4: adrp     x10, #0x9b3f000
075a93f8: ldr      x8, [x23]
075a93fc: ldr      x10, [x10, #0xed8]
075a9400: ldrh     w9, [x8, #0x12e]
075a9404: ldr      x1, [x10]
075a9408: cbz      x9, #0x75a942c
075a940c: ldr      x10, [x8, #0xb0]
075a9410: add      x10, x10, #8
075a9414: ldur     x11, [x10, #-8]
075a9418: cmp      x11, x1
075a941c: b.eq     #0x75a943c
075a9420: subs     x9, x9, #1
075a9424: add      x10, x10, #0x10
075a9428: b.ne     #0x75a9414
075a942c: mov      x0, x23
075a9430: mov      w2, wzr
075a9434: bl       #0x39a94f0
075a9438: b        #0x75a9448
075a943c: ldrsw    x9, [x10]
075a9440: add      x8, x8, x9, lsl #4
075a9444: add      x0, x8, #0x138
075a9448: ldp      x8, x1, [x0]
075a944c: mov      x0, x23
075a9450: blr      x8
075a9454: ldr      x8, [sp, #8]
075a9458: cbz      x8, #0x75a948c
075a945c: ldr      x0, [sp, #8]
075a9460: bl       #0x39d36dc
075a9464: mov      x22, x1
075a9468: mov      x21, x0
075a946c: cbnz     x23, #0x75a93f4
075a9470: b        #0x75a9454
075a9474: b        #0x75a9478
075a9478: mov      x22, x1
075a947c: mov      x21, x0
075a9480: b        #0x75a9514
075a9484: mov      x22, x1
075a9488: mov      x21, x0
075a948c: cmp      w22, #1
075a9490: b.ne     #0x75a94a8
075a9494: mov      x0, x21
075a9498: bl       #0x9749aa0
075a949c: ldr      x23, [x0]
075a94a0: bl       #0x9749ab0
075a94a4: b        #0x75a92b0
075a94a8: mov      x23, xzr
075a94ac: cbz      x20, #0x75a9510
075a94b0: adrp     x10, #0x9b3f000
075a94b4: ldr      x8, [x20]
075a94b8: ldr      x10, [x10, #0xed8]
075a94bc: ldrh     w9, [x8, #0x12e]
075a94c0: ldr      x1, [x10]
075a94c4: cbz      x9, #0x75a94e8
075a94c8: ldr      x10, [x8, #0xb0]
075a94cc: add      x10, x10, #8
075a94d0: ldur     x11, [x10, #-8]
075a94d4: cmp      x11, x1
075a94d8: b.eq     #0x75a94f8
075a94dc: subs     x9, x9, #1
075a94e0: add      x10, x10, #0x10
075a94e4: b.ne     #0x75a94d0
075a94e8: mov      x0, x20
075a94ec: mov      w2, wzr
075a94f0: bl       #0x39a94f0
075a94f4: b        #0x75a9504
075a94f8: ldrsw    x9, [x10]
075a94fc: add      x8, x8, x9, lsl #4
075a9500: add      x0, x8, #0x138
075a9504: ldp      x8, x1, [x0]
075a9508: mov      x0, x20
075a950c: blr      x8
075a9510: cbnz     x23, #0x75a9538
075a9514: cmp      w22, #1
075a9518: b.ne     #0x75a9530
075a951c: mov      x0, x21
075a9520: bl       #0x9749aa0
075a9524: ldr      x20, [x0]
075a9528: bl       #0x9749ab0
075a952c: b        #0x75a931c
075a9530: mov      x20, xzr
075a9534: b        #0x75a9554
075a9538: mov      x0, x23
075a953c: bl       #0x39d36dc
075a9540: mov      x22, x1
075a9544: mov      x21, x0
075a9548: cbnz     x20, #0x75a94b0
075a954c: b        #0x75a9510
075a9550: mov      x21, x0
075a9554: cbz      x19, #0x75a95b8
075a9558: adrp     x10, #0x9b3f000
075a955c: ldr      x8, [x19]
075a9560: ldr      x10, [x10, #0xed8]
075a9564: ldrh     w9, [x8, #0x12e]
075a9568: ldr      x1, [x10]
075a956c: cbz      x9, #0x75a9590
075a9570: ldr      x10, [x8, #0xb0]
075a9574: add      x10, x10, #8
075a9578: ldur     x11, [x10, #-8]
075a957c: cmp      x11, x1
075a9580: b.eq     #0x75a95a0
075a9584: subs     x9, x9, #1
075a9588: add      x10, x10, #0x10
075a958c: b.ne     #0x75a9578
075a9590: mov      x0, x19
075a9594: mov      w2, wzr
075a9598: bl       #0x39a94f0
075a959c: b        #0x75a95ac
075a95a0: ldrsw    x9, [x10]
075a95a4: add      x8, x8, x9, lsl #4
075a95a8: add      x0, x8, #0x138
075a95ac: ldp      x8, x1, [x0]
075a95b0: mov      x0, x19
075a95b4: blr      x8
075a95b8: cbnz     x20, #0x75a95c4
075a95bc: mov      x0, x21
075a95c0: bl       #0x3ab82d0
075a95c4: mov      x0, x20
075a95c8: bl       #0x39d36dc
075a95cc: bl       #0x35bb99c

// Oak.StaticDataRepository.Load 0x75a95d0
075a95d0: sub      sp, sp, #0xe0
075a95d4: stp      x29, x30, [sp, #0x80]
075a95d8: stp      x28, x27, [sp, #0x90]
075a95dc: stp      x26, x25, [sp, #0xa0]
075a95e0: stp      x24, x23, [sp, #0xb0]
075a95e4: stp      x22, x21, [sp, #0xc0]
075a95e8: stp      x20, x19, [sp, #0xd0]
075a95ec: adrp     x20, #0xa26e000
075a95f0: ldrb     w8, [x20, #0x55f]
075a95f4: mov      x19, x0
075a95f8: tbnz     w8, #0, #0x75a9658
075a95fc: adrp     x0, #0x9be7000
075a9600: ldr      x0, [x0, #0x98]
075a9604: bl       #0x39d34bc
075a9608: adrp     x0, #0x9be7000
075a960c: ldr      x0, [x0, #0xa0]
075a9610: bl       #0x39d34bc
075a9614: adrp     x0, #0x9b4e000
075a9618: ldr      x0, [x0, #0xfd8]
075a961c: bl       #0x39d34bc
075a9620: adrp     x0, #0x9baa000
075a9624: ldr      x0, [x0, #0xc30]
075a9628: bl       #0x39d34bc
075a962c: adrp     x0, #0x9b4b000
075a9630: ldr      x0, [x0, #0x7c0]
075a9634: bl       #0x39d34bc
075a9638: adrp     x0, #0x9be7000
075a963c: ldr      x0, [x0, #0xa8]
075a9640: bl       #0x39d34bc
075a9644: adrp     x0, #0x9b3f000
075a9648: ldr      x0, [x0, #0xeb0]
075a964c: bl       #0x39d34bc
075a9650: mov      w8, #1
075a9654: strb     w8, [x20, #0x55f]
075a9658: mov      w0, #0x9d75
075a965c: mov      x1, xzr
075a9660: stp      xzr, xzr, [sp, #0x48]
075a9664: str      xzr, [sp, #0x58]
075a9668: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a966c: tbz      w0, #0, #0x75a9690
075a9670: mov      w0, #0x9d75
075a9674: mov      x1, xzr
075a9678: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a967c: cbz      x0, #0x75a99f8
075a9680: mov      x1, x19
075a9684: mov      x2, xzr
075a9688: bl       #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
075a968c: b        #0x75a99c4
075a9690: adrp     x8, #0x9be7000
075a9694: ldr      x8, [x8, #0xa8]
075a9698: adrp     x20, #0x9b4e000
075a969c: add      x0, sp, #0x48
075a96a0: mov      w2, #1
075a96a4: ldr      x1, [x8]
075a96a8: ldr      x20, [x20, #0xfd8]
075a96ac: mov      w3, #1
075a96b0: mov      x4, xzr
075a96b4: bl       #0x72e2d78 ; MyProfiler..ctor
075a96b8: ldr      x0, [x20]
075a96bc: ldr      w8, [x0, #0xe0]
075a96c0: cbnz     w8, #0x75a96c8
075a96c4: bl       #0x39d35c4
075a96c8: adrp     x21, #0xa26a000
075a96cc: ldrb     w8, [x21, #0x6ff]
075a96d0: cbnz     w8, #0x75a96e8
075a96d4: adrp     x0, #0x9b4e000
075a96d8: ldr      x0, [x0, #0xfd8]
075a96dc: bl       #0x39d34bc
075a96e0: mov      w8, #1
075a96e4: strb     w8, [x21, #0x6ff]
075a96e8: ldr      x0, [x20]
075a96ec: ldr      w8, [x0, #0xe0]
075a96f0: cbnz     w8, #0x75a96fc
075a96f4: bl       #0x39d35c4
075a96f8: ldr      x0, [x20]
075a96fc: ldr      x8, [x0, #0xb8]
075a9700: ldr      x0, [x8, #8]
075a9704: cbz      x0, #0x75a99fc
075a9708: ldr      x8, [x0]
075a970c: ldp      x9, x1, [x8, #0x1d8]
075a9710: blr      x9
075a9714: tbz      w0, #0, #0x75a99b8
075a9718: ldr      x0, [x19, #0x10]
075a971c: cbz      x0, #0x75a9a00
075a9720: adrp     x8, #0x9be7000
075a9724: ldr      x8, [x8, #0xa0]
075a9728: ldr      x1, [x8]
075a972c: bl       #0x5584d58
075a9730: ldr      x0, [x20]
075a9734: ldr      w8, [x0, #0xe0]
075a9738: cbnz     w8, #0x75a9740
075a973c: bl       #0x39d35c4
075a9740: ldrb     w8, [x21, #0x6ff]
075a9744: cbnz     w8, #0x75a975c
075a9748: adrp     x0, #0x9b4e000
075a974c: ldr      x0, [x0, #0xfd8]
075a9750: bl       #0x39d34bc
075a9754: mov      w8, #1
075a9758: strb     w8, [x21, #0x6ff]
075a975c: ldr      x0, [x20]
075a9760: ldr      w8, [x0, #0xe0]
075a9764: cbnz     w8, #0x75a9770
075a9768: bl       #0x39d35c4
075a976c: ldr      x0, [x20]
075a9770: ldr      x8, [x0, #0xb8]
075a9774: ldr      x0, [x8, #8]
075a9778: cbz      x0, #0x75a9a04
075a977c: mov      x1, xzr
075a9780: bl       #0x5b9cc6c
075a9784: mov      x20, x0
075a9788: cbz      x0, #0x75a9a08
075a978c: ldr      w8, [x20, #0x18]
075a9790: cmp      w8, #1
075a9794: b.lt     #0x75a99b8
075a9798: adrp     x28, #0x9baa000
075a979c: adrp     x29, #0x9b3f000
075a97a0: adrp     x21, #0x9b4b000
075a97a4: adrp     x22, #0x9be7000
075a97a8: adrp     x23, #0x9b3f000
075a97ac: ldr      x28, [x28, #0xc30]
075a97b0: ldr      x29, [x29, #0xeb0]
075a97b4: ldr      x21, [x21, #0x7c0]
075a97b8: ldr      x22, [x22, #0x98]
075a97bc: ldr      x23, [x23, #0x7b8]
075a97c0: mov      w27, wzr
075a97c4: cmp      w27, w8
075a97c8: b.hs     #0x75a99ec
075a97cc: add      x8, x20, w27, sxtw #3
075a97d0: ldr      x24, [x8, #0x20]
075a97d4: cbz      x24, #0x75a99e8
075a97d8: ldr      x8, [x24]
075a97dc: ldp      x9, x1, [x8, #0x1c8]
075a97e0: mov      x0, x24
075a97e4: blr      x9
075a97e8: cbz      x0, #0x75a99e4
075a97ec: ldr      x1, [x28]
075a97f0: mov      x2, xzr
075a97f4: bl       #0x5abe03c
075a97f8: tbnz     w0, #0, #0x75a98e8
075a97fc: ldr      x8, [x24]
075a9800: ldp      x9, x1, [x8, #0x1c8]
075a9804: mov      x0, x24
075a9808: blr      x9
075a980c: cbz      x0, #0x75a99f0
075a9810: ldr      x1, [x29]
075a9814: mov      x2, xzr
075a9818: bl       #0x5abea34
075a981c: tbnz     w0, #0, #0x75a98e8
075a9820: ldr      x8, [x24]
075a9824: ldp      x9, x1, [x8, #0x1c8]
075a9828: mov      x0, x24
075a982c: blr      x9
075a9830: cbz      x0, #0x75a99f4
075a9834: ldr      x1, [x21]
075a9838: mov      x2, xzr
075a983c: bl       #0x5abe03c
075a9840: tbnz     w0, #0, #0x75a98e8
075a9844: ldr      x8, [x24]
075a9848: ldr      x25, [x19, #0x10]
075a984c: ldp      x9, x1, [x8, #0x1c8]
075a9850: mov      x0, x24
075a9854: blr      x9
075a9858: mov      x26, x0
075a985c: mov      x8, sp
075a9860: mov      x0, x19
075a9864: mov      x1, x24
075a9868: bl       #0x75a9af4 ; Oak.StaticDataRepository.LoadSingle
075a986c: ldp      q0, q1, [sp]
075a9870: stp      q0, q1, [sp, #0x20]
075a9874: cbz      x25, #0x75a98fc
075a9878: ldp      q0, q1, [sp, #0x20]
075a987c: ldr      x3, [x22]
075a9880: stp      q0, q1, [sp, #0x60]
075a9884: add      x2, sp, #0x60
075a9888: mov      x0, x25
075a988c: mov      x1, x26
075a9890: bl       #0x5584b1c
075a9894: ldr      x8, [x24]
075a9898: ldp      x9, x1, [x8, #0x1c8]
075a989c: mov      x0, x24
075a98a0: blr      x9
075a98a4: mov      x1, x0
075a98a8: mov      x0, x19
075a98ac: bl       #0x75a902c ; Oak.StaticDataRepository.NeedDecryptAndCopyFile
075a98b0: tbz      w0, #0, #0x75a98e8
075a98b4: ldr      x8, [x24]
075a98b8: ldp      x9, x1, [x8, #0x1c8]
075a98bc: mov      x0, x24
075a98c0: blr      x9
075a98c4: ldr      x8, [x24]
075a98c8: mov      x25, x0
075a98cc: ldp      x9, x1, [x8, #0x1b8]
075a98d0: mov      x0, x24
075a98d4: blr      x9
075a98d8: mov      x2, x0
075a98dc: mov      x0, x19
075a98e0: mov      x1, x25
075a98e4: bl       #0x75a90dc ; Oak.StaticDataRepository.DecryptAndCopyFile
075a98e8: ldr      w8, [x20, #0x18]
075a98ec: add      w27, w27, #1
075a98f0: cmp      w27, w8
075a98f4: b.lt     #0x75a97c4
075a98f8: b        #0x75a99b8
075a98fc: bl       #0x39d36e4
075a9900: b        #0x75a9a2c
075a9904: b        #0x75a991c
075a9908: b        #0x75a991c
075a990c: b        #0x75a991c
075a9910: b        #0x75a991c
075a9914: b        #0x75a991c
075a9918: b        #0x75a991c
075a991c: mov      x25, x1
075a9920: mov      x24, x0
075a9924: cmp      w25, #1
075a9928: b.ne     #0x75a9a94
075a992c: mov      x0, x24
075a9930: bl       #0x9749aa0
075a9934: mov      x24, x0
075a9938: adrp     x0, #0x9b4a000
075a993c: ldr      x0, [x0, #0x940]
075a9940: bl       #0x39d34d0
075a9944: ldr      x8, [x24]
075a9948: ldr      x1, [x8]
075a994c: bl       #0x39d3b10
075a9950: tbz      w0, #0, #0x75a995c
075a9954: mov      w25, #9
075a9958: b        #0x75a9978
075a995c: mov      x0, x23
075a9960: bl       #0x39d34d0
075a9964: ldr      x8, [x24]
075a9968: ldr      x1, [x8]
075a996c: bl       #0x39d3b10
075a9970: tbz      w0, #0, #0x75a9a0c
075a9974: mov      w25, #0xa
075a9978: ldr      x24, [x24]
075a997c: bl       #0x9749ab0
075a9980: cmp      w25, #9
075a9984: b.eq     #0x75a98e8
075a9988: cmp      w25, #0xa
075a998c: b.ne     #0x75a99b8
075a9990: adrp     x0, #0x9b45000
075a9994: ldr      x0, [x0, #0x2b0]
075a9998: bl       #0x39d34d0
075a999c: ldr      w8, [x0, #0xe0]
075a99a0: cbnz     w8, #0x75a99a8
075a99a4: bl       #0x39d35c4
075a99a8: mov      x0, x24
075a99ac: mov      x1, xzr
075a99b0: bl       #0x3c4df18
075a99b4: b        #0x75a98e8
075a99b8: add      x0, sp, #0x48
075a99bc: mov      x1, xzr
075a99c0: bl       #0x72e2e90 ; MyProfiler.Dispose
075a99c4: ldp      x20, x19, [sp, #0xd0]
075a99c8: ldp      x22, x21, [sp, #0xc0]
075a99cc: ldp      x24, x23, [sp, #0xb0]
075a99d0: ldp      x26, x25, [sp, #0xa0]
075a99d4: ldp      x28, x27, [sp, #0x90]
075a99d8: ldp      x29, x30, [sp, #0x80]
075a99dc: add      sp, sp, #0xe0
075a99e0: ret      
075a99e4: bl       #0x39d36e4
075a99e8: bl       #0x39d36e4
075a99ec: bl       #0x39d36ec
075a99f0: bl       #0x39d36e4
075a99f4: bl       #0x39d36e4
075a99f8: bl       #0x39d36e4
075a99fc: bl       #0x39d36e4
075a9a00: bl       #0x39d36e4
075a9a04: bl       #0x39d36e4
075a9a08: bl       #0x39d36e4
075a9a0c: mov      w0, #8
075a9a10: bl       #0x9749ac0
075a9a14: ldr      x8, [x24]
075a9a18: str      x8, [x0]
075a9a1c: adrp     x1, #0x974f000
075a9a20: add      x1, x1, #0xe98
075a9a24: mov      x2, xzr
075a9a28: bl       #0x9749ad0
075a9a2c: b        #0x75a9a38
075a9a30: b        #0x75a9a8c
075a9a34: b        #0x75a9a8c
075a9a38: mov      x25, x1
075a9a3c: mov      x24, x0
075a9a40: bl       #0x9749ab0
075a9a44: b        #0x75a9a94
075a9a48: b        #0x75a9a8c
075a9a4c: b        #0x75a9a8c
075a9a50: b        #0x75a9a8c
075a9a54: b        #0x75a9a8c
075a9a58: b        #0x75a9a8c
075a9a5c: b        #0x75a9a8c
075a9a60: b        #0x75a9a8c
075a9a64: b        #0x75a9a8c
075a9a68: b        #0x75a9a8c
075a9a6c: b        #0x75a9a8c
075a9a70: b        #0x75a9a8c
075a9a74: b        #0x75a9a8c
075a9a78: b        #0x75a9a8c
075a9a7c: b        #0x75a9a8c
075a9a80: b        #0x75a9a8c
075a9a84: b        #0x75a9a8c
075a9a88: b        #0x75a9a8c
075a9a8c: mov      x25, x1
075a9a90: mov      x24, x0
075a9a94: cmp      w25, #1
075a9a98: b.ne     #0x75a9ac4
075a9a9c: mov      x0, x24
075a9aa0: bl       #0x9749aa0
075a9aa4: ldr      x19, [x0]
075a9aa8: bl       #0x9749ab0
075a9aac: add      x0, sp, #0x48
075a9ab0: mov      x1, xzr
075a9ab4: bl       #0x72e2e90 ; MyProfiler.Dispose
075a9ab8: cbz      x19, #0x75a99c4
075a9abc: mov      x0, x19
075a9ac0: bl       #0x39d36dc
075a9ac4: mov      x19, xzr
075a9ac8: b        #0x75a9ad0
075a9acc: mov      x24, x0
075a9ad0: add      x0, sp, #0x48
075a9ad4: mov      x1, xzr
075a9ad8: bl       #0x72e2e90 ; MyProfiler.Dispose
075a9adc: cbnz     x19, #0x75a9ae8
075a9ae0: mov      x0, x24
075a9ae4: bl       #0x3ab82d0
075a9ae8: mov      x0, x19
075a9aec: bl       #0x39d36dc
075a9af0: bl       #0x35bb99c

// Oak.StaticDataRepository.LoadSingle 0x75a9af4
075a9af4: sub      sp, sp, #0x90
075a9af8: str      x30, [sp, #0x30]
075a9afc: stp      x28, x27, [sp, #0x40]
075a9b00: stp      x26, x25, [sp, #0x50]
075a9b04: stp      x24, x23, [sp, #0x60]
075a9b08: stp      x22, x21, [sp, #0x70]
075a9b0c: stp      x20, x19, [sp, #0x80]
075a9b10: adrp     x22, #0xa26e000
075a9b14: ldrb     w9, [x22, #0x560]
075a9b18: mov      x20, x1
075a9b1c: mov      x21, x0
075a9b20: mov      x19, x8
075a9b24: tbnz     w9, #0, #0x75a9b78
075a9b28: adrp     x0, #0x9b3f000
075a9b2c: ldr      x0, [x0, #0x750]
075a9b30: bl       #0x39d34bc
075a9b34: adrp     x0, #0x9be7000
075a9b38: ldr      x0, [x0, #0x90]
075a9b3c: bl       #0x39d34bc
075a9b40: adrp     x0, #0x9b4b000
075a9b44: ldr      x0, [x0, #0x6d0]
075a9b48: bl       #0x39d34bc
075a9b4c: adrp     x0, #0x9b3f000
075a9b50: ldr      x0, [x0, #0xed8]
075a9b54: bl       #0x39d34bc
075a9b58: adrp     x0, #0x9b4c000
075a9b5c: ldr      x0, [x0, #0x38]
075a9b60: bl       #0x39d34bc
075a9b64: adrp     x0, #0x9b5d000
075a9b68: ldr      x0, [x0, #0x288]
075a9b6c: bl       #0x39d34bc
075a9b70: mov      w8, #1
075a9b74: strb     w8, [x22, #0x560]
075a9b78: mov      w0, #0x9d76
075a9b7c: mov      x1, xzr
075a9b80: str      wzr, [sp, #0x3c]
075a9b84: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075a9b88: tbz      w0, #0, #0x75a9bbc
075a9b8c: mov      w0, #0x9d76
075a9b90: mov      x1, xzr
075a9b94: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075a9b98: cbz      x0, #0x75a9fb8
075a9b9c: add      x8, sp, #0x10
075a9ba0: mov      x1, x21
075a9ba4: mov      x2, x20
075a9ba8: mov      x3, xzr
075a9bac: bl       #0x8739610 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_4683
075a9bb0: ldp      q1, q0, [sp, #0x10]
075a9bb4: stp      q1, q0, [x19]
075a9bb8: b        #0x75a9f98
075a9bbc: cbz      x20, #0x75a9fb8
075a9bc0: ldr      x8, [x20]
075a9bc4: mov      x0, x20
075a9bc8: ldp      x9, x1, [x8, #0x1c8]
075a9bcc: blr      x9
075a9bd0: mov      x1, x0
075a9bd4: mov      x0, x21
075a9bd8: bl       #0x75a8f9c ; Oak.StaticDataRepository.IsBinaryVersion
075a9bdc: tbz      w0, #0, #0x75a9d2c
075a9be0: ldr      x8, [x20]
075a9be4: mov      x0, x20
075a9be8: ldp      x9, x1, [x8, #0x1b8]
075a9bec: blr      x9
075a9bf0: adrp     x8, #0x9b4b000
075a9bf4: ldr      x8, [x8, #0x6d0]
075a9bf8: mov      x21, x0
075a9bfc: ldr      x8, [x8]
075a9c00: ldr      w9, [x8, #0xe0]
075a9c04: cbnz     w9, #0x75a9c10
075a9c08: mov      x0, x8
075a9c0c: bl       #0x39d35c4
075a9c10: mov      x0, x21
075a9c14: mov      x1, xzr
075a9c18: bl       #0x3c6d008
075a9c1c: str      w0, [sp, #0x3c]
075a9c20: adrp     x9, #0x9b5d000
075a9c24: ldr      x8, [x20]
075a9c28: ldr      x9, [x9, #0x288]
075a9c2c: mov      x0, x20
075a9c30: ldr      x21, [x9]
075a9c34: ldp      x9, x1, [x8, #0x1b8]
075a9c38: blr      x9
075a9c3c: mov      w1, #3
075a9c40: mov      x2, xzr
075a9c44: bl       #0x5b9de1c
075a9c48: adrp     x8, #0x9be7000
075a9c4c: ldr      x8, [x8, #0x90]
075a9c50: mov      x22, x0
075a9c54: ldr      x8, [x8]
075a9c58: mov      x0, x8
075a9c5c: bl       #0x39d36d8
075a9c60: mov      x24, x0
075a9c64: mov      x1, x22
075a9c68: mov      w2, wzr
075a9c6c: mov      w3, wzr
075a9c70: mov      w4, wzr
075a9c74: mov      x5, xzr
075a9c78: bl       #0x7c78c30 ; Foundations.EncryptStream..ctor
075a9c7c: adrp     x8, #0x9b4c000
075a9c80: ldr      x8, [x8, #0x38]
075a9c84: ldr      x0, [x8]
075a9c88: bl       #0x39d36d8
075a9c8c: mov      x26, x0
075a9c90: mov      x1, xzr
075a9c94: bl       #0x5b0679c
075a9c98: cbz      x26, #0x75a9fd4
075a9c9c: mov      x0, x26
075a9ca0: mov      x1, x24
075a9ca4: mov      x2, xzr
075a9ca8: bl       #0x5aeeb44
075a9cac: adrp     x8, #0x9b3f000
075a9cb0: ldr      x8, [x8, #0x750]
075a9cb4: mov      x23, x0
075a9cb8: ldr      x0, [x8]
075a9cbc: ldr      w8, [x0, #0xe0]
075a9cc0: cbnz     w8, #0x75a9cc8
075a9cc4: bl       #0x39d35c4
075a9cc8: mov      x0, x23
075a9ccc: mov      x1, xzr
075a9cd0: bl       #0x5bc1b9c
075a9cd4: mov      x23, x0
075a9cd8: mov      w28, wzr
075a9cdc: mov      x25, xzr
075a9ce0: mov      w27, #4
075a9ce4: adrp     x10, #0x9b3f000
075a9ce8: ldr      x8, [x26]
075a9cec: ldr      x10, [x10, #0xed8]
075a9cf0: ldrh     w9, [x8, #0x12e]
075a9cf4: ldr      x1, [x10]
075a9cf8: cbz      x9, #0x75a9d1c
075a9cfc: ldr      x10, [x8, #0xb0]
075a9d00: add      x10, x10, #8
075a9d04: ldur     x11, [x10, #-8]
075a9d08: cmp      x11, x1
075a9d0c: b.eq     #0x75a9d34
075a9d10: subs     x9, x9, #1
075a9d14: add      x10, x10, #0x10
075a9d18: b.ne     #0x75a9d04
075a9d1c: mov      x0, x26
075a9d20: mov      w2, wzr
075a9d24: bl       #0x39a94f0
075a9d28: b        #0x75a9d40
075a9d2c: mov      x23, xzr
075a9d30: b        #0x75a9e4c
075a9d34: ldrsw    x9, [x10]
075a9d38: add      x8, x8, x9, lsl #4
075a9d3c: add      x0, x8, #0x138
075a9d40: ldp      x8, x1, [x0]
075a9d44: mov      x0, x26
075a9d48: blr      x8
075a9d4c: cbnz     x25, #0x75a9fe0
075a9d50: mov      x26, xzr
075a9d54: tbz      w28, #0, #0x75a9d60
075a9d58: mov      w27, wzr
075a9d5c: mov      x25, x26
075a9d60: cbz      x24, #0x75a9dc4
075a9d64: adrp     x10, #0x9b3f000
075a9d68: ldr      x8, [x24]
075a9d6c: ldr      x10, [x10, #0xed8]
075a9d70: ldrh     w9, [x8, #0x12e]
075a9d74: ldr      x1, [x10]
075a9d78: cbz      x9, #0x75a9d9c
075a9d7c: ldr      x10, [x8, #0xb0]
075a9d80: add      x10, x10, #8
075a9d84: ldur     x11, [x10, #-8]
075a9d88: cmp      x11, x1
075a9d8c: b.eq     #0x75a9dac
075a9d90: subs     x9, x9, #1
075a9d94: add      x10, x10, #0x10
075a9d98: b.ne     #0x75a9d84
075a9d9c: mov      x0, x24
075a9da0: mov      w2, wzr
075a9da4: bl       #0x39a94f0
075a9da8: b        #0x75a9db8
075a9dac: ldrsw    x9, [x10]
075a9db0: add      x8, x8, x9, lsl #4
075a9db4: add      x0, x8, #0x138
075a9db8: ldp      x8, x1, [x0]
075a9dbc: mov      x0, x24
075a9dc0: blr      x8
075a9dc4: cbnz     x25, #0x75a9fd8
075a9dc8: mov      x24, xzr
075a9dcc: cbnz     w27, #0x75a9dd8
075a9dd0: mov      w27, wzr
075a9dd4: mov      x25, x24
075a9dd8: cbz      x22, #0x75a9e3c
075a9ddc: adrp     x10, #0x9b3f000
075a9de0: ldr      x8, [x22]
075a9de4: ldr      x10, [x10, #0xed8]
075a9de8: ldrh     w9, [x8, #0x12e]
075a9dec: ldr      x1, [x10]
075a9df0: cbz      x9, #0x75a9e14
075a9df4: ldr      x10, [x8, #0xb0]
075a9df8: add      x10, x10, #8
075a9dfc: ldur     x11, [x10, #-8]
075a9e00: cmp      x11, x1
075a9e04: b.eq     #0x75a9e24
075a9e08: subs     x9, x9, #1
075a9e0c: add      x10, x10, #0x10
075a9e10: b.ne     #0x75a9dfc
075a9e14: mov      x0, x22
075a9e18: mov      w2, wzr
075a9e1c: bl       #0x39a94f0
075a9e20: b        #0x75a9e30
075a9e24: ldrsw    x9, [x10]
075a9e28: add      x8, x8, x9, lsl #4
075a9e2c: add      x0, x8, #0x138
075a9e30: ldp      x8, x1, [x0]
075a9e34: mov      x0, x22
075a9e38: blr      x8
075a9e3c: cbnz     x25, #0x75a9fcc
075a9e40: cmp      w27, #4
075a9e44: b.eq     #0x75a9f78
075a9e48: cbnz     w27, #0x75a9f98
075a9e4c: ldr      x8, [x20]
075a9e50: mov      x0, x20
075a9e54: ldp      x9, x1, [x8, #0x1b8]
075a9e58: blr      x9
075a9e5c: adrp     x8, #0x9b4b000
075a9e60: ldr      x8, [x8, #0x6d0]
075a9e64: mov      x21, x0
075a9e68: ldr      x8, [x8]
075a9e6c: ldr      w9, [x8, #0xe0]
075a9e70: cbnz     w9, #0x75a9e7c
075a9e74: mov      x0, x8
075a9e78: bl       #0x39d35c4
075a9e7c: add      x1, sp, #0x3c
075a9e80: mov      x0, x21
075a9e84: mov      x2, xzr
075a9e88: bl       #0x3c6c974
075a9e8c: adrp     x8, #0x9b4c000
075a9e90: ldr      x8, [x8, #0x38]
075a9e94: mov      x21, x0
075a9e98: ldr      x8, [x8]
075a9e9c: mov      x0, x8
075a9ea0: bl       #0x39d36d8
075a9ea4: mov      x1, xzr
075a9ea8: mov      x22, x0
075a9eac: bl       #0x5b0679c
075a9eb0: mov      x0, xzr
075a9eb4: bl       #0x5adc15c
075a9eb8: cbz      x0, #0x75a9fc4
075a9ebc: ldr      x8, [x0]
075a9ec0: ldr      x9, [x8, #0x268]
075a9ec4: ldr      x2, [x8, #0x270]
075a9ec8: mov      x1, x21
075a9ecc: blr      x9
075a9ed0: mov      x1, x0
075a9ed4: cbz      x22, #0x75a9fc8
075a9ed8: mov      x0, x22
075a9edc: mov      x2, xzr
075a9ee0: bl       #0x5aee744
075a9ee4: adrp     x8, #0x9b3f000
075a9ee8: ldr      x8, [x8, #0x750]
075a9eec: mov      x24, x0
075a9ef0: ldr      x0, [x8]
075a9ef4: ldr      w8, [x0, #0xe0]
075a9ef8: cbnz     w8, #0x75a9f00
075a9efc: bl       #0x39d35c4
075a9f00: mov      x0, x24
075a9f04: mov      x1, xzr
075a9f08: bl       #0x5bc1b9c
075a9f0c: mov      x24, xzr
075a9f10: mov      x23, x0
075a9f14: adrp     x10, #0x9b3f000
075a9f18: ldr      x8, [x22]
075a9f1c: ldr      x10, [x10, #0xed8]
075a9f20: ldrh     w9, [x8, #0x12e]
075a9f24: ldr      x1, [x10]
075a9f28: cbz      x9, #0x75a9f4c
075a9f2c: ldr      x10, [x8, #0xb0]
075a9f30: add      x10, x10, #8
075a9f34: ldur     x11, [x10, #-8]
075a9f38: cmp      x11, x1
075a9f3c: b.eq     #0x75a9f5c
075a9f40: subs     x9, x9, #1
075a9f44: add      x10, x10, #0x10
075a9f48: b.ne     #0x75a9f34
075a9f4c: mov      x0, x22
075a9f50: mov      w2, wzr
075a9f54: bl       #0x39a94f0
075a9f58: b        #0x75a9f68
075a9f5c: ldrsw    x9, [x10]
075a9f60: add      x8, x8, x9, lsl #4
075a9f64: add      x0, x8, #0x138
075a9f68: ldp      x8, x1, [x0]
075a9f6c: mov      x0, x22
075a9f70: blr      x8
075a9f74: cbnz     x24, #0x75a9fbc
075a9f78: ldr      x8, [x20]
075a9f7c: mov      x0, x20
075a9f80: ldp      x9, x1, [x8, #0x1c8]
075a9f84: blr      x9
075a9f88: ldr      w8, [sp, #0x3c]
075a9f8c: stp      x0, x21, [x19]
075a9f90: str      x23, [x19, #0x18]
075a9f94: stp      w8, wzr, [x19, #0x10]
075a9f98: ldp      x20, x19, [sp, #0x80]
075a9f9c: ldp      x22, x21, [sp, #0x70]
075a9fa0: ldp      x24, x23, [sp, #0x60]
075a9fa4: ldp      x26, x25, [sp, #0x50]
075a9fa8: ldp      x28, x27, [sp, #0x40]
075a9fac: ldr      x30, [sp, #0x30]
075a9fb0: add      sp, sp, #0x90
075a9fb4: ret      
075a9fb8: bl       #0x39d36e4
075a9fbc: mov      x0, x24
075a9fc0: bl       #0x39d36dc
075a9fc4: bl       #0x39d36e4
075a9fc8: bl       #0x39d36e4
075a9fcc: mov      x0, x25
075a9fd0: bl       #0x39d36dc
075a9fd4: bl       #0x39d36e4
075a9fd8: mov      x0, x25
075a9fdc: bl       #0x39d36dc
075a9fe0: mov      x0, x25
075a9fe4: bl       #0x39d36dc
075a9fe8: b        #0x75a9ffc
075a9fec: b        #0x75a9ffc
075a9ff0: b        #0x75aa0f0
075a9ff4: b        #0x75aa0f0
075a9ff8: b        #0x75aa0f0
075a9ffc: mov      x27, x1
075aa000: mov      x25, x0
075aa004: cmp      w27, #1
075aa008: b.ne     #0x75aa038
075aa00c: mov      x0, x25
075aa010: bl       #0x9749aa0
075aa014: ldr      x8, [x0]
075aa018: str      x8, [sp, #8]
075aa01c: bl       #0x9749ab0
075aa020: ldr      x25, [sp, #8]
075aa024: mov      x23, xzr
075aa028: mov      w27, wzr
075aa02c: mov      w28, #1
075aa030: cbnz     x26, #0x75a9ce4
075aa034: b        #0x75a9d4c
075aa038: str      xzr, [sp, #8]
075aa03c: cbz      x26, #0x75aa0a0
075aa040: adrp     x10, #0x9b3f000
075aa044: ldr      x8, [x26]
075aa048: ldr      x10, [x10, #0xed8]
075aa04c: ldrh     w9, [x8, #0x12e]
075aa050: ldr      x1, [x10]
075aa054: cbz      x9, #0x75aa078
075aa058: ldr      x10, [x8, #0xb0]
075aa05c: add      x10, x10, #8
075aa060: ldur     x11, [x10, #-8]
075aa064: cmp      x11, x1
075aa068: b.eq     #0x75aa088
075aa06c: subs     x9, x9, #1
075aa070: add      x10, x10, #0x10
075aa074: b.ne     #0x75aa060
075aa078: mov      x0, x26
075aa07c: mov      w2, wzr
075aa080: bl       #0x39a94f0
075aa084: b        #0x75aa094
075aa088: ldrsw    x9, [x10]
075aa08c: add      x8, x8, x9, lsl #4
075aa090: add      x0, x8, #0x138
075aa094: ldp      x8, x1, [x0]
075aa098: mov      x0, x26
075aa09c: blr      x8
075aa0a0: ldr      x8, [sp, #8]
075aa0a4: cbz      x8, #0x75aa0cc
075aa0a8: ldr      x0, [sp, #8]
075aa0ac: bl       #0x39d36dc
075aa0b0: mov      x27, x1
075aa0b4: mov      x25, x0
075aa0b8: cbnz     x26, #0x75aa040
075aa0bc: b        #0x75aa0a0
075aa0c0: b        #0x75aa0f0
075aa0c4: mov      x27, x1
075aa0c8: mov      x25, x0
075aa0cc: mov      x23, xzr
075aa0d0: b        #0x75aa198
075aa0d4: mov      x27, x1
075aa0d8: mov      x25, x0
075aa0dc: mov      x23, xzr
075aa0e0: b        #0x75aa220
075aa0e4: mov      x27, x1
075aa0e8: mov      x25, x0
075aa0ec: b        #0x75aa220
075aa0f0: mov      x25, x0
075aa0f4: cmp      w1, #1
075aa0f8: b.ne     #0x75aa114
075aa0fc: mov      x0, x25
075aa100: bl       #0x9749aa0
075aa104: ldr      x24, [x0]
075aa108: bl       #0x9749ab0
075aa10c: cbnz     x22, #0x75a9f14
075aa110: b        #0x75a9f74
075aa114: mov      x24, xzr
075aa118: b        #0x75aa120
075aa11c: mov      x25, x0
075aa120: cbz      x22, #0x75aa184
075aa124: adrp     x10, #0x9b3f000
075aa128: ldr      x8, [x22]
075aa12c: ldr      x10, [x10, #0xed8]
075aa130: ldrh     w9, [x8, #0x12e]
075aa134: ldr      x1, [x10]
075aa138: cbz      x9, #0x75aa15c
075aa13c: ldr      x10, [x8, #0xb0]
075aa140: add      x10, x10, #8
075aa144: ldur     x11, [x10, #-8]
075aa148: cmp      x11, x1
075aa14c: b.eq     #0x75aa16c
075aa150: subs     x9, x9, #1
075aa154: add      x10, x10, #0x10
075aa158: b.ne     #0x75aa144
075aa15c: mov      x0, x22
075aa160: mov      w2, wzr
075aa164: bl       #0x39a94f0
075aa168: b        #0x75aa178
075aa16c: ldrsw    x9, [x10]
075aa170: add      x8, x8, x9, lsl #4
075aa174: add      x0, x8, #0x138
075aa178: ldp      x8, x1, [x0]
075aa17c: mov      x0, x22
075aa180: blr      x8
075aa184: cbz      x24, #0x75aa2c8
075aa188: mov      x0, x24
075aa18c: bl       #0x39d36dc
075aa190: mov      x27, x1
075aa194: mov      x25, x0
075aa198: cmp      w27, #1
075aa19c: b.ne     #0x75aa1b4
075aa1a0: mov      x0, x25
075aa1a4: bl       #0x9749aa0
075aa1a8: ldr      x26, [x0]
075aa1ac: bl       #0x9749ab0
075aa1b0: b        #0x75a9d58
075aa1b4: mov      x26, xzr
075aa1b8: cbz      x24, #0x75aa21c
075aa1bc: adrp     x10, #0x9b3f000
075aa1c0: ldr      x8, [x24]
075aa1c4: ldr      x10, [x10, #0xed8]
075aa1c8: ldrh     w9, [x8, #0x12e]
075aa1cc: ldr      x1, [x10]
075aa1d0: cbz      x9, #0x75aa1f4
075aa1d4: ldr      x10, [x8, #0xb0]
075aa1d8: add      x10, x10, #8
075aa1dc: ldur     x11, [x10, #-8]
075aa1e0: cmp      x11, x1
075aa1e4: b.eq     #0x75aa204
075aa1e8: subs     x9, x9, #1
075aa1ec: add      x10, x10, #0x10
075aa1f0: b.ne     #0x75aa1dc
075aa1f4: mov      x0, x24
075aa1f8: mov      w2, wzr
075aa1fc: bl       #0x39a94f0
075aa200: b        #0x75aa210
075aa204: ldrsw    x9, [x10]
075aa208: add      x8, x8, x9, lsl #4
075aa20c: add      x0, x8, #0x138
075aa210: ldp      x8, x1, [x0]
075aa214: mov      x0, x24
075aa218: blr      x8
075aa21c: cbnz     x26, #0x75aa244
075aa220: cmp      w27, #1
075aa224: b.ne     #0x75aa23c
075aa228: mov      x0, x25
075aa22c: bl       #0x9749aa0
075aa230: ldr      x24, [x0]
075aa234: bl       #0x9749ab0
075aa238: b        #0x75a9dd0
075aa23c: mov      x24, xzr
075aa240: b        #0x75aa260
075aa244: mov      x0, x26
075aa248: bl       #0x39d36dc
075aa24c: mov      x27, x1
075aa250: mov      x25, x0
075aa254: cbnz     x24, #0x75aa1bc
075aa258: b        #0x75aa21c
075aa25c: mov      x25, x0
075aa260: cbz      x22, #0x75aa2c4
075aa264: adrp     x10, #0x9b3f000
075aa268: ldr      x8, [x22]
075aa26c: ldr      x10, [x10, #0xed8]
075aa270: ldrh     w9, [x8, #0x12e]
075aa274: ldr      x1, [x10]
075aa278: cbz      x9, #0x75aa29c
075aa27c: ldr      x10, [x8, #0xb0]
075aa280: add      x10, x10, #8
075aa284: ldur     x11, [x10, #-8]
075aa288: cmp      x11, x1
075aa28c: b.eq     #0x75aa2ac
075aa290: subs     x9, x9, #1
075aa294: add      x10, x10, #0x10
075aa298: b.ne     #0x75aa284
075aa29c: mov      x0, x22
075aa2a0: mov      w2, wzr
075aa2a4: bl       #0x39a94f0
075aa2a8: b        #0x75aa2b8
075aa2ac: ldrsw    x9, [x10]
075aa2b0: add      x8, x8, x9, lsl #4
075aa2b4: add      x0, x8, #0x138
075aa2b8: ldp      x8, x1, [x0]
075aa2bc: mov      x0, x22
075aa2c0: blr      x8
075aa2c4: cbnz     x24, #0x75aa2d0
075aa2c8: mov      x0, x25
075aa2cc: bl       #0x3ab82d0
075aa2d0: mov      x0, x24
075aa2d4: bl       #0x39d36dc
075aa2d8: bl       #0x35bb99c

// Oak.StaticDataRepository.Update 0x75aa2dc
075aa2dc: str      x30, [sp, #-0x30]!
075aa2e0: stp      x22, x21, [sp, #0x10]
075aa2e4: stp      x20, x19, [sp, #0x20]
075aa2e8: adrp     x22, #0xa26e000
075aa2ec: ldrb     w8, [x22, #0x561]
075aa2f0: mov      x19, x2
075aa2f4: mov      x20, x1
075aa2f8: mov      x21, x0
075aa2fc: tbnz     w8, #0, #0x75aa314
075aa300: adrp     x0, #0x9be7000
075aa304: ldr      x0, [x0, #0xb0]
075aa308: bl       #0x39d34bc
075aa30c: mov      w8, #1
075aa310: strb     w8, [x22, #0x561]
075aa314: mov      w0, #0x9d60
075aa318: mov      x1, xzr
075aa31c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aa320: tbz      w0, #0, #0x75aa354
075aa324: mov      w0, #0x9d60
075aa328: mov      x1, xzr
075aa32c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aa330: cbz      x0, #0x75aa390
075aa334: mov      x1, x21
075aa338: mov      x2, x20
075aa33c: mov      x3, x19
075aa340: ldp      x20, x19, [sp, #0x20]
075aa344: ldp      x22, x21, [sp, #0x10]
075aa348: mov      x4, xzr
075aa34c: ldr      x30, [sp], #0x30
075aa350: b        #0x863c56c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_802
075aa354: adrp     x8, #0x9be7000
075aa358: ldr      x8, [x8, #0xb0]
075aa35c: ldr      x0, [x8]
075aa360: bl       #0x39d36d8
075aa364: mov      x1, xzr
075aa368: mov      x22, x0
075aa36c: bl       #0x5c9bdb4
075aa370: str      wzr, [x22, #0x10]
075aa374: stp      x21, x20, [x22, #0x20]
075aa378: str      x19, [x22, #0x30]
075aa37c: mov      x0, x22
075aa380: ldp      x20, x19, [sp, #0x20]
075aa384: ldp      x22, x21, [sp, #0x10]
075aa388: ldr      x30, [sp], #0x30
075aa38c: ret      
075aa390: bl       #0x39d36e4

// Oak.StaticDataRepository.UpdateInternal 0x75aa3bc
075aa3bc: str      x30, [sp, #-0x30]!
075aa3c0: stp      x22, x21, [sp, #0x10]
075aa3c4: stp      x20, x19, [sp, #0x20]
075aa3c8: adrp     x22, #0xa26e000
075aa3cc: ldrb     w8, [x22, #0x562]
075aa3d0: mov      x19, x2
075aa3d4: mov      x20, x1
075aa3d8: mov      x21, x0
075aa3dc: tbnz     w8, #0, #0x75aa3f4
075aa3e0: adrp     x0, #0x9be7000
075aa3e4: ldr      x0, [x0, #0xb8]
075aa3e8: bl       #0x39d34bc
075aa3ec: mov      w8, #1
075aa3f0: strb     w8, [x22, #0x562]
075aa3f4: mov      w0, #0x9d65
075aa3f8: mov      x1, xzr
075aa3fc: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aa400: tbz      w0, #0, #0x75aa434
075aa404: mov      w0, #0x9d65
075aa408: mov      x1, xzr
075aa40c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aa410: cbz      x0, #0x75aa470
075aa414: mov      x1, x21
075aa418: mov      x2, x20
075aa41c: mov      x3, x19
075aa420: ldp      x20, x19, [sp, #0x20]
075aa424: ldp      x22, x21, [sp, #0x10]
075aa428: mov      x4, xzr
075aa42c: ldr      x30, [sp], #0x30
075aa430: b        #0x863c56c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_802
075aa434: adrp     x8, #0x9be7000
075aa438: ldr      x8, [x8, #0xb8]
075aa43c: ldr      x0, [x8]
075aa440: bl       #0x39d36d8
075aa444: mov      x1, xzr
075aa448: mov      x22, x0
075aa44c: bl       #0x5c9bdb4
075aa450: str      wzr, [x22, #0x10]
075aa454: stp      x20, x21, [x22, #0x20]
075aa458: str      x19, [x22, #0x40]
075aa45c: mov      x0, x22
075aa460: ldp      x20, x19, [sp, #0x20]
075aa464: ldp      x22, x21, [sp, #0x10]
075aa468: ldr      x30, [sp], #0x30
075aa46c: ret      
075aa470: bl       #0x39d36e4

// Oak.StaticDataRepository.Save 0x75aa49c
075aa49c: sub      sp, sp, #0x40
075aa4a0: stp      x30, x21, [sp, #0x20]
075aa4a4: stp      x20, x19, [sp, #0x30]
075aa4a8: adrp     x21, #0xa26e000
075aa4ac: ldrb     w8, [x21, #0x563]
075aa4b0: mov      x19, x1
075aa4b4: mov      x20, x0
075aa4b8: tbnz     w8, #0, #0x75aa4d0
075aa4bc: adrp     x0, #0x9be7000
075aa4c0: ldr      x0, [x0, #0xc0]
075aa4c4: bl       #0x39d34bc
075aa4c8: mov      w8, #1
075aa4cc: strb     w8, [x21, #0x563]
075aa4d0: mov      w0, #0x9d71
075aa4d4: mov      x1, xzr
075aa4d8: stp      xzr, xzr, [sp, #8]
075aa4dc: str      xzr, [sp, #0x18]
075aa4e0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aa4e4: tbz      w0, #0, #0x75aa50c
075aa4e8: mov      w0, #0x9d71
075aa4ec: mov      x1, xzr
075aa4f0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aa4f4: cbz      x0, #0x75aa554
075aa4f8: mov      x1, x20
075aa4fc: mov      x2, x19
075aa500: mov      x3, xzr
075aa504: bl       #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
075aa508: b        #0x75aa544
075aa50c: adrp     x8, #0x9be7000
075aa510: ldr      x8, [x8, #0xc0]
075aa514: add      x0, sp, #8
075aa518: mov      w2, #1
075aa51c: mov      w3, wzr
075aa520: ldr      x1, [x8]
075aa524: mov      x4, xzr
075aa528: bl       #0x72e2d78 ; MyProfiler..ctor
075aa52c: mov      x0, x20
075aa530: mov      x1, x19
075aa534: bl       #0x75aa5bc ; Oak.StaticDataRepository.SaveInternal
075aa538: add      x0, sp, #8
075aa53c: mov      x1, xzr
075aa540: bl       #0x72e2e90 ; MyProfiler.Dispose
075aa544: ldp      x20, x19, [sp, #0x30]
075aa548: ldp      x30, x21, [sp, #0x20]
075aa54c: add      sp, sp, #0x40
075aa550: ret      
075aa554: bl       #0x39d36e4
075aa558: cmp      w1, #1
075aa55c: mov      x20, x0
075aa560: b.ne     #0x75aa58c
075aa564: mov      x0, x20
075aa568: bl       #0x9749aa0
075aa56c: ldr      x19, [x0]
075aa570: bl       #0x9749ab0
075aa574: add      x0, sp, #8
075aa578: mov      x1, xzr
075aa57c: bl       #0x72e2e90 ; MyProfiler.Dispose
075aa580: cbz      x19, #0x75aa544
075aa584: mov      x0, x19
075aa588: bl       #0x39d36dc
075aa58c: mov      x19, xzr
075aa590: b        #0x75aa598
075aa594: mov      x20, x0
075aa598: add      x0, sp, #8
075aa59c: mov      x1, xzr
075aa5a0: bl       #0x72e2e90 ; MyProfiler.Dispose
075aa5a4: cbnz     x19, #0x75aa5b0
075aa5a8: mov      x0, x20
075aa5ac: bl       #0x3ab82d0
075aa5b0: mov      x0, x19
075aa5b4: bl       #0x39d36dc
075aa5b8: bl       #0x35bb99c

// Oak.StaticDataRepository.SaveInternal 0x75aa5bc
075aa5bc: sub      sp, sp, #0x90
075aa5c0: stp      x29, x30, [sp, #0x30]
075aa5c4: stp      x28, x27, [sp, #0x40]
075aa5c8: stp      x26, x25, [sp, #0x50]
075aa5cc: stp      x24, x23, [sp, #0x60]
075aa5d0: stp      x22, x21, [sp, #0x70]
075aa5d4: stp      x20, x19, [sp, #0x80]
075aa5d8: adrp     x21, #0xa26e000
075aa5dc: ldrb     w8, [x21, #0x564]
075aa5e0: mov      x19, x1
075aa5e4: mov      x20, x0
075aa5e8: tbnz     w8, #0, #0x75aa690
075aa5ec: adrp     x0, #0x9b3f000
075aa5f0: ldr      x0, [x0, #0x750]
075aa5f4: bl       #0x39d34bc
075aa5f8: adrp     x0, #0x9be7000
075aa5fc: ldr      x0, [x0, #0xc8]
075aa600: bl       #0x39d34bc
075aa604: adrp     x0, #0x9b4b000
075aa608: ldr      x0, [x0, #0x6d0]
075aa60c: bl       #0x39d34bc
075aa610: adrp     x0, #0x9b3f000
075aa614: ldr      x0, [x0, #0xed8]
075aa618: bl       #0x39d34bc
075aa61c: adrp     x0, #0x9be7000
075aa620: ldr      x0, [x0, #0xd0]
075aa624: bl       #0x39d34bc
075aa628: adrp     x0, #0x9be7000
075aa62c: ldr      x0, [x0, #0xd8]
075aa630: bl       #0x39d34bc
075aa634: adrp     x0, #0x9b43000
075aa638: ldr      x0, [x0, #0x1d8]
075aa63c: bl       #0x39d34bc
075aa640: adrp     x0, #0x9b40000
075aa644: ldr      x0, [x0, #0x4a0]
075aa648: bl       #0x39d34bc
075aa64c: adrp     x0, #0x9b3f000
075aa650: ldr      x0, [x0, #0xea8]
075aa654: bl       #0x39d34bc
075aa658: adrp     x0, #0x9b4e000
075aa65c: ldr      x0, [x0, #0xfd8]
075aa660: bl       #0x39d34bc
075aa664: adrp     x0, #0x9b5d000
075aa668: ldr      x0, [x0, #0x288]
075aa66c: bl       #0x39d34bc
075aa670: adrp     x0, #0x9ba8000
075aa674: ldr      x0, [x0, #0x3a0]
075aa678: bl       #0x39d34bc
075aa67c: adrp     x0, #0x9be7000
075aa680: ldr      x0, [x0, #0xe0]
075aa684: bl       #0x39d34bc
075aa688: mov      w8, #1
075aa68c: strb     w8, [x21, #0x564]
075aa690: mov      w0, #0x9d72
075aa694: mov      x1, xzr
075aa698: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aa69c: tbz      w0, #0, #0x75aa6dc
075aa6a0: mov      w0, #0x9d72
075aa6a4: mov      x1, xzr
075aa6a8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aa6ac: cbz      x0, #0x75aabc0
075aa6b0: mov      x1, x20
075aa6b4: mov      x2, x19
075aa6b8: ldp      x20, x19, [sp, #0x80]
075aa6bc: ldp      x22, x21, [sp, #0x70]
075aa6c0: ldp      x24, x23, [sp, #0x60]
075aa6c4: ldp      x26, x25, [sp, #0x50]
075aa6c8: ldp      x28, x27, [sp, #0x40]
075aa6cc: ldp      x29, x30, [sp, #0x30]
075aa6d0: mov      x3, xzr
075aa6d4: add      sp, sp, #0x90
075aa6d8: b        #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
075aa6dc: adrp     x8, #0x9b40000
075aa6e0: ldr      x8, [x8, #0x4a0]
075aa6e4: ldr      x0, [x8]
075aa6e8: ldr      w8, [x0, #0xe0]
075aa6ec: cbnz     w8, #0x75aa6f4
075aa6f0: bl       #0x39d35c4
075aa6f4: mov      w1, #1
075aa6f8: mov      x0, x19
075aa6fc: mov      w2, wzr
075aa700: mov      x3, xzr
075aa704: bl       #0x3addedc
075aa708: mov      x19, x0
075aa70c: mov      x0, xzr
075aa710: bl       #0x5adc15c
075aa714: cbz      x0, #0x75aabc0
075aa718: ldr      x8, [x0]
075aa71c: mov      x1, x19
075aa720: ldr      x9, [x8, #0x388]
075aa724: ldr      x2, [x8, #0x390]
075aa728: blr      x9
075aa72c: adrp     x21, #0x9b4e000
075aa730: ldr      x21, [x21, #0xfd8]
075aa734: mov      x19, x0
075aa738: ldr      x8, [x21]
075aa73c: ldr      w9, [x8, #0xe0]
075aa740: cbnz     w9, #0x75aa74c
075aa744: mov      x0, x8
075aa748: bl       #0x39d35c4
075aa74c: adrp     x8, #0xa26a000
075aa750: ldrb     w8, [x8, #0x6ff]
075aa754: cbnz     w8, #0x75aa770
075aa758: adrp     x0, #0x9b4e000
075aa75c: ldr      x0, [x0, #0xfd8]
075aa760: bl       #0x39d34bc
075aa764: mov      w8, #1
075aa768: adrp     x9, #0xa26a000
075aa76c: strb     w8, [x9, #0x6ff]
075aa770: ldr      x0, [x21]
075aa774: ldr      w8, [x0, #0xe0]
075aa778: cbnz     w8, #0x75aa784
075aa77c: bl       #0x39d35c4
075aa780: ldr      x0, [x21]
075aa784: ldr      x8, [x0, #0xb8]
075aa788: ldr      x0, [x8, #8]
075aa78c: cbz      x0, #0x75aabc0
075aa790: mov      x1, xzr
075aa794: bl       #0x5b9cc40
075aa798: mov      x0, x19
075aa79c: mov      x1, xzr
075aa7a0: bl       #0x68b61d8 ; Oak.ApiConnection.GetStaticDataItems
075aa7a4: cbz      x0, #0x75aabc0
075aa7a8: adrp     x10, #0x9be7000
075aa7ac: ldr      x8, [x0]
075aa7b0: ldr      x10, [x10, #0xd0]
075aa7b4: mov      x19, x0
075aa7b8: ldrh     w9, [x8, #0x12e]
075aa7bc: ldr      x1, [x10]
075aa7c0: cbz      x9, #0x75aa7e4
075aa7c4: ldr      x10, [x8, #0xb0]
075aa7c8: add      x10, x10, #8
075aa7cc: ldur     x11, [x10, #-8]
075aa7d0: cmp      x11, x1
075aa7d4: b.eq     #0x75aa7f4
075aa7d8: subs     x9, x9, #1
075aa7dc: add      x10, x10, #0x10
075aa7e0: b.ne     #0x75aa7cc
075aa7e4: mov      x0, x19
075aa7e8: mov      w2, wzr
075aa7ec: bl       #0x39a94f0
075aa7f0: b        #0x75aa800
075aa7f4: ldrsw    x9, [x10]
075aa7f8: add      x8, x8, x9, lsl #4
075aa7fc: add      x0, x8, #0x138
075aa800: ldp      x8, x1, [x0]
075aa804: mov      x0, x19
075aa808: blr      x8
075aa80c: mov      x19, x0
075aa810: cbz      x0, #0x75aabc4
075aa814: adrp     x27, #0x9b43000
075aa818: adrp     x29, #0x9ba8000
075aa81c: adrp     x26, #0x9b3f000
075aa820: ldr      x27, [x27, #0x1d8]
075aa824: ldr      x29, [x29, #0x3a0]
075aa828: ldr      x26, [x26, #0xea8]
075aa82c: ldr      x8, [x19]
075aa830: ldr      x1, [x27]
075aa834: ldrh     w9, [x8, #0x12e]
075aa838: cbz      x9, #0x75aa85c
075aa83c: ldr      x10, [x8, #0xb0]
075aa840: add      x10, x10, #8
075aa844: ldur     x11, [x10, #-8]
075aa848: cmp      x11, x1
075aa84c: b.eq     #0x75aa86c
075aa850: subs     x9, x9, #1
075aa854: add      x10, x10, #0x10
075aa858: b.ne     #0x75aa844
075aa85c: mov      x0, x19
075aa860: mov      w2, wzr
075aa864: bl       #0x39a94f0
075aa868: b        #0x75aa878
075aa86c: ldrsw    x9, [x10]
075aa870: add      x8, x8, x9, lsl #4
075aa874: add      x0, x8, #0x138
075aa878: ldp      x8, x1, [x0]
075aa87c: mov      x0, x19
075aa880: blr      x8
075aa884: tbz      w0, #0, #0x75aab24
075aa888: ldr      x8, [x19]
075aa88c: adrp     x10, #0x9be7000
075aa890: ldrh     w9, [x8, #0x12e]
075aa894: ldr      x10, [x10, #0xd8]
075aa898: ldr      x1, [x10]
075aa89c: cbz      x9, #0x75aa8c0
075aa8a0: ldr      x10, [x8, #0xb0]
075aa8a4: add      x10, x10, #8
075aa8a8: ldur     x11, [x10, #-8]
075aa8ac: cmp      x11, x1
075aa8b0: b.eq     #0x75aa8d0
075aa8b4: subs     x9, x9, #1
075aa8b8: add      x10, x10, #0x10
075aa8bc: b.ne     #0x75aa8a8
075aa8c0: mov      x0, x19
075aa8c4: mov      w2, wzr
075aa8c8: bl       #0x39a94f0
075aa8cc: b        #0x75aa8dc
075aa8d0: ldrsw    x9, [x10]
075aa8d4: add      x8, x8, x9, lsl #4
075aa8d8: add      x0, x8, #0x138
075aa8dc: ldp      x9, x1, [x0]
075aa8e0: add      x8, sp, #0x10
075aa8e4: mov      x0, x19
075aa8e8: blr      x9
075aa8ec: ldr      x22, [sp, #0x10]
075aa8f0: cbz      x22, #0x75aabb0
075aa8f4: ldr      x23, [sp, #0x18]
075aa8f8: ldr      d0, [sp, #0x20]
075aa8fc: ldr      x28, [sp, #0x28]
075aa900: ldr      x1, [x29]
075aa904: str      q0, [sp]
075aa908: mov      x0, x22
075aa90c: mov      x2, xzr
075aa910: bl       #0x5abea34
075aa914: tbz      w0, #0, #0x75aa924
075aa918: mov      w8, #1
075aa91c: strb     w8, [x20, #0x22]
075aa920: b        #0x75aa948
075aa924: adrp     x8, #0x9be7000
075aa928: ldr      x8, [x8, #0xe0]
075aa92c: ldr      x1, [x8]
075aa930: mov      x0, x22
075aa934: mov      x2, xzr
075aa938: bl       #0x5aaf83c
075aa93c: tbz      w0, #0, #0x75aa948
075aa940: str      x23, [x20, #0x18]
075aa944: b        #0x75aa82c
075aa948: ldr      x0, [x21]
075aa94c: ldr      w8, [x0, #0xe0]
075aa950: cbnz     w8, #0x75aa958
075aa954: bl       #0x39d35c4
075aa958: adrp     x8, #0xa26a000
075aa95c: ldrb     w8, [x8, #0x6ff]
075aa960: cbnz     w8, #0x75aa978
075aa964: mov      x0, x21
075aa968: bl       #0x39d34bc
075aa96c: adrp     x8, #0xa26a000
075aa970: mov      w9, #1
075aa974: strb     w9, [x8, #0x6ff]
075aa978: ldr      x0, [x21]
075aa97c: ldr      w8, [x0, #0xe0]
075aa980: cbnz     w8, #0x75aa98c
075aa984: bl       #0x39d35c4
075aa988: ldr      x0, [x21]
075aa98c: ldr      x8, [x0, #0xb8]
075aa990: ldr      x0, [x8, #8]
075aa994: cbz      x0, #0x75aabb4
075aa998: ldr      x8, [x0]
075aa99c: ldp      x9, x1, [x8, #0x1b8]
075aa9a0: blr      x9
075aa9a4: mov      x24, x0
075aa9a8: ldr      x0, [x26]
075aa9ac: ldr      w8, [x0, #0xe0]
075aa9b0: cbnz     w8, #0x75aa9b8
075aa9b4: bl       #0x39d35c4
075aa9b8: mov      x0, x24
075aa9bc: mov      x1, x22
075aa9c0: mov      x2, xzr
075aa9c4: bl       #0x5bd1ea4
075aa9c8: mov      x24, x0
075aa9cc: mov      x0, x20
075aa9d0: mov      x1, x22
075aa9d4: bl       #0x75a8f9c ; Oak.StaticDataRepository.IsBinaryVersion
075aa9d8: tbz      w0, #0, #0x75aaac0
075aa9dc: adrp     x8, #0x9b3f000
075aa9e0: ldr      x8, [x8, #0x750]
075aa9e4: ldr      x0, [x8]
075aa9e8: ldr      w8, [x0, #0xe0]
075aa9ec: cbnz     w8, #0x75aa9f4
075aa9f0: bl       #0x39d35c4
075aa9f4: mov      x0, x23
075aa9f8: mov      x1, xzr
075aa9fc: bl       #0x5bc2694
075aaa00: adrp     x8, #0x9b4b000
075aaa04: ldr      x8, [x8, #0x6d0]
075aaa08: mov      x23, x0
075aaa0c: ldr      x0, [x8]
075aaa10: ldr      w8, [x0, #0xe0]
075aaa14: cbnz     w8, #0x75aaa1c
075aaa18: bl       #0x39d35c4
075aaa1c: ldr      q0, [sp]
075aaa20: fmov     w25, s0
075aaa24: mov      x0, x24
075aaa28: mov      x1, x23
075aaa2c: mov      w2, w25
075aaa30: mov      x3, xzr
075aaa34: bl       #0x3c6aff0
075aaa38: ldr      x0, [x21]
075aaa3c: ldr      w8, [x0, #0xe0]
075aaa40: cbnz     w8, #0x75aaa4c
075aaa44: bl       #0x39d35c4
075aaa48: ldr      x0, [x21]
075aaa4c: ldr      x8, [x26]
075aaa50: ldr      x9, [x0, #0xb8]
075aaa54: ldr      w10, [x8, #0xe0]
075aaa58: ldr      x24, [x9, #0x10]
075aaa5c: cbnz     w10, #0x75aaa68
075aaa60: mov      x0, x8
075aaa64: bl       #0x39d35c4
075aaa68: mov      x0, x24
075aaa6c: mov      x1, x22
075aaa70: mov      x2, xzr
075aaa74: bl       #0x5bd1ea4
075aaa78: mov      x1, x23
075aaa7c: mov      x2, xzr
075aaa80: bl       #0x5b9ec18
075aaa84: ldr      x0, [x20, #0x10]
075aaa88: cbz      x0, #0x75aabb8
075aaa8c: adrp     x8, #0x9b5d000
075aaa90: ldr      x8, [x8, #0x288]
075aaa94: adrp     x9, #0x9be7000
075aaa98: ldr      x8, [x8]
075aaa9c: ldr      x9, [x9, #0xc8]
075aaaa0: stp      w25, wzr, [sp, #0x20]
075aaaa4: str      x28, [sp, #0x28]
075aaaa8: stp      x22, x8, [sp, #0x10]
075aaaac: ldr      x3, [x9]
075aaab0: add      x2, sp, #0x10
075aaab4: mov      x1, x22
075aaab8: bl       #0x5584ae4
075aaabc: b        #0x75aa82c
075aaac0: adrp     x8, #0x9b4b000
075aaac4: ldr      x8, [x8, #0x6d0]
075aaac8: ldr      x0, [x8]
075aaacc: ldr      w8, [x0, #0xe0]
075aaad0: cbnz     w8, #0x75aaad8
075aaad4: bl       #0x39d35c4
075aaad8: ldr      q0, [sp]
075aaadc: fmov     w2, s0
075aaae0: mov      x0, x24
075aaae4: mov      x1, x23
075aaae8: mov      x3, xzr
075aaaec: bl       #0x3c6ae50
075aaaf0: ldr      x0, [x20, #0x10]
075aaaf4: cbz      x0, #0x75aabbc
075aaaf8: adrp     x8, #0x9be7000
075aaafc: ldr      x8, [x8, #0xc8]
075aab00: ldr      q0, [sp]
075aab04: stp      x22, x23, [sp, #0x10]
075aab08: str      x28, [sp, #0x28]
075aab0c: ldr      x3, [x8]
075aab10: str      d0, [sp, #0x20]
075aab14: add      x2, sp, #0x10
075aab18: mov      x1, x22
075aab1c: bl       #0x5584ae4
075aab20: b        #0x75aa82c
075aab24: mov      x21, xzr
075aab28: cbz      x19, #0x75aab8c
075aab2c: adrp     x10, #0x9b3f000
075aab30: ldr      x8, [x19]
075aab34: ldr      x10, [x10, #0xed8]
075aab38: ldrh     w9, [x8, #0x12e]
075aab3c: ldr      x1, [x10]
075aab40: cbz      x9, #0x75aab64
075aab44: ldr      x10, [x8, #0xb0]
075aab48: add      x10, x10, #8
075aab4c: ldur     x11, [x10, #-8]
075aab50: cmp      x11, x1
075aab54: b.eq     #0x75aab74
075aab58: subs     x9, x9, #1
075aab5c: add      x10, x10, #0x10
075aab60: b.ne     #0x75aab4c
075aab64: mov      x0, x19
075aab68: mov      w2, wzr
075aab6c: bl       #0x39a94f0
075aab70: b        #0x75aab80
075aab74: ldrsw    x9, [x10]
075aab78: add      x8, x8, x9, lsl #4
075aab7c: add      x0, x8, #0x138
075aab80: ldp      x8, x1, [x0]
075aab84: mov      x0, x19
075aab88: blr      x8
075aab8c: cbnz     x21, #0x75aabc8
075aab90: ldp      x20, x19, [sp, #0x80]
075aab94: ldp      x22, x21, [sp, #0x70]
075aab98: ldp      x24, x23, [sp, #0x60]
075aab9c: ldp      x26, x25, [sp, #0x50]
075aaba0: ldp      x28, x27, [sp, #0x40]
075aaba4: ldp      x29, x30, [sp, #0x30]
075aaba8: add      sp, sp, #0x90
075aabac: ret      
075aabb0: bl       #0x39d36e4
075aabb4: bl       #0x39d36e4
075aabb8: bl       #0x39d36e4
075aabbc: bl       #0x39d36e4
075aabc0: bl       #0x39d36e4
075aabc4: bl       #0x39d36e4
075aabc8: mov      x0, x21
075aabcc: bl       #0x39d36dc
075aabd0: b        #0x75aac2c
075aabd4: b        #0x75aac2c
075aabd8: b        #0x75aac2c
075aabdc: b        #0x75aac2c
075aabe0: b        #0x75aac2c
075aabe4: b        #0x75aac2c
075aabe8: b        #0x75aac2c
075aabec: b        #0x75aac2c
075aabf0: b        #0x75aac2c
075aabf4: b        #0x75aac2c
075aabf8: b        #0x75aac2c
075aabfc: b        #0x75aac2c
075aac00: b        #0x75aac2c
075aac04: b        #0x75aac2c
075aac08: b        #0x75aac2c
075aac0c: b        #0x75aac2c
075aac10: b        #0x75aac2c
075aac14: b        #0x75aac2c
075aac18: b        #0x75aac2c
075aac1c: b        #0x75aac2c
075aac20: b        #0x75aac2c
075aac24: b        #0x75aac2c
075aac28: b        #0x75aac2c
075aac2c: mov      x20, x0
075aac30: cmp      w1, #1
075aac34: b.ne     #0x75aac4c
075aac38: mov      x0, x20
075aac3c: bl       #0x9749aa0
075aac40: ldr      x21, [x0]
075aac44: bl       #0x9749ab0
075aac48: b        #0x75aab28
075aac4c: mov      x21, xzr
075aac50: b        #0x75aac58
075aac54: mov      x20, x0
075aac58: cbz      x19, #0x75aacbc
075aac5c: adrp     x10, #0x9b3f000
075aac60: ldr      x8, [x19]
075aac64: ldr      x10, [x10, #0xed8]
075aac68: ldrh     w9, [x8, #0x12e]
075aac6c: ldr      x1, [x10]
075aac70: cbz      x9, #0x75aac94
075aac74: ldr      x10, [x8, #0xb0]
075aac78: add      x10, x10, #8
075aac7c: ldur     x11, [x10, #-8]
075aac80: cmp      x11, x1
075aac84: b.eq     #0x75aaca4
075aac88: subs     x9, x9, #1
075aac8c: add      x10, x10, #0x10
075aac90: b.ne     #0x75aac7c
075aac94: mov      x0, x19
075aac98: mov      w2, wzr
075aac9c: bl       #0x39a94f0
075aaca0: b        #0x75aacb0
075aaca4: ldrsw    x9, [x10]
075aaca8: add      x8, x8, x9, lsl #4
075aacac: add      x0, x8, #0x138
075aacb0: ldp      x8, x1, [x0]
075aacb4: mov      x0, x19
075aacb8: blr      x8
075aacbc: cbnz     x21, #0x75aacc8
075aacc0: mov      x0, x20
075aacc4: bl       #0x3ab82d0
075aacc8: mov      x0, x21
075aaccc: bl       #0x39d36dc
075aacd0: bl       #0x35bb99c

// Oak.StaticDataRepository.Apply 0x75aacd4
075aacd4: str      x30, [sp, #-0x30]!
075aacd8: stp      x22, x21, [sp, #0x10]
075aacdc: stp      x20, x19, [sp, #0x20]
075aace0: adrp     x22, #0xa26e000
075aace4: ldrb     w8, [x22, #0x565]
075aace8: mov      x19, x2
075aacec: mov      x20, x1
075aacf0: mov      x21, x0
075aacf4: tbnz     w8, #0, #0x75aad0c
075aacf8: adrp     x0, #0x9be7000
075aacfc: ldr      x0, [x0, #0xe8]
075aad00: bl       #0x39d34bc
075aad04: mov      w8, #1
075aad08: strb     w8, [x22, #0x565]
075aad0c: mov      w0, #0x9de6
075aad10: mov      x1, xzr
075aad14: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aad18: tbz      w0, #0, #0x75aad4c
075aad1c: mov      w0, #0x9de6
075aad20: mov      x1, xzr
075aad24: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aad28: cbz      x0, #0x75aad88
075aad2c: mov      x1, x21
075aad30: mov      x2, x20
075aad34: mov      x3, x19
075aad38: ldp      x20, x19, [sp, #0x20]
075aad3c: ldp      x22, x21, [sp, #0x10]
075aad40: mov      x4, xzr
075aad44: ldr      x30, [sp], #0x30
075aad48: b        #0x863c56c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_802
075aad4c: adrp     x8, #0x9be7000
075aad50: ldr      x8, [x8, #0xe8]
075aad54: ldr      x0, [x8]
075aad58: bl       #0x39d36d8
075aad5c: mov      x1, xzr
075aad60: mov      x22, x0
075aad64: bl       #0x5c9bdb4
075aad68: str      wzr, [x22, #0x10]
075aad6c: stp      x21, x20, [x22, #0x20]
075aad70: str      x19, [x22, #0x30]
075aad74: mov      x0, x22
075aad78: ldp      x20, x19, [sp, #0x20]
075aad7c: ldp      x22, x21, [sp, #0x10]
075aad80: ldr      x30, [sp], #0x30
075aad84: ret      
075aad88: bl       #0x39d36e4

// Oak.StaticDataRepository.ApplyInternal 0x75aadb4
075aadb4: str      x30, [sp, #-0x30]!
075aadb8: stp      x22, x21, [sp, #0x10]
075aadbc: stp      x20, x19, [sp, #0x20]
075aadc0: adrp     x22, #0xa26e000
075aadc4: ldrb     w8, [x22, #0x566]
075aadc8: mov      x19, x2
075aadcc: mov      x20, x1
075aadd0: mov      x21, x0
075aadd4: tbnz     w8, #0, #0x75aadec
075aadd8: adrp     x0, #0x9be7000
075aaddc: ldr      x0, [x0, #0xf0]
075aade0: bl       #0x39d34bc
075aade4: mov      w8, #1
075aade8: strb     w8, [x22, #0x566]
075aadec: mov      w0, #0x9deb
075aadf0: mov      x1, xzr
075aadf4: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aadf8: tbz      w0, #0, #0x75aae2c
075aadfc: mov      w0, #0x9deb
075aae00: mov      x1, xzr
075aae04: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aae08: cbz      x0, #0x75aae68
075aae0c: mov      x1, x21
075aae10: mov      x2, x20
075aae14: mov      x3, x19
075aae18: ldp      x20, x19, [sp, #0x20]
075aae1c: ldp      x22, x21, [sp, #0x10]
075aae20: mov      x4, xzr
075aae24: ldr      x30, [sp], #0x30
075aae28: b        #0x863c56c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_802
075aae2c: adrp     x8, #0x9be7000
075aae30: ldr      x8, [x8, #0xf0]
075aae34: ldr      x0, [x8]
075aae38: bl       #0x39d36d8
075aae3c: mov      x1, xzr
075aae40: mov      x22, x0
075aae44: bl       #0x5c9bdb4
075aae48: str      wzr, [x22, #0x10]
075aae4c: stp      x20, x21, [x22, #0x20]
075aae50: str      x19, [x22, #0x30]
075aae54: mov      x0, x22
075aae58: ldp      x20, x19, [sp, #0x20]
075aae5c: ldp      x22, x21, [sp, #0x10]
075aae60: ldr      x30, [sp], #0x30
075aae64: ret      
075aae68: bl       #0x39d36e4

// Oak.StaticDataRepository.RunCoroutineWithPreAction 0x75aae94
075aae94: stp      x30, x21, [sp, #-0x20]!
075aae98: stp      x20, x19, [sp, #0x10]
075aae9c: mov      x20, x1
075aaea0: mov      x21, x0
075aaea4: mov      w0, #0x9df8
075aaea8: mov      x1, xzr
075aaeac: mov      x19, x2
075aaeb0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
075aaeb4: tbz      w0, #0, #0x75aaee4
075aaeb8: mov      w0, #0x9df8
075aaebc: mov      x1, xzr
075aaec0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
075aaec4: cbz      x0, #0x75aaf08
075aaec8: mov      x2, x20
075aaecc: mov      x3, x19
075aaed0: ldp      x20, x19, [sp, #0x10]
075aaed4: mov      x1, x21
075aaed8: mov      x4, xzr
075aaedc: ldp      x30, x21, [sp], #0x20
075aaee0: b        #0x863c56c ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_802
075aaee4: cbz      x20, #0x75aaf08
075aaee8: ldr      x8, [x20, #0x18]
075aaeec: ldr      x0, [x20, #0x40]
075aaef0: ldr      x1, [x20, #0x28]
075aaef4: blr      x8
075aaef8: mov      x0, x19
075aaefc: ldp      x20, x19, [sp, #0x10]
075aaf00: ldp      x30, x21, [sp], #0x20
075aaf04: ret      
075aaf08: bl       #0x39d36e4

// Oak.StaticDataRepository..ctor 0x75a8b08
075a8b08: str      x30, [sp, #-0x30]!
075a8b0c: stp      x22, x21, [sp, #0x10]
075a8b10: stp      x20, x19, [sp, #0x20]
075a8b14: adrp     x21, #0xa26e000
075a8b18: adrp     x20, #0x9b42000
075a8b1c: ldrb     w8, [x21, #0x567]
075a8b20: ldr      x20, [x20, #0xdf0]
075a8b24: mov      x19, x0
075a8b28: tbnz     w8, #0, #0x75a8b58
075a8b2c: adrp     x0, #0x9be7000
075a8b30: ldr      x0, [x0, #0x70]
075a8b34: bl       #0x39d34bc
075a8b38: adrp     x0, #0x9be7000
075a8b3c: ldr      x0, [x0, #0x78]
075a8b40: bl       #0x39d34bc
075a8b44: adrp     x0, #0x9b42000
075a8b48: ldr      x0, [x0, #0xdf0]
075a8b4c: bl       #0x39d34bc
075a8b50: mov      w8, #1
075a8b54: strb     w8, [x21, #0x567]
075a8b58: ldr      x0, [x20]
075a8b5c: ldr      w8, [x0, #0xe0]
075a8b60: cbnz     w8, #0x75a8b68
075a8b64: bl       #0x39d35c4
075a8b68: adrp     x21, #0xa25e000
075a8b6c: ldrb     w8, [x21, #0xfba]
075a8b70: cbnz     w8, #0x75a8b88
075a8b74: adrp     x0, #0x9b42000
075a8b78: ldr      x0, [x0, #0xdf0]
075a8b7c: bl       #0x39d34bc
075a8b80: mov      w8, #1
075a8b84: strb     w8, [x21, #0xfba]
075a8b88: ldr      x0, [x20]
075a8b8c: adrp     x22, #0x9be7000
075a8b90: adrp     x21, #0x9be7000
075a8b94: ldr      w8, [x0, #0xe0]
075a8b98: ldr      x22, [x22, #0x78]
075a8b9c: ldr      x21, [x21, #0x70]
075a8ba0: cbnz     w8, #0x75a8bac
075a8ba4: bl       #0x39d35c4
075a8ba8: ldr      x0, [x20]
075a8bac: ldr      x8, [x0, #0xb8]
075a8bb0: ldr      x0, [x22]
075a8bb4: ldr      x20, [x8, #0x18]
075a8bb8: bl       #0x39d36d8
075a8bbc: ldr      x2, [x21]
075a8bc0: mov      x1, x20
075a8bc4: mov      x21, x0
075a8bc8: bl       #0x5584194
075a8bcc: str      x21, [x19, #0x10]
075a8bd0: mov      x0, x19
075a8bd4: ldp      x20, x19, [sp, #0x20]
075a8bd8: ldp      x22, x21, [sp, #0x10]
075a8bdc: mov      x1, xzr
075a8be0: ldr      x30, [sp], #0x30
075a8be4: b        #0x5c9bdb4

// Oak.StaticDataRepository..cctor 0x75aaf0c
075aaf0c: str      x30, [sp, #-0x30]!
075aaf10: stp      x22, x21, [sp, #0x10]
075aaf14: stp      x20, x19, [sp, #0x20]
075aaf18: adrp     x20, #0xa26e000
075aaf1c: adrp     x19, #0x9b3f000
075aaf20: ldrb     w8, [x20, #0x568]
075aaf24: ldr      x19, [x19, #0xf98]
075aaf28: tbnz     w8, #0, #0x75aaf70
075aaf2c: adrp     x0, #0x9b3f000
075aaf30: ldr      x0, [x0, #0xf98]
075aaf34: bl       #0x39d34bc
075aaf38: adrp     x0, #0x9b43000
075aaf3c: ldr      x0, [x0, #0x120]
075aaf40: bl       #0x39d34bc
075aaf44: adrp     x0, #0x9b3f000
075aaf48: ldr      x0, [x0, #0xea8]
075aaf4c: bl       #0x39d34bc
075aaf50: adrp     x0, #0x9b4e000
075aaf54: ldr      x0, [x0, #0xfd8]
075aaf58: bl       #0x39d34bc
075aaf5c: adrp     x0, #0x9be7000
075aaf60: ldr      x0, [x0, #0xf8]
075aaf64: bl       #0x39d34bc
075aaf68: mov      w8, #1
075aaf6c: strb     w8, [x20, #0x568]
075aaf70: ldr      x0, [x19]
075aaf74: adrp     x19, #0x9b3f000
075aaf78: ldr      w8, [x0, #0xe0]
075aaf7c: ldr      x19, [x19, #0xea8]
075aaf80: cbnz     w8, #0x75aaf88
075aaf84: bl       #0x39d35c4
075aaf88: adrp     x22, #0x9be7000
075aaf8c: adrp     x20, #0x9b43000
075aaf90: adrp     x21, #0x9b4e000
075aaf94: ldr      x22, [x22, #0xf8]
075aaf98: ldr      x20, [x20, #0x120]
075aaf9c: ldr      x21, [x21, #0xfd8]
075aafa0: mov      x0, xzr
075aafa4: bl       #0x9480c4c
075aafa8: ldr      x8, [x19]
075aafac: mov      x19, x0
075aafb0: ldr      w9, [x8, #0xe0]
075aafb4: cbnz     w9, #0x75aafc0
075aafb8: mov      x0, x8
075aafbc: bl       #0x39d35c4
075aafc0: ldr      x1, [x22]
075aafc4: mov      x0, x19
075aafc8: mov      x2, xzr
075aafcc: bl       #0x5bd1ea4
075aafd0: ldr      x8, [x20]
075aafd4: mov      x19, x0
075aafd8: mov      x0, x8
075aafdc: bl       #0x39d36d8
075aafe0: mov      x1, x19
075aafe4: mov      x2, xzr
075aafe8: mov      x20, x0
075aafec: bl       #0x5b9b600
075aaff0: ldr      x8, [x21]
075aaff4: mov      x0, xzr
075aaff8: ldr      x8, [x8, #0xb8]
075aaffc: str      x20, [x8, #8]
075ab000: bl       #0x9480c74
075ab004: ldr      x8, [x21]
075ab008: ldp      x20, x19, [sp, #0x20]
075ab00c: ldp      x22, x21, [sp, #0x10]
075ab010: ldr      x8, [x8, #0xb8]
075ab014: str      x0, [x8, #0x10]
075ab018: ldr      x30, [sp], #0x30
075ab01c: ret      
