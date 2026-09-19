Oak.MerchDamageBoostAppliedStageOption.GetDamageModifier
06a29564: str      x30, [sp, #-0x20]!
06a29568: stp      x20, x19, [sp, #0x10]
06a2956c: mov      x19, x1
06a29570: mov      x20, x0
06a29574: mov      w0, #0xdeae
06a29578: mov      x1, xzr
06a2957c: bl       #0x882681c ; IFix.WrappersManagerImpl.IsPatched
06a29580: tbz      w0, #0, #0x6a295ac
06a29584: mov      w0, #0xdeae
06a29588: mov      x1, xzr
06a2958c: bl       #0x88268d0 ; IFix.WrappersManagerImpl.GetPatch
06a29590: cbz      x0, #0x6a295bc
06a29594: mov      x1, x20
06a29598: mov      x2, x19
06a2959c: ldp      x20, x19, [sp, #0x10]
06a295a0: mov      x3, xzr
06a295a4: ldr      x30, [sp], #0x20
06a295a8: b        #0x8637cd4
06a295ac: ldr      s0, [x20, #0x18]
06a295b0: ldp      x20, x19, [sp, #0x10]
06a295b4: ldr      x30, [sp], #0x20
06a295b8: ret      
06a295bc: bl       #0x39d36e4 ; unmapped