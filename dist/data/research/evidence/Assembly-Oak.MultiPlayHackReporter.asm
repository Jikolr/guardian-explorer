// Oak.MultiPlayHackReporter.Start 0x62331a0
062331a0: str      x30, [sp, #-0x20]!
062331a4: stp      x20, x19, [sp, #0x10]
062331a8: adrp     x19, #0xa267000
062331ac: ldrb     w8, [x19, #0x25c]
062331b0: tbnz     w8, #0, #0x62331c8
062331b4: adrp     x0, #0x9b83000
062331b8: ldr      x0, [x0, #0x728]
062331bc: bl       #0x39d34bc
062331c0: mov      w8, #1
062331c4: strb     w8, [x19, #0x25c]
062331c8: mov      w0, #0x6bb7
062331cc: mov      x1, xzr
062331d0: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
062331d4: tbz      w0, #0, #0x62331f8
062331d8: mov      w0, #0x6bb7
062331dc: mov      x1, xzr
062331e0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062331e4: cbz      x0, #0x6233228
062331e8: ldp      x20, x19, [sp, #0x10]
062331ec: mov      x1, xzr
062331f0: ldr      x30, [sp], #0x20
062331f4: b        #0x8622948 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_388
062331f8: adrp     x20, #0x9b83000
062331fc: ldr      x20, [x20, #0x728]
06233200: ldr      x0, [x20]
06233204: bl       #0x39d36d8
06233208: mov      x19, x0
0623320c: bl       #0x623322c ; Oak.MultiPlayHackReporter..ctor
06233210: ldr      x8, [x20]
06233214: ldr      x8, [x8, #0xb8]
06233218: str      x19, [x8]
0623321c: ldp      x20, x19, [sp, #0x10]
06233220: ldr      x30, [sp], #0x20
06233224: ret      
06233228: bl       #0x39d36e4

// Oak.MultiPlayHackReporter.Shutdown 0x62333d0
062333d0: stp      x30, x19, [sp, #-0x10]!
062333d4: adrp     x19, #0xa267000
062333d8: ldrb     w8, [x19, #0x25d]
062333dc: tbnz     w8, #0, #0x6233400
062333e0: adrp     x0, #0x9b83000
062333e4: ldr      x0, [x0, #0x758]
062333e8: bl       #0x39d34bc
062333ec: adrp     x0, #0x9b83000
062333f0: ldr      x0, [x0, #0x728]
062333f4: bl       #0x39d34bc
062333f8: mov      w8, #1
062333fc: strb     w8, [x19, #0x25d]
06233400: mov      w0, #0x6c4c
06233404: mov      x1, xzr
06233408: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
0623340c: tbz      w0, #0, #0x623342c
06233410: mov      w0, #0x6c4c
06233414: mov      x1, xzr
06233418: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
0623341c: cbz      x0, #0x6233470
06233420: mov      x1, xzr
06233424: ldp      x30, x19, [sp], #0x10
06233428: b        #0x8622948 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_388
0623342c: adrp     x19, #0x9b83000
06233430: ldr      x19, [x19, #0x728]
06233434: ldr      x8, [x19]
06233438: ldr      x8, [x8, #0xb8]
0623343c: ldr      x8, [x8]
06233440: cbz      x8, #0x6233470
06233444: ldr      x0, [x8, #0x10]
06233448: cbz      x0, #0x6233470
0623344c: adrp     x8, #0x9b83000
06233450: ldr      x8, [x8, #0x758]
06233454: ldr      x1, [x8]
06233458: bl       #0x5563e40
0623345c: ldr      x8, [x19]
06233460: ldr      x8, [x8, #0xb8]
06233464: str      xzr, [x8]
06233468: ldp      x30, x19, [sp], #0x10
0623346c: ret      
06233470: bl       #0x39d36e4

// Oak.MultiPlayHackReporter.ReportSuspects 0x6233474
06233474: sub      sp, sp, #0x130
06233478: stp      x29, x30, [sp, #0xd0]
0623347c: stp      x28, x27, [sp, #0xe0]
06233480: stp      x26, x25, [sp, #0xf0]
06233484: stp      x24, x23, [sp, #0x100]
06233488: stp      x22, x21, [sp, #0x110]
0623348c: stp      x20, x19, [sp, #0x120]
06233490: adrp     x19, #0xa267000
06233494: ldrb     w8, [x19, #0x25e]
06233498: tbnz     w8, #0, #0x6233540
0623349c: adrp     x0, #0x9b45000
062334a0: ldr      x0, [x0, #0x2b0]
062334a4: bl       #0x39d34bc
062334a8: adrp     x0, #0x9b83000
062334ac: ldr      x0, [x0, #0x760]
062334b0: bl       #0x39d34bc
062334b4: adrp     x0, #0x9b83000
062334b8: ldr      x0, [x0, #0x768]
062334bc: bl       #0x39d34bc
062334c0: adrp     x0, #0x9b83000
062334c4: ldr      x0, [x0, #0x770]
062334c8: bl       #0x39d34bc
062334cc: adrp     x0, #0x9b83000
062334d0: ldr      x0, [x0, #0x778]
062334d4: bl       #0x39d34bc
062334d8: adrp     x0, #0x9b83000
062334dc: ldr      x0, [x0, #0x780]
062334e0: bl       #0x39d34bc
062334e4: adrp     x0, #0x9b83000
062334e8: ldr      x0, [x0, #0x788]
062334ec: bl       #0x39d34bc
062334f0: adrp     x0, #0x9b40000
062334f4: ldr      x0, [x0, #0xd78]
062334f8: bl       #0x39d34bc
062334fc: adrp     x0, #0x9b83000
06233500: ldr      x0, [x0, #0x790]
06233504: bl       #0x39d34bc
06233508: adrp     x0, #0x9b83000
0623350c: ldr      x0, [x0, #0x728]
06233510: bl       #0x39d34bc
06233514: adrp     x0, #0x9b79000
06233518: ldr      x0, [x0, #0xf10]
0623351c: bl       #0x39d34bc
06233520: adrp     x0, #0x9b3f000
06233524: ldr      x0, [x0, #0xee0]
06233528: bl       #0x39d34bc
0623352c: adrp     x0, #0x9b83000
06233530: ldr      x0, [x0, #0x798]
06233534: bl       #0x39d34bc
06233538: mov      w8, #1
0623353c: strb     w8, [x19, #0x25e]
06233540: movi     v0.2d, #0000000000000000
06233544: mov      w0, #0x6c00
06233548: mov      x1, xzr
0623354c: stp      xzr, xzr, [sp, #0xb0]
06233550: str      xzr, [sp, #0xc0]
06233554: stp      q0, q0, [sp, #0x90]
06233558: str      q0, [sp, #0x80]
0623355c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06233560: tbz      w0, #0, #0x6233580
06233564: mov      w0, #0x6c00
06233568: mov      x1, xzr
0623356c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06233570: cbz      x0, #0x6233814
06233574: mov      x1, xzr
06233578: bl       #0x8622948 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_388
0623357c: b        #0x62337c4
06233580: adrp     x21, #0x9b83000
06233584: ldr      x21, [x21, #0x728]
06233588: ldr      x8, [x21]
0623358c: ldr      x8, [x8, #0xb8]
06233590: ldr      x8, [x8]
06233594: cbz      x8, #0x6233814
06233598: ldr      x0, [x8, #0x10]
0623359c: cbz      x0, #0x6233814
062335a0: adrp     x8, #0x9b83000
062335a4: ldr      x8, [x8, #0x768]
062335a8: ldr      x1, [x8]
062335ac: bl       #0x55639f8
062335b0: cbz      x0, #0x6233814
062335b4: adrp     x8, #0x9b83000
062335b8: ldr      x8, [x8, #0x790]
062335bc: ldr      x1, [x8]
062335c0: add      x8, sp, #0x40
062335c4: bl       #0x44f7af4
062335c8: ldr      q0, [sp, #0x40]
062335cc: ldr      x8, [sp, #0x50]
062335d0: adrp     x22, #0x9b83000
062335d4: adrp     x23, #0x9b83000
062335d8: adrp     x24, #0x9b83000
062335dc: adrp     x25, #0x9b3f000
062335e0: adrp     x26, #0x9b40000
062335e4: adrp     x27, #0x9b45000
062335e8: adrp     x28, #0x9b83000
062335ec: ldr      x22, [x22, #0x778]
062335f0: ldr      x23, [x23, #0x760]
062335f4: ldr      x24, [x24, #0x788]
062335f8: ldr      x25, [x25, #0xee0]
062335fc: ldr      x26, [x26, #0xd78]
06233600: ldr      x27, [x27, #0x2b0]
06233604: ldr      x28, [x28, #0x798]
06233608: str      q0, [sp, #0xb0]
0623360c: str      x8, [sp, #0xc0]
06233610: adrp     x29, #0x9b79000
06233614: ldr      x29, [x29, #0xf10]
06233618: ldr      x1, [x22]
0623361c: add      x0, sp, #0xb0
06233620: bl       #0x57f8cb8
06233624: tbz      w0, #0, #0x62337b0
06233628: ldr      x8, [x21]
0623362c: ldr      x8, [x8, #0xb8]
06233630: ldr      x8, [x8]
06233634: cbz      x8, #0x62337e4
06233638: ldr      x0, [x8, #0x10]
0623363c: cbz      x0, #0x62337e8
06233640: ldr      x1, [sp, #0xc0]
06233644: ldr      x2, [x23]
06233648: bl       #0x5563c38
0623364c: mov      x19, x0
06233650: cbz      x0, #0x6233618
06233654: ldr      x8, [x19]
06233658: ldr      x1, [x24]
0623365c: ldrh     w9, [x8, #0x12e]
06233660: cbz      x9, #0x6233684
06233664: ldr      x10, [x8, #0xb0]
06233668: add      x10, x10, #8
0623366c: ldur     x11, [x10, #-8]
06233670: cmp      x11, x1
06233674: b.eq     #0x6233694
06233678: subs     x9, x9, #1
0623367c: add      x10, x10, #0x10
06233680: b.ne     #0x623366c
06233684: mov      w2, #1
06233688: mov      x0, x19
0623368c: bl       #0x39a94f0
06233690: b        #0x62336a4
06233694: ldr      w9, [x10]
06233698: add      w9, w9, #1
0623369c: add      x8, x8, w9, sxtw #4
062336a0: add      x0, x8, #0x138
062336a4: ldp      x8, x2, [x0]
062336a8: add      x1, sp, #0x80
062336ac: mov      x0, x19
062336b0: blr      x8
062336b4: ldr      x0, [x25]
062336b8: mov      w1, #2
062336bc: bl       #0x39d3534
062336c0: mov      x19, x0
062336c4: ldr      w8, [sp, #0x80]
062336c8: ldr      x0, [x26]
062336cc: str      w8, [sp, #0x7c]
062336d0: add      x1, sp, #0x7c
062336d4: bl       #0x39d35cc
062336d8: cbz      x19, #0x62337f8
062336dc: mov      x20, x0
062336e0: cbz      x0, #0x62336f8
062336e4: ldr      x8, [x19]
062336e8: ldr      x1, [x8, #0x40]
062336ec: mov      x0, x20
062336f0: bl       #0x39d35c8
062336f4: cbz      x0, #0x62337fc
062336f8: ldr      w8, [x19, #0x18]
062336fc: cbz      w8, #0x62337ec
06233700: str      x20, [x19, #0x20]
06233704: ldr      w8, [sp, #0x94]
06233708: ldr      x0, [x26]
0623370c: str      w8, [sp, #0x78]
06233710: add      x1, sp, #0x78
06233714: bl       #0x39d35cc
06233718: mov      x20, x0
0623371c: cbz      x0, #0x6233734
06233720: ldr      x8, [x19]
06233724: ldr      x1, [x8, #0x40]
06233728: mov      x0, x20
0623372c: bl       #0x39d35c8
06233730: cbz      x0, #0x6233808
06233734: ldr      w8, [x19, #0x18]
06233738: cmp      w8, #1
0623373c: b.ls     #0x62337f0
06233740: str      x20, [x19, #0x28]
06233744: ldr      x0, [x27]
06233748: ldr      w8, [x0, #0xe0]
0623374c: cbnz     w8, #0x6233754
06233750: bl       #0x39d35c4
06233754: ldr      x0, [x28]
06233758: mov      x1, x19
0623375c: mov      x2, xzr
06233760: bl       #0x3c4d93c
06233764: ldr      x0, [x29]
06233768: ldr      w8, [x0, #0xe0]
0623376c: cbnz     w8, #0x6233774
06233770: bl       #0x39d35c4
06233774: mov      x0, xzr
06233778: bl       #0x69334e0 ; Oak.NetworkManager.get_ApiConnection
0623377c: ldp      q0, q1, [sp, #0x80]
06233780: ldr      q2, [sp, #0xa0]
06233784: stp      q0, q1, [sp, #0x40]
06233788: str      q2, [sp, #0x60]
0623378c: cbz      x0, #0x62337f4
06233790: ldp      q0, q1, [sp, #0x40]
06233794: ldr      q2, [sp, #0x60]
06233798: stp      q0, q1, [sp, #0x10]
0623379c: str      q2, [sp, #0x30]
062337a0: add      x1, sp, #0x10
062337a4: mov      x2, xzr
062337a8: bl       #0x68ab40c ; Oak.ApiConnection.SendArenaReportAbuser
062337ac: b        #0x6233618
062337b0: adrp     x8, #0x9b83000
062337b4: ldr      x8, [x8, #0x770]
062337b8: add      x0, sp, #0xb0
062337bc: ldr      x1, [x8]
062337c0: bl       #0x57f8cb4
062337c4: ldp      x20, x19, [sp, #0x120]
062337c8: ldp      x22, x21, [sp, #0x110]
062337cc: ldp      x24, x23, [sp, #0x100]
062337d0: ldp      x26, x25, [sp, #0xf0]
062337d4: ldp      x28, x27, [sp, #0xe0]
062337d8: ldp      x29, x30, [sp, #0xd0]
062337dc: add      sp, sp, #0x130
062337e0: ret      
062337e4: bl       #0x39d36e4
062337e8: bl       #0x39d36e4
062337ec: bl       #0x39d36ec
062337f0: bl       #0x39d36ec
062337f4: bl       #0x39d36e4
062337f8: bl       #0x39d36e4
062337fc: bl       #0x39d3708
06233800: mov      x1, xzr
06233804: bl       #0x39d35b4
06233808: bl       #0x39d3708
0623380c: mov      x1, xzr
06233810: bl       #0x39d35b4
06233814: bl       #0x39d36e4
06233818: b        #0x6233848
0623381c: b        #0x6233848
06233820: b        #0x6233848
06233824: b        #0x6233848
06233828: b        #0x6233848
0623382c: b        #0x6233848
06233830: b        #0x6233848
06233834: b        #0x6233848
06233838: b        #0x6233848
0623383c: b        #0x6233848
06233840: b        #0x6233848
06233844: b        #0x6233848
06233848: cmp      w1, #1
0623384c: b.ne     #0x623387c
06233850: bl       #0x9749aa0
06233854: ldr      x19, [x0]
06233858: bl       #0x9749ab0
0623385c: adrp     x8, #0x9b83000
06233860: ldr      x8, [x8, #0x770]
06233864: add      x0, sp, #0xb0
06233868: ldr      x1, [x8]
0623386c: bl       #0x57f8cb4
06233870: cbz      x19, #0x62337c4
06233874: mov      x0, x19
06233878: bl       #0x39d36dc
0623387c: mov      x20, x0
06233880: mov      x19, xzr
06233884: b        #0x623388c
06233888: mov      x20, x0
0623388c: adrp     x8, #0x9b83000
06233890: ldr      x8, [x8, #0x770]
06233894: ldr      x1, [x8]
06233898: add      x0, sp, #0xb0
0623389c: bl       #0x57f8cb4
062338a0: cbnz     x19, #0x62338ac
062338a4: mov      x0, x20
062338a8: bl       #0x3ab82d0
062338ac: mov      x0, x19
062338b0: bl       #0x39d36dc
062338b4: bl       #0x35bb99c

// Oak.MultiPlayHackReporter.ReportDamageHackUserInternal 0x62338b8
062338b8: sub      sp, sp, #0x110
062338bc: stp      x29, x30, [sp, #0xc0]
062338c0: stp      x26, x25, [sp, #0xd0]
062338c4: stp      x24, x23, [sp, #0xe0]
062338c8: stp      x22, x21, [sp, #0xf0]
062338cc: stp      x20, x19, [sp, #0x100]
062338d0: adrp     x21, #0xa267000
062338d4: ldrb     w8, [x21, #0x25f]
062338d8: mov      x20, x1
062338dc: mov      x19, x0
062338e0: tbnz     w8, #0, #0x623397c
062338e4: adrp     x0, #0x9b45000
062338e8: ldr      x0, [x0, #0xd88]
062338ec: bl       #0x39d34bc
062338f0: adrp     x0, #0x9b45000
062338f4: ldr      x0, [x0, #0x2b0]
062338f8: bl       #0x39d34bc
062338fc: adrp     x0, #0x9b83000
06233900: ldr      x0, [x0, #0x760]
06233904: bl       #0x39d34bc
06233908: adrp     x0, #0x9b72000
0623390c: ldr      x0, [x0, #0x900]
06233910: bl       #0x39d34bc
06233914: adrp     x0, #0x9b83000
06233918: ldr      x0, [x0, #0x7a0]
0623391c: bl       #0x39d34bc
06233920: adrp     x0, #0x9b72000
06233924: ldr      x0, [x0, #0x828]
06233928: bl       #0x39d34bc
0623392c: adrp     x0, #0x9b83000
06233930: ldr      x0, [x0, #0x788]
06233934: bl       #0x39d34bc
06233938: adrp     x0, #0x9b40000
0623393c: ldr      x0, [x0, #0xd78]
06233940: bl       #0x39d34bc
06233944: adrp     x0, #0x9b79000
06233948: ldr      x0, [x0, #0xf10]
0623394c: bl       #0x39d34bc
06233950: adrp     x0, #0x9b3f000
06233954: ldr      x0, [x0, #0xee0]
06233958: bl       #0x39d34bc
0623395c: adrp     x0, #0x9b7d000
06233960: ldr      x0, [x0, #0x260]
06233964: bl       #0x39d34bc
06233968: adrp     x0, #0x9b83000
0623396c: ldr      x0, [x0, #0x7a8]
06233970: bl       #0x39d34bc
06233974: mov      w8, #1
06233978: strb     w8, [x21, #0x25f]
0623397c: movi     v0.2d, #0000000000000000
06233980: mov      w0, #0x66e4
06233984: mov      x1, xzr
06233988: stp      q0, q0, [sp, #0xa0]
0623398c: str      q0, [sp, #0x90]
06233990: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06233994: tbz      w0, #0, #0x62339bc
06233998: mov      w0, #0x66e4
0623399c: mov      x1, xzr
062339a0: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
062339a4: cbz      x0, #0x6233cc8
062339a8: mov      x1, x19
062339ac: mov      x2, x20
062339b0: mov      x3, xzr
062339b4: bl       #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
062339b8: b        #0x6233cac
062339bc: adrp     x21, #0x9b45000
062339c0: ldr      x21, [x21, #0xd88]
062339c4: ldr      x0, [x21]
062339c8: ldr      w8, [x0, #0xe0]
062339cc: cbnz     w8, #0x62339d8
062339d0: bl       #0x39d35c4
062339d4: ldr      x0, [x21]
062339d8: ldr      x8, [x0, #0xb8]
062339dc: ldr      x8, [x8]
062339e0: cbz      x8, #0x6233cc8
062339e4: cbz      x20, #0x6233cac
062339e8: ldr      x8, [x8, #0x18]
062339ec: cbz      x8, #0x6233cac
062339f0: mov      x0, x20
062339f4: bl       #0x6233cdc ; Damage.get_IsUsable
062339f8: tbz      w0, #0, #0x6233cac
062339fc: mov      x0, x20
06233a00: bl       #0x6233dac ; Damage.Shake
06233a04: ldr      w8, [x19, #0x30]
06233a08: ldr      q0, [x19, #0x20]
06233a0c: add      x0, sp, #0x60
06233a10: mov      x1, xzr
06233a14: str      w8, [sp, #0x70]
06233a18: add      x8, sp, #0x78
06233a1c: str      q0, [sp, #0x60]
06233a20: bl       #0x3ac70f0
06233a24: ldr      w8, [sp, #0x88]
06233a28: ldur     q0, [sp, #0x78]
06233a2c: add      x1, sp, #0x90
06233a30: mov      x0, x20
06233a34: str      w8, [sp, #0x40]
06233a38: str      q0, [sp, #0x30]
06233a3c: str      w8, [x19, #0x30]
06233a40: str      q0, [x19, #0x20]
06233a44: bl       #0x6233e30 ; Damage.TryExportAbuseArenaInfo
06233a48: tbz      w0, #0, #0x6233cac
06233a4c: adrp     x8, #0x9b3f000
06233a50: ldr      x8, [x8, #0xee0]
06233a54: mov      w1, #2
06233a58: ldr      x0, [x8]
06233a5c: bl       #0x39d3534
06233a60: adrp     x23, #0x9b40000
06233a64: ldr      w8, [sp, #0x90]
06233a68: ldr      x23, [x23, #0xd78]
06233a6c: mov      x21, x0
06233a70: add      x1, sp, #0x30
06233a74: str      w8, [sp, #0x30]
06233a78: ldr      x0, [x23]
06233a7c: bl       #0x39d35cc
06233a80: cbz      x21, #0x6233cc8
06233a84: mov      x22, x0
06233a88: cbz      x0, #0x6233aa0
06233a8c: ldr      x8, [x21]
06233a90: mov      x0, x22
06233a94: ldr      x1, [x8, #0x40]
06233a98: bl       #0x39d35c8
06233a9c: cbz      x0, #0x6233cd0
06233aa0: ldr      w8, [x21, #0x18]
06233aa4: cbz      w8, #0x6233ccc
06233aa8: str      x22, [x21, #0x20]
06233aac: ldr      w8, [sp, #0xa4]
06233ab0: ldr      x0, [x23]
06233ab4: add      x1, sp, #0x78
06233ab8: str      w8, [sp, #0x78]
06233abc: bl       #0x39d35cc
06233ac0: mov      x22, x0
06233ac4: cbz      x0, #0x6233adc
06233ac8: ldr      x8, [x21]
06233acc: mov      x0, x22
06233ad0: ldr      x1, [x8, #0x40]
06233ad4: bl       #0x39d35c8
06233ad8: cbz      x0, #0x6233cd0
06233adc: ldr      w8, [x21, #0x18]
06233ae0: cmp      w8, #1
06233ae4: b.ls     #0x6233ccc
06233ae8: str      x22, [x21, #0x28]
06233aec: adrp     x8, #0x9b45000
06233af0: ldr      x8, [x8, #0x2b0]
06233af4: ldr      x0, [x8]
06233af8: ldr      w8, [x0, #0xe0]
06233afc: cbnz     w8, #0x6233b04
06233b00: bl       #0x39d35c4
06233b04: adrp     x8, #0x9b83000
06233b08: ldr      x8, [x8, #0x7a8]
06233b0c: mov      x1, x21
06233b10: mov      x2, xzr
06233b14: ldr      x0, [x8]
06233b18: bl       #0x3c4d93c
06233b1c: ldr      x0, [x19, #0x10]
06233b20: cbz      x0, #0x6233cc8
06233b24: adrp     x25, #0x9b7d000
06233b28: adrp     x26, #0x9b83000
06233b2c: ldr      x25, [x25, #0x260]
06233b30: ldr      x26, [x26, #0x760]
06233b34: ldr      x1, [x25]
06233b38: ldr      x2, [x26]
06233b3c: bl       #0x5563c38
06233b40: ldr      x8, [x19, #0x10]
06233b44: ldr      x9, [x25]
06233b48: cmp      x0, #0
06233b4c: mov      x21, x0
06233b50: csel     x22, xzr, x8, eq
06233b54: csel     x23, xzr, x9, eq
06233b58: cbz      x0, #0x6233ba4
06233b5c: adrp     x10, #0x9b83000
06233b60: ldr      x8, [x21]
06233b64: ldr      x10, [x10, #0x788]
06233b68: ldrh     w9, [x8, #0x12e]
06233b6c: ldr      x1, [x10]
06233b70: cbz      x9, #0x6233b94
06233b74: ldr      x10, [x8, #0xb0]
06233b78: add      x10, x10, #8
06233b7c: ldur     x11, [x10, #-8]
06233b80: cmp      x11, x1
06233b84: b.eq     #0x6233bb4
06233b88: subs     x9, x9, #1
06233b8c: add      x10, x10, #0x10
06233b90: b.ne     #0x6233b7c
06233b94: mov      w2, #2
06233b98: mov      x0, x21
06233b9c: bl       #0x39a94f0
06233ba0: b        #0x6233bc4
06233ba4: mov      w24, wzr
06233ba8: mov      x22, x8
06233bac: mov      x23, x9
06233bb0: b        #0x6233bd4
06233bb4: ldr      w9, [x10]
06233bb8: add      w9, w9, #2
06233bbc: add      x8, x8, w9, sxtw #4
06233bc0: add      x0, x8, #0x138
06233bc4: ldp      x8, x1, [x0]
06233bc8: mov      x0, x21
06233bcc: blr      x8
06233bd0: mov      w24, w0
06233bd4: mov      x0, x20
06233bd8: bl       #0x6234154 ; Damage.get_Score
06233bdc: cbz      x22, #0x6233cc8
06233be0: adrp     x8, #0x9b83000
06233be4: ldr      x8, [x8, #0x7a0]
06233be8: cmp      w24, w0
06233bec: csel     x2, x21, x20, gt
06233bf0: mov      x0, x22
06233bf4: ldr      x3, [x8]
06233bf8: mov      x1, x23
06233bfc: bl       #0x5563ca4
06233c00: ldr      x0, [x19, #0x18]
06233c04: cbz      x0, #0x6233cc8
06233c08: adrp     x8, #0x9b72000
06233c0c: ldr      x1, [x25]
06233c10: ldr      x8, [x8, #0x900]
06233c14: ldr      x2, [x8]
06233c18: bl       #0x5543b84
06233c1c: tbnz     w0, #0, #0x6233cac
06233c20: ldr      x0, [x19, #0x18]
06233c24: cbz      x0, #0x6233cc8
06233c28: adrp     x8, #0x9b72000
06233c2c: ldr      x1, [x25]
06233c30: ldr      x8, [x8, #0x828]
06233c34: mov      w2, #1
06233c38: ldr      x3, [x8]
06233c3c: bl       #0x5543bf8
06233c40: ldr      x0, [x19, #0x10]
06233c44: cbz      x0, #0x6233cc8
06233c48: ldr      x1, [x25]
06233c4c: ldr      x2, [x26]
06233c50: bl       #0x5563c38
06233c54: cmp      x0, x21
06233c58: b.eq     #0x6233cac
06233c5c: adrp     x8, #0x9b79000
06233c60: ldr      x8, [x8, #0xf10]
06233c64: ldr      x0, [x8]
06233c68: ldr      w8, [x0, #0xe0]
06233c6c: cbnz     w8, #0x6233c74
06233c70: bl       #0x39d35c4
06233c74: mov      x0, xzr
06233c78: bl       #0x69334e0 ; Oak.NetworkManager.get_ApiConnection
06233c7c: ldp      q0, q1, [sp, #0x90]
06233c80: ldr      q2, [sp, #0xb0]
06233c84: stp      q0, q1, [sp, #0x30]
06233c88: str      q2, [sp, #0x50]
06233c8c: cbz      x0, #0x6233cc8
06233c90: ldp      q0, q1, [sp, #0x30]
06233c94: ldr      q2, [sp, #0x50]
06233c98: mov      x1, sp
06233c9c: mov      x2, xzr
06233ca0: stp      q0, q1, [sp]
06233ca4: str      q2, [sp, #0x20]
06233ca8: bl       #0x68ab40c ; Oak.ApiConnection.SendArenaReportAbuser
06233cac: ldp      x20, x19, [sp, #0x100]
06233cb0: ldp      x22, x21, [sp, #0xf0]
06233cb4: ldp      x24, x23, [sp, #0xe0]
06233cb8: ldp      x26, x25, [sp, #0xd0]
06233cbc: ldp      x29, x30, [sp, #0xc0]
06233cc0: add      sp, sp, #0x110
06233cc4: ret      
06233cc8: bl       #0x39d36e4
06233ccc: bl       #0x39d36ec
06233cd0: bl       #0x39d3708
06233cd4: mov      x1, xzr
06233cd8: bl       #0x39d35b4

// Oak.MultiPlayHackReporter.ReportDamageHackUser 0x62341f0
062341f0: str      x30, [sp, #-0x20]!
062341f4: stp      x20, x19, [sp, #0x10]
062341f8: adrp     x20, #0xa267000
062341fc: ldrb     w8, [x20, #0x260]
06234200: mov      x19, x0
06234204: tbnz     w8, #0, #0x623421c
06234208: adrp     x0, #0x9b83000
0623420c: ldr      x0, [x0, #0x728]
06234210: bl       #0x39d34bc
06234214: mov      w8, #1
06234218: strb     w8, [x20, #0x260]
0623421c: mov      w0, #0x66e3
06234220: mov      x1, xzr
06234224: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06234228: tbz      w0, #0, #0x6234250
0623422c: mov      w0, #0x66e3
06234230: mov      x1, xzr
06234234: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06234238: cbz      x0, #0x6234284
0623423c: mov      x1, x19
06234240: ldp      x20, x19, [sp, #0x10]
06234244: mov      x2, xzr
06234248: ldr      x30, [sp], #0x20
0623424c: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
06234250: adrp     x8, #0x9b83000
06234254: ldr      x8, [x8, #0x728]
06234258: ldr      x8, [x8]
0623425c: ldr      x8, [x8, #0xb8]
06234260: ldr      x0, [x8]
06234264: cbz      x0, #0x6234278
06234268: mov      x1, x19
0623426c: ldp      x20, x19, [sp, #0x10]
06234270: ldr      x30, [sp], #0x20
06234274: b        #0x62338b8 ; Oak.MultiPlayHackReporter.ReportDamageHackUserInternal
06234278: ldp      x20, x19, [sp, #0x10]
0623427c: ldr      x30, [sp], #0x20
06234280: ret      
06234284: bl       #0x39d36e4

// Oak.MultiPlayHackReporter.ReportManaHackInternal 0x6234288
06234288: sub      sp, sp, #0x110
0623428c: stp      x29, x30, [sp, #0xc0]
06234290: stp      x26, x25, [sp, #0xd0]
06234294: stp      x24, x23, [sp, #0xe0]
06234298: stp      x22, x21, [sp, #0xf0]
0623429c: stp      x20, x19, [sp, #0x100]
062342a0: adrp     x21, #0xa267000
062342a4: ldrb     w8, [x21, #0x261]
062342a8: mov      x20, x1
062342ac: mov      x19, x0
062342b0: tbnz     w8, #0, #0x623434c
062342b4: adrp     x0, #0x9b45000
062342b8: ldr      x0, [x0, #0xd88]
062342bc: bl       #0x39d34bc
062342c0: adrp     x0, #0x9b45000
062342c4: ldr      x0, [x0, #0x2b0]
062342c8: bl       #0x39d34bc
062342cc: adrp     x0, #0x9b83000
062342d0: ldr      x0, [x0, #0x760]
062342d4: bl       #0x39d34bc
062342d8: adrp     x0, #0x9b72000
062342dc: ldr      x0, [x0, #0x900]
062342e0: bl       #0x39d34bc
062342e4: adrp     x0, #0x9b83000
062342e8: ldr      x0, [x0, #0x7a0]
062342ec: bl       #0x39d34bc
062342f0: adrp     x0, #0x9b72000
062342f4: ldr      x0, [x0, #0x828]
062342f8: bl       #0x39d34bc
062342fc: adrp     x0, #0x9b83000
06234300: ldr      x0, [x0, #0x788]
06234304: bl       #0x39d34bc
06234308: adrp     x0, #0x9b40000
0623430c: ldr      x0, [x0, #0xd78]
06234310: bl       #0x39d34bc
06234314: adrp     x0, #0x9b79000
06234318: ldr      x0, [x0, #0xf10]
0623431c: bl       #0x39d34bc
06234320: adrp     x0, #0x9b3f000
06234324: ldr      x0, [x0, #0xee0]
06234328: bl       #0x39d34bc
0623432c: adrp     x0, #0x9b83000
06234330: ldr      x0, [x0, #0x7b0]
06234334: bl       #0x39d34bc
06234338: adrp     x0, #0x9b83000
0623433c: ldr      x0, [x0, #0x750]
06234340: bl       #0x39d34bc
06234344: mov      w8, #1
06234348: strb     w8, [x21, #0x261]
0623434c: movi     v0.2d, #0000000000000000
06234350: mov      w0, #0x81ae
06234354: mov      x1, xzr
06234358: stp      q0, q0, [sp, #0xa0]
0623435c: str      q0, [sp, #0x90]
06234360: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06234364: tbz      w0, #0, #0x623438c
06234368: mov      w0, #0x81ae
0623436c: mov      x1, xzr
06234370: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06234374: cbz      x0, #0x6234698
06234378: mov      x1, x19
0623437c: mov      x2, x20
06234380: mov      x3, xzr
06234384: bl       #0x860d604 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_42
06234388: b        #0x623467c
0623438c: adrp     x21, #0x9b45000
06234390: ldr      x21, [x21, #0xd88]
06234394: ldr      x0, [x21]
06234398: ldr      w8, [x0, #0xe0]
0623439c: cbnz     w8, #0x62343a8
062343a0: bl       #0x39d35c4
062343a4: ldr      x0, [x21]
062343a8: ldr      x8, [x0, #0xb8]
062343ac: ldr      x8, [x8]
062343b0: cbz      x8, #0x6234698
062343b4: cbz      x20, #0x623467c
062343b8: ldr      x8, [x8, #0x18]
062343bc: cbz      x8, #0x623467c
062343c0: mov      x0, x20
062343c4: bl       #0x62346ac ; Mana.get_IsUsable
062343c8: tbz      w0, #0, #0x623467c
062343cc: mov      x0, x20
062343d0: bl       #0x6234744 ; Mana.Shake
062343d4: ldr      w8, [x19, #0x30]
062343d8: ldr      q0, [x19, #0x20]
062343dc: add      x0, sp, #0x60
062343e0: mov      x1, xzr
062343e4: str      w8, [sp, #0x70]
062343e8: add      x8, sp, #0x78
062343ec: str      q0, [sp, #0x60]
062343f0: bl       #0x3ac70f0
062343f4: ldr      w8, [sp, #0x88]
062343f8: ldur     q0, [sp, #0x78]
062343fc: add      x1, sp, #0x90
06234400: mov      x0, x20
06234404: str      w8, [sp, #0x40]
06234408: str      q0, [sp, #0x30]
0623440c: str      w8, [x19, #0x30]
06234410: str      q0, [x19, #0x20]
06234414: bl       #0x62347c8 ; Mana.TryExportAbuseArenaInfo
06234418: tbz      w0, #0, #0x623467c
0623441c: adrp     x8, #0x9b3f000
06234420: ldr      x8, [x8, #0xee0]
06234424: mov      w1, #2
06234428: ldr      x0, [x8]
0623442c: bl       #0x39d3534
06234430: adrp     x23, #0x9b40000
06234434: ldr      w8, [sp, #0x90]
06234438: ldr      x23, [x23, #0xd78]
0623443c: mov      x21, x0
06234440: add      x1, sp, #0x30
06234444: str      w8, [sp, #0x30]
06234448: ldr      x0, [x23]
0623444c: bl       #0x39d35cc
06234450: cbz      x21, #0x6234698
06234454: mov      x22, x0
06234458: cbz      x0, #0x6234470
0623445c: ldr      x8, [x21]
06234460: mov      x0, x22
06234464: ldr      x1, [x8, #0x40]
06234468: bl       #0x39d35c8
0623446c: cbz      x0, #0x62346a0
06234470: ldr      w8, [x21, #0x18]
06234474: cbz      w8, #0x623469c
06234478: str      x22, [x21, #0x20]
0623447c: ldr      w8, [sp, #0xa4]
06234480: ldr      x0, [x23]
06234484: add      x1, sp, #0x78
06234488: str      w8, [sp, #0x78]
0623448c: bl       #0x39d35cc
06234490: mov      x22, x0
06234494: cbz      x0, #0x62344ac
06234498: ldr      x8, [x21]
0623449c: mov      x0, x22
062344a0: ldr      x1, [x8, #0x40]
062344a4: bl       #0x39d35c8
062344a8: cbz      x0, #0x62346a0
062344ac: ldr      w8, [x21, #0x18]
062344b0: cmp      w8, #1
062344b4: b.ls     #0x623469c
062344b8: str      x22, [x21, #0x28]
062344bc: adrp     x8, #0x9b45000
062344c0: ldr      x8, [x8, #0x2b0]
062344c4: ldr      x0, [x8]
062344c8: ldr      w8, [x0, #0xe0]
062344cc: cbnz     w8, #0x62344d4
062344d0: bl       #0x39d35c4
062344d4: adrp     x8, #0x9b83000
062344d8: ldr      x8, [x8, #0x7b0]
062344dc: mov      x1, x21
062344e0: mov      x2, xzr
062344e4: ldr      x0, [x8]
062344e8: bl       #0x3c4d93c
062344ec: ldr      x0, [x19, #0x10]
062344f0: cbz      x0, #0x6234698
062344f4: adrp     x25, #0x9b83000
062344f8: adrp     x26, #0x9b83000
062344fc: ldr      x25, [x25, #0x750]
06234500: ldr      x26, [x26, #0x760]
06234504: ldr      x1, [x25]
06234508: ldr      x2, [x26]
0623450c: bl       #0x5563c38
06234510: ldr      x8, [x19, #0x10]
06234514: ldr      x9, [x25]
06234518: cmp      x0, #0
0623451c: mov      x21, x0
06234520: csel     x22, xzr, x8, eq
06234524: csel     x23, xzr, x9, eq
06234528: cbz      x0, #0x6234574
0623452c: adrp     x10, #0x9b83000
06234530: ldr      x8, [x21]
06234534: ldr      x10, [x10, #0x788]
06234538: ldrh     w9, [x8, #0x12e]
0623453c: ldr      x1, [x10]
06234540: cbz      x9, #0x6234564
06234544: ldr      x10, [x8, #0xb0]
06234548: add      x10, x10, #8
0623454c: ldur     x11, [x10, #-8]
06234550: cmp      x11, x1
06234554: b.eq     #0x6234584
06234558: subs     x9, x9, #1
0623455c: add      x10, x10, #0x10
06234560: b.ne     #0x623454c
06234564: mov      w2, #2
06234568: mov      x0, x21
0623456c: bl       #0x39a94f0
06234570: b        #0x6234594
06234574: mov      w24, wzr
06234578: mov      x22, x8
0623457c: mov      x23, x9
06234580: b        #0x62345a4
06234584: ldr      w9, [x10]
06234588: add      w9, w9, #2
0623458c: add      x8, x8, w9, sxtw #4
06234590: add      x0, x8, #0x138
06234594: ldp      x8, x1, [x0]
06234598: mov      x0, x21
0623459c: blr      x8
062345a0: mov      w24, w0
062345a4: mov      x0, x20
062345a8: bl       #0x6234a84 ; Mana.get_Score
062345ac: cbz      x22, #0x6234698
062345b0: adrp     x8, #0x9b83000
062345b4: ldr      x8, [x8, #0x7a0]
062345b8: cmp      w24, w0
062345bc: csel     x2, x21, x20, gt
062345c0: mov      x0, x22
062345c4: ldr      x3, [x8]
062345c8: mov      x1, x23
062345cc: bl       #0x5563ca4
062345d0: ldr      x0, [x19, #0x18]
062345d4: cbz      x0, #0x6234698
062345d8: adrp     x8, #0x9b72000
062345dc: ldr      x1, [x25]
062345e0: ldr      x8, [x8, #0x900]
062345e4: ldr      x2, [x8]
062345e8: bl       #0x5543b84
062345ec: tbnz     w0, #0, #0x623467c
062345f0: ldr      x0, [x19, #0x18]
062345f4: cbz      x0, #0x6234698
062345f8: adrp     x8, #0x9b72000
062345fc: ldr      x1, [x25]
06234600: ldr      x8, [x8, #0x828]
06234604: mov      w2, #1
06234608: ldr      x3, [x8]
0623460c: bl       #0x5543bf8
06234610: ldr      x0, [x19, #0x10]
06234614: cbz      x0, #0x6234698
06234618: ldr      x1, [x25]
0623461c: ldr      x2, [x26]
06234620: bl       #0x5563c38
06234624: cmp      x0, x21
06234628: b.eq     #0x623467c
0623462c: adrp     x8, #0x9b79000
06234630: ldr      x8, [x8, #0xf10]
06234634: ldr      x0, [x8]
06234638: ldr      w8, [x0, #0xe0]
0623463c: cbnz     w8, #0x6234644
06234640: bl       #0x39d35c4
06234644: mov      x0, xzr
06234648: bl       #0x69334e0 ; Oak.NetworkManager.get_ApiConnection
0623464c: ldp      q0, q1, [sp, #0x90]
06234650: ldr      q2, [sp, #0xb0]
06234654: stp      q0, q1, [sp, #0x30]
06234658: str      q2, [sp, #0x50]
0623465c: cbz      x0, #0x6234698
06234660: ldp      q0, q1, [sp, #0x30]
06234664: ldr      q2, [sp, #0x50]
06234668: mov      x1, sp
0623466c: mov      x2, xzr
06234670: stp      q0, q1, [sp]
06234674: str      q2, [sp, #0x20]
06234678: bl       #0x68ab40c ; Oak.ApiConnection.SendArenaReportAbuser
0623467c: ldp      x20, x19, [sp, #0x100]
06234680: ldp      x22, x21, [sp, #0xf0]
06234684: ldp      x24, x23, [sp, #0xe0]
06234688: ldp      x26, x25, [sp, #0xd0]
0623468c: ldp      x29, x30, [sp, #0xc0]
06234690: add      sp, sp, #0x110
06234694: ret      
06234698: bl       #0x39d36e4
0623469c: bl       #0x39d36ec
062346a0: bl       #0x39d3708
062346a4: mov      x1, xzr
062346a8: bl       #0x39d35b4

// Oak.MultiPlayHackReporter.ReportManaHack 0x6234b38
06234b38: str      x30, [sp, #-0x20]!
06234b3c: stp      x20, x19, [sp, #0x10]
06234b40: adrp     x20, #0xa267000
06234b44: ldrb     w8, [x20, #0x262]
06234b48: mov      x19, x0
06234b4c: tbnz     w8, #0, #0x6234b64
06234b50: adrp     x0, #0x9b83000
06234b54: ldr      x0, [x0, #0x728]
06234b58: bl       #0x39d34bc
06234b5c: mov      w8, #1
06234b60: strb     w8, [x20, #0x262]
06234b64: mov      w0, #0x81b9
06234b68: mov      x1, xzr
06234b6c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06234b70: tbz      w0, #0, #0x6234b98
06234b74: mov      w0, #0x81b9
06234b78: mov      x1, xzr
06234b7c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06234b80: cbz      x0, #0x6234bcc
06234b84: mov      x1, x19
06234b88: ldp      x20, x19, [sp, #0x10]
06234b8c: mov      x2, xzr
06234b90: ldr      x30, [sp], #0x20
06234b94: b        #0x860ca30 ; IFix.ILFixDynamicMethodWrapper.__Gen_Wrap_29
06234b98: adrp     x8, #0x9b83000
06234b9c: ldr      x8, [x8, #0x728]
06234ba0: ldr      x8, [x8]
06234ba4: ldr      x8, [x8, #0xb8]
06234ba8: ldr      x0, [x8]
06234bac: cbz      x0, #0x6234bc0
06234bb0: mov      x1, x19
06234bb4: ldp      x20, x19, [sp, #0x10]
06234bb8: ldr      x30, [sp], #0x20
06234bbc: b        #0x6234288 ; Oak.MultiPlayHackReporter.ReportManaHackInternal
06234bc0: ldp      x20, x19, [sp, #0x10]
06234bc4: ldr      x30, [sp], #0x20
06234bc8: ret      
06234bcc: bl       #0x39d36e4

// Oak.MultiPlayHackReporter..ctor 0x623322c
0623322c: sub      sp, sp, #0x80
06233230: stp      x30, x25, [sp, #0x40]
06233234: stp      x24, x23, [sp, #0x50]
06233238: stp      x22, x21, [sp, #0x60]
0623323c: stp      x20, x19, [sp, #0x70]
06233240: adrp     x21, #0xa267000
06233244: adrp     x22, #0x9b83000
06233248: adrp     x20, #0x9b83000
0623324c: ldrb     w8, [x21, #0x263]
06233250: ldr      x22, [x22, #0x730]
06233254: ldr      x20, [x20, #0x738]
06233258: mov      x19, x0
0623325c: tbnz     w8, #0, #0x62332c8
06233260: adrp     x0, #0x9b83000
06233264: ldr      x0, [x0, #0x740]
06233268: bl       #0x39d34bc
0623326c: adrp     x0, #0x9b83000
06233270: ldr      x0, [x0, #0x748]
06233274: bl       #0x39d34bc
06233278: adrp     x0, #0x9b83000
0623327c: ldr      x0, [x0, #0x738]
06233280: bl       #0x39d34bc
06233284: adrp     x0, #0x9b72000
06233288: ldr      x0, [x0, #0x7f8]
0623328c: bl       #0x39d34bc
06233290: adrp     x0, #0x9b72000
06233294: ldr      x0, [x0, #0x830]
06233298: bl       #0x39d34bc
0623329c: adrp     x0, #0x9b83000
062332a0: ldr      x0, [x0, #0x730]
062332a4: bl       #0x39d34bc
062332a8: adrp     x0, #0x9b7d000
062332ac: ldr      x0, [x0, #0x260]
062332b0: bl       #0x39d34bc
062332b4: adrp     x0, #0x9b83000
062332b8: ldr      x0, [x0, #0x750]
062332bc: bl       #0x39d34bc
062332c0: mov      w8, #1
062332c4: strb     w8, [x21, #0x263]
062332c8: ldr      x0, [x22]
062332cc: bl       #0x39d36d8
062332d0: ldr      x1, [x20]
062332d4: mov      x20, x0
062332d8: bl       #0x5563364
062332dc: cbz      x20, #0x62333cc
062332e0: adrp     x22, #0x9b7d000
062332e4: adrp     x23, #0x9b83000
062332e8: ldr      x22, [x22, #0x260]
062332ec: ldr      x23, [x23, #0x748]
062332f0: adrp     x21, #0x9b83000
062332f4: adrp     x24, #0x9b72000
062332f8: ldr      x1, [x22]
062332fc: ldr      x3, [x23]
06233300: adrp     x25, #0x9b72000
06233304: ldr      x21, [x21, #0x750]
06233308: ldr      x24, [x24, #0x830]
0623330c: ldr      x25, [x25, #0x7f8]
06233310: mov      x0, x20
06233314: mov      x2, xzr
06233318: bl       #0x5563cb8
0623331c: ldr      x1, [x21]
06233320: ldr      x3, [x23]
06233324: mov      x0, x20
06233328: mov      x2, xzr
0623332c: bl       #0x5563cb8
06233330: str      x20, [x19, #0x10]
06233334: ldr      x0, [x24]
06233338: bl       #0x39d36d8
0623333c: ldr      x1, [x25]
06233340: mov      x20, x0
06233344: bl       #0x55432ac
06233348: cbz      x20, #0x62333cc
0623334c: adrp     x23, #0x9b83000
06233350: ldr      x23, [x23, #0x740]
06233354: ldr      x1, [x22]
06233358: mov      x0, x20
0623335c: mov      w2, wzr
06233360: ldr      x3, [x23]
06233364: bl       #0x5543c10
06233368: ldr      x1, [x21]
0623336c: ldr      x3, [x23]
06233370: mov      x0, x20
06233374: mov      w2, wzr
06233378: bl       #0x5543c10
0623337c: add      x8, sp, #8
06233380: mov      w0, wzr
06233384: mov      x1, xzr
06233388: str      x20, [x19, #0x18]
0623338c: bl       #0x3ac6f60
06233390: ldr      w8, [sp, #0x18]
06233394: ldur     q0, [sp, #8]
06233398: mov      x0, x19
0623339c: mov      x1, xzr
062333a0: str      w8, [sp, #0x30]
062333a4: str      q0, [sp, #0x20]
062333a8: str      w8, [x19, #0x30]
062333ac: str      q0, [x19, #0x20]
062333b0: bl       #0x5c9bdb4
062333b4: ldp      x20, x19, [sp, #0x70]
062333b8: ldp      x22, x21, [sp, #0x60]
062333bc: ldp      x24, x23, [sp, #0x50]
062333c0: ldp      x30, x25, [sp, #0x40]
062333c4: add      sp, sp, #0x80
062333c8: ret      
062333cc: bl       #0x39d36e4
