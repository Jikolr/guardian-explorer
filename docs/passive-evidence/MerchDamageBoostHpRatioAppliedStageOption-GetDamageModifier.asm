Oak.MerchDamageBoostHpRatioAppliedStageOption.GetDamageModifier
06a29990: str      x30, [sp, #-0x20]!
06a29994: stp      x20, x19, [sp, #0x10]
06a29998: mov      x20, x1
06a2999c: mov      x19, x0
06a299a0: mov      w0, #0xdeb2
06a299a4: mov      x1, xzr
06a299a8: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a299ac: tbz      w0, #0, #0x6a299d8
06a299b0: mov      w0, #0xdeb2
06a299b4: mov      x1, xzr
06a299b8: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a299bc: cbz      x0, #0x6a29a00
06a299c0: mov      x1, x19
06a299c4: mov      x2, x20
06a299c8: ldp      x20, x19, [sp, #0x10]
06a299cc: mov      x3, xzr
06a299d0: ldr      x30, [sp], #0x20
06a299d4: b        #0x8637cd4
06a299d8: mov      x0, x19
06a299dc: mov      x1, x20
06a299e0: bl       #0x6a298f0 ; Oak.MerchDamageBoostHpRatioAppliedStageOption.IsBoss
06a299e4: tbz      w0, #0, #0x6a299f0
06a299e8: ldr      s0, [x19, #0x34]
06a299ec: b        #0x6a299f4
06a299f0: ldr      s0, [x19, #0x18]
06a299f4: ldp      x20, x19, [sp, #0x10]
06a299f8: ldr      x30, [sp], #0x20
06a299fc: ret      
06a29a00: bl       #0x39d36e4 ; unmapped