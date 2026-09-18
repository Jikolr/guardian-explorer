// Oak.LevelExpSpec.get_Level 0x6c46ae4
06c46ae4: ldr      w9, [x0, #0x20]
06c46ae8: ldr      q0, [x0, #0x10]
06c46aec: str      w9, [x8, #0x10]
06c46af0: str      q0, [x8]
06c46af4: ret      

// Oak.LevelExpSpec.set_Level 0x6c46af8
06c46af8: ldr      w8, [x1, #0x10]
06c46afc: ldr      q0, [x1]
06c46b00: str      w8, [x0, #0x20]
06c46b04: str      q0, [x0, #0x10]
06c46b08: ret      

// Oak.LevelExpSpec.get_Exps 0x6c46b0c
06c46b0c: ldr      w9, [x0, #0x34]
06c46b10: ldur     q0, [x0, #0x24]
06c46b14: str      w9, [x8, #0x10]
06c46b18: str      q0, [x8]
06c46b1c: ret      

// Oak.LevelExpSpec.set_Exps 0x6c46b20
06c46b20: ldr      w8, [x1, #0x10]
06c46b24: ldr      q0, [x1]
06c46b28: str      w8, [x0, #0x34]
06c46b2c: stur     q0, [x0, #0x24]
06c46b30: ret      

// Oak.LevelExpSpec.get_TotalExps 0x6c46b34
06c46b34: ldr      w9, [x0, #0x48]
06c46b38: ldur     q0, [x0, #0x38]
06c46b3c: str      w9, [x8, #0x10]
06c46b40: str      q0, [x8]
06c46b44: ret      

// Oak.LevelExpSpec.set_TotalExps 0x6c46b48
06c46b48: ldr      w8, [x1, #0x10]
06c46b4c: ldr      q0, [x1]
06c46b50: str      w8, [x0, #0x48]
06c46b54: stur     q0, [x0, #0x38]
06c46b58: ret      

// Oak.LevelExpSpec.get_ExpUnit 0x6c46b5c
06c46b5c: ldr      w0, [x0, #0x4c]
06c46b60: ret      

// Oak.LevelExpSpec.set_ExpUnit 0x6c46b64
06c46b64: str      w1, [x0, #0x4c]
06c46b68: ret      

// Oak.LevelExpSpec.get_DropExps 0x6c46b6c
06c46b6c: ldr      w0, [x0, #0x50]
06c46b70: ret      

// Oak.LevelExpSpec.set_DropExps 0x6c46b74
06c46b74: str      w1, [x0, #0x50]
06c46b78: ret      

// Oak.LevelExpSpec.get_DropGold 0x6c46b7c
06c46b7c: ldr      w0, [x0, #0x54]
06c46b80: ret      

// Oak.LevelExpSpec.set_DropGold 0x6c46b84
06c46b84: str      w1, [x0, #0x54]
06c46b88: ret      

// Oak.LevelExpSpec..ctor 0x6c46b8c
06c46b8c: mov      x1, xzr
06c46b90: b        #0x5c9bdb4
