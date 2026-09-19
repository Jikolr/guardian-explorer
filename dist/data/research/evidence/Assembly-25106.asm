08bb8c90: sub      sp, sp, #0xd0
08bb8c94: str      d8, [sp, #0x80]
08bb8c98: stp      x30, x25, [sp, #0x90]
08bb8c9c: stp      x24, x23, [sp, #0xa0]
08bb8ca0: stp      x22, x21, [sp, #0xb0]
08bb8ca4: stp      x20, x19, [sp, #0xc0]
08bb8ca8: adrp     x20, #0xa279000
08bb8cac: ldrb     w8, [x20, #0x38d]
08bb8cb0: mov      x19, x0
08bb8cb4: tbnz     w8, #0, #0x8bb8d38
08bb8cb8: adrp     x0, #0x9c43000
08bb8cbc: ldr      x0, [x0, #0x930]
08bb8cc0: bl       #0x39d34bc
08bb8cc4: adrp     x0, #0x9c43000
08bb8cc8: ldr      x0, [x0, #0x938]
08bb8ccc: bl       #0x39d34bc
08bb8cd0: adrp     x0, #0x9b44000
08bb8cd4: ldr      x0, [x0, #0xea0]
08bb8cd8: bl       #0x39d34bc
08bb8cdc: adrp     x0, #0x9b3f000
08bb8ce0: ldr      x0, [x0, #0xed8]
08bb8ce4: bl       #0x39d34bc
08bb8ce8: adrp     x0, #0x9b45000
08bb8cec: ldr      x0, [x0, #0xbd0]
08bb8cf0: bl       #0x39d34bc
08bb8cf4: adrp     x0, #0x9b43000
08bb8cf8: ldr      x0, [x0, #0x1d8]
08bb8cfc: bl       #0x39d34bc
08bb8d00: adrp     x0, #0x9b77000
08bb8d04: ldr      x0, [x0, #0x440]
08bb8d08: bl       #0x39d34bc
08bb8d0c: adrp     x0, #0x9b77000
08bb8d10: ldr      x0, [x0, #0x448]
08bb8d14: bl       #0x39d34bc
08bb8d18: adrp     x0, #0x9b44000
08bb8d1c: ldr      x0, [x0, #0xf00]
08bb8d20: bl       #0x39d34bc
08bb8d24: adrp     x0, #0x9b4e000
08bb8d28: ldr      x0, [x0, #0xa50]
08bb8d2c: bl       #0x39d34bc
08bb8d30: mov      w8, #1
08bb8d34: strb     w8, [x20, #0x38d]
08bb8d38: mov      w0, #0x4597
08bb8d3c: mov      x1, xzr
08bb8d40: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
08bb8d44: tbz      w0, #0, #0x8bb8d7c
08bb8d48: mov      w0, #0x4597
08bb8d4c: mov      x1, xzr
08bb8d50: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
08bb8d54: cbz      x0, #0x8bb913c
08bb8d58: mov      x1, x19
08bb8d5c: ldp      x20, x19, [sp, #0xc0]
08bb8d60: ldp      x22, x21, [sp, #0xb0]
08bb8d64: ldp      x24, x23, [sp, #0xa0]
08bb8d68: ldp      x30, x25, [sp, #0x90]
08bb8d6c: ldr      d8, [sp, #0x80]
08bb8d70: mov      x2, xzr
08bb8d74: add      sp, sp, #0xd0
08bb8d78: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
08bb8d7c: adrp     x22, #0x9b44000
08bb8d80: ldr      x22, [x22, #0xea0]
08bb8d84: ldr      x0, [x19, #0x10]
08bb8d88: ldr      x1, [x22]
08bb8d8c: bl       #0x39d35c8
08bb8d90: cbz      x0, #0x8bb9114
08bb8d94: mov      x20, x0
08bb8d98: mov      x0, xzr
08bb8d9c: bl       #0x6a890f4 ; Oak.PartyManager.get_Instance
08bb8da0: cbz      x0, #0x8bb913c
08bb8da4: mov      x1, x20
08bb8da8: mov      x2, xzr
08bb8dac: bl       #0x6a948d4 ; Oak.PartyManager.GetPartyFor
08bb8db0: cbz      x0, #0x8bb9114
08bb8db4: mov      x1, xzr
08bb8db8: bl       #0x6a8be88 ; Oak.Party.GetEnumerator
08bb8dbc: mov      x20, x0
08bb8dc0: cbz      x0, #0x8bb9140
08bb8dc4: adrp     x24, #0x9b43000
08bb8dc8: adrp     x25, #0x9b45000
08bb8dcc: ldr      x24, [x24, #0x1d8]
08bb8dd0: ldr      x25, [x25, #0xbd0]
08bb8dd4: mov      w23, wzr
08bb8dd8: ldr      x8, [x20]
08bb8ddc: ldr      x1, [x24]
08bb8de0: ldrh     w9, [x8, #0x12e]
08bb8de4: cbz      x9, #0x8bb8e08
08bb8de8: ldr      x10, [x8, #0xb0]
08bb8dec: add      x10, x10, #8
08bb8df0: ldur     x11, [x10, #-8]
08bb8df4: cmp      x11, x1
08bb8df8: b.eq     #0x8bb8e18
08bb8dfc: subs     x9, x9, #1
08bb8e00: add      x10, x10, #0x10
08bb8e04: b.ne     #0x8bb8df0
08bb8e08: mov      x0, x20
08bb8e0c: mov      w2, wzr
08bb8e10: bl       #0x39a94f0
08bb8e14: b        #0x8bb8e24
08bb8e18: ldrsw    x9, [x10]
08bb8e1c: add      x8, x8, x9, lsl #4
08bb8e20: add      x0, x8, #0x138
08bb8e24: ldp      x8, x1, [x0]
08bb8e28: mov      x0, x20
08bb8e2c: blr      x8
08bb8e30: tbz      w0, #0, #0x8bb8f14
08bb8e34: ldr      x8, [x20]
08bb8e38: ldr      x1, [x25]
08bb8e3c: ldrh     w9, [x8, #0x12e]
08bb8e40: cbz      x9, #0x8bb8e64
08bb8e44: ldr      x10, [x8, #0xb0]
08bb8e48: add      x10, x10, #8
08bb8e4c: ldur     x11, [x10, #-8]
08bb8e50: cmp      x11, x1
08bb8e54: b.eq     #0x8bb8e74
08bb8e58: subs     x9, x9, #1
08bb8e5c: add      x10, x10, #0x10
08bb8e60: b.ne     #0x8bb8e4c
08bb8e64: mov      x0, x20
08bb8e68: mov      w2, wzr
08bb8e6c: bl       #0x39a94f0
08bb8e70: b        #0x8bb8e80
08bb8e74: ldrsw    x9, [x10]
08bb8e78: add      x8, x8, x9, lsl #4
08bb8e7c: add      x0, x8, #0x138
08bb8e80: ldp      x8, x1, [x0]
08bb8e84: mov      x0, x20
08bb8e88: blr      x8
08bb8e8c: mov      x21, x0
08bb8e90: cbz      x0, #0x8bb9134
08bb8e94: ldr      x8, [x21]
08bb8e98: ldr      x1, [x22]
08bb8e9c: ldrh     w9, [x8, #0x12e]
08bb8ea0: cbz      x9, #0x8bb8ec4
08bb8ea4: ldr      x10, [x8, #0xb0]
08bb8ea8: add      x10, x10, #8
08bb8eac: ldur     x11, [x10, #-8]
08bb8eb0: cmp      x11, x1
08bb8eb4: b.eq     #0x8bb8ed4
08bb8eb8: subs     x9, x9, #1
08bb8ebc: add      x10, x10, #0x10
08bb8ec0: b.ne     #0x8bb8eac
08bb8ec4: mov      w2, #1
08bb8ec8: mov      x0, x21
08bb8ecc: bl       #0x39a94f0
08bb8ed0: b        #0x8bb8ee4
08bb8ed4: ldr      w9, [x10]
08bb8ed8: add      w9, w9, #1
08bb8edc: add      x8, x8, w9, sxtw #4
08bb8ee0: add      x0, x8, #0x138
08bb8ee4: ldp      x8, x1, [x0]
08bb8ee8: mov      x0, x21
08bb8eec: blr      x8
08bb8ef0: cbz      x0, #0x8bb9138
08bb8ef4: mov      x1, xzr
08bb8ef8: bl       #0x8c86090 ; Oak.CharacterStatsBehaviour.get_CharacterSpec
08bb8efc: cbz      x0, #0x8bb9130
08bb8f00: ldr      w8, [x0, #0x178]
08bb8f04: ldr      w9, [x19, #0x38]
08bb8f08: cmp      w8, w9
08bb8f0c: cinc     w23, w23, eq
08bb8f10: b        #0x8bb8dd8
08bb8f14: mov      x21, xzr
08bb8f18: mov      w22, #7
08bb8f1c: cbz      x20, #0x8bb8f80
08bb8f20: adrp     x10, #0x9b3f000
08bb8f24: ldr      x8, [x20]
08bb8f28: ldr      x10, [x10, #0xed8]
08bb8f2c: ldrh     w9, [x8, #0x12e]
08bb8f30: ldr      x1, [x10]
08bb8f34: cbz      x9, #0x8bb8f58
08bb8f38: ldr      x10, [x8, #0xb0]
08bb8f3c: add      x10, x10, #8
08bb8f40: ldur     x11, [x10, #-8]
08bb8f44: cmp      x11, x1
08bb8f48: b.eq     #0x8bb8f68
08bb8f4c: subs     x9, x9, #1
08bb8f50: add      x10, x10, #0x10
08bb8f54: b.ne     #0x8bb8f40
08bb8f58: mov      x0, x20
08bb8f5c: mov      w2, wzr
08bb8f60: bl       #0x39a94f0
08bb8f64: b        #0x8bb8f74
08bb8f68: ldrsw    x9, [x10]
08bb8f6c: add      x8, x8, x9, lsl #4
08bb8f70: add      x0, x8, #0x138
08bb8f74: ldp      x8, x1, [x0]
08bb8f78: mov      x0, x20
08bb8f7c: blr      x8
08bb8f80: cbnz     x21, #0x8bb9144
08bb8f84: cmp      w22, #7
08bb8f88: b.eq     #0x8bb8f90
08bb8f8c: cbnz     w22, #0x8bb9114
08bb8f90: ldur     x8, [x19, #0x64]
08bb8f94: ldur     q0, [x19, #0x54]
08bb8f98: add      x0, sp, #0x60
08bb8f9c: mov      x1, xzr
08bb8fa0: str      x8, [sp, #0x70]
08bb8fa4: str      q0, [sp, #0x60]
08bb8fa8: bl       #0x3ac5138
08bb8fac: mov      v8.16b, v0.16b
08bb8fb0: ldur     q0, [x19, #0x6c]
08bb8fb4: ldur     x8, [x19, #0x7c]
08bb8fb8: add      x0, sp, #0x40
08bb8fbc: mov      x1, xzr
08bb8fc0: str      q0, [sp, #0x40]
08bb8fc4: str      x8, [sp, #0x50]
08bb8fc8: bl       #0x3ac5138
08bb8fcc: scvtf    s1, w23
08bb8fd0: fmul     s1, s8, s1
08bb8fd4: fcmp     s1, s0
08bb8fd8: fcsel    s0, s1, s0, mi
08bb8fdc: add      x8, sp, #8
08bb8fe0: mov      x0, xzr
08bb8fe4: bl       #0x3ac68b0
08bb8fe8: ldr      x8, [sp, #0x18]
08bb8fec: ldur     q0, [sp, #8]
08bb8ff0: adrp     x22, #0x9b44000
08bb8ff4: str      x8, [sp, #0x30]
08bb8ff8: str      q0, [sp, #0x20]
08bb8ffc: stur     x8, [x19, #0x4c]
08bb9000: stur     q0, [x19, #0x3c]
08bb9004: ldr      x22, [x22, #0xf00]
08bb9008: ldr      x0, [x22]
08bb900c: ldr      w8, [x0, #0xe0]
08bb9010: cbnz     w8, #0x8bb9018
08bb9014: bl       #0x39d35c4
08bb9018: adrp     x23, #0xa25e000
08bb901c: ldrb     w8, [x23, #0x1ba]
08bb9020: cbnz     w8, #0x8bb9038
08bb9024: adrp     x0, #0x9b44000
08bb9028: ldr      x0, [x0, #0xf00]
08bb902c: bl       #0x39d34bc
08bb9030: mov      w8, #1
08bb9034: strb     w8, [x23, #0x1ba]
08bb9038: ldr      x0, [x22]
08bb903c: ldr      w8, [x0, #0xe0]
08bb9040: cbnz     w8, #0x8bb904c
08bb9044: bl       #0x39d35c4
08bb9048: ldr      x0, [x22]
08bb904c: adrp     x24, #0x9b4e000
08bb9050: ldr      x8, [x0, #0xb8]
08bb9054: ldr      x24, [x24, #0xa50]
08bb9058: ldr      x20, [x8]
08bb905c: ldr      x0, [x24]
08bb9060: bl       #0x39d36d8
08bb9064: adrp     x8, #0x9c43000
08bb9068: ldr      x8, [x8, #0x930]
08bb906c: mov      x1, x19
08bb9070: mov      x3, xzr
08bb9074: mov      x21, x0
08bb9078: ldr      x2, [x8]
08bb907c: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08bb9080: cbz      x20, #0x8bb913c
08bb9084: adrp     x8, #0x9b77000
08bb9088: ldr      x8, [x8, #0x440]
08bb908c: mov      x0, x20
08bb9090: mov      x1, x21
08bb9094: ldr      x2, [x8]
08bb9098: bl       #0x40e2470
08bb909c: ldrb     w8, [x23, #0x1ba]
08bb90a0: cbnz     w8, #0x8bb90b8
08bb90a4: adrp     x0, #0x9b44000
08bb90a8: ldr      x0, [x0, #0xf00]
08bb90ac: bl       #0x39d34bc
08bb90b0: mov      w8, #1
08bb90b4: strb     w8, [x23, #0x1ba]
08bb90b8: ldr      x0, [x22]
08bb90bc: ldr      w8, [x0, #0xe0]
08bb90c0: cbnz     w8, #0x8bb90cc
08bb90c4: bl       #0x39d35c4
08bb90c8: ldr      x0, [x22]
08bb90cc: ldr      x8, [x0, #0xb8]
08bb90d0: ldr      x0, [x24]
08bb90d4: ldr      x20, [x8]
08bb90d8: bl       #0x39d36d8
08bb90dc: adrp     x8, #0x9c43000
08bb90e0: ldr      x8, [x8, #0x938]
08bb90e4: mov      x1, x19
08bb90e8: mov      x3, xzr
08bb90ec: mov      x21, x0
08bb90f0: ldr      x2, [x8]
08bb90f4: bl       #0x6877704 ; Oak.SubscribeCallback..ctor
08bb90f8: cbz      x20, #0x8bb913c
08bb90fc: adrp     x8, #0x9b77000
08bb9100: ldr      x8, [x8, #0x448]
08bb9104: mov      x0, x20
08bb9108: mov      x1, x21
08bb910c: ldr      x2, [x8]
08bb9110: bl       #0x40e2470
08bb9114: ldp      x20, x19, [sp, #0xc0]
08bb9118: ldp      x22, x21, [sp, #0xb0]
08bb911c: ldp      x24, x23, [sp, #0xa0]
08bb9120: ldp      x30, x25, [sp, #0x90]
08bb9124: ldr      d8, [sp, #0x80]
08bb9128: add      sp, sp, #0xd0
08bb912c: ret      
08bb9130: bl       #0x39d36e4
08bb9134: bl       #0x39d36e4
08bb9138: bl       #0x39d36e4
08bb913c: bl       #0x39d36e4
08bb9140: bl       #0x39d36e4
08bb9144: mov      x0, x21
08bb9148: bl       #0x39d36dc
08bb914c: mov      x22, x0
08bb9150: mov      w23, wzr
08bb9154: b        #0x8bb9174
08bb9158: b        #0x8bb9170
08bb915c: b        #0x8bb9170
08bb9160: b        #0x8bb9170
08bb9164: b        #0x8bb9170
08bb9168: b        #0x8bb9170
08bb916c: b        #0x8bb9170
08bb9170: mov      x22, x0
08bb9174: cmp      w1, #1
08bb9178: b.ne     #0x8bb9198
08bb917c: mov      x0, x22
08bb9180: bl       #0x9749aa0
08bb9184: ldr      x21, [x0]
08bb9188: bl       #0x9749ab0
08bb918c: mov      w22, wzr
08bb9190: cbnz     x20, #0x8bb8f20
08bb9194: b        #0x8bb8f80
08bb9198: mov      x21, xzr
08bb919c: b        #0x8bb91a4
08bb91a0: mov      x22, x0
08bb91a4: cbz      x20, #0x8bb9208
08bb91a8: adrp     x10, #0x9b3f000
08bb91ac: ldr      x8, [x20]
08bb91b0: ldr      x10, [x10, #0xed8]
08bb91b4: ldrh     w9, [x8, #0x12e]
08bb91b8: ldr      x1, [x10]
08bb91bc: cbz      x9, #0x8bb91e0
08bb91c0: ldr      x10, [x8, #0xb0]
08bb91c4: add      x10, x10, #8
08bb91c8: ldur     x11, [x10, #-8]
08bb91cc: cmp      x11, x1
08bb91d0: b.eq     #0x8bb91f0
08bb91d4: subs     x9, x9, #1
08bb91d8: add      x10, x10, #0x10
08bb91dc: b.ne     #0x8bb91c8
08bb91e0: mov      x0, x20
08bb91e4: mov      w2, wzr
08bb91e8: bl       #0x39a94f0
08bb91ec: b        #0x8bb91fc
08bb91f0: ldrsw    x9, [x10]
08bb91f4: add      x8, x8, x9, lsl #4
08bb91f8: add      x0, x8, #0x138
08bb91fc: ldp      x8, x1, [x0]
08bb9200: mov      x0, x20
08bb9204: blr      x8
08bb9208: cbnz     x21, #0x8bb9214
08bb920c: mov      x0, x22
08bb9210: bl       #0x3ab82d0
08bb9214: mov      x0, x21
08bb9218: bl       #0x39d36dc
08bb921c: bl       #0x35bb99c