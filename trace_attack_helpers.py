from pathlib import Path
import sys,csv,struct
root=Path(__file__).resolve().parent
sys.path.insert(0,str(root.parent/'guardian-analysis'))
import native_probe as n
import numpy as np
relocs=np.frombuffer(n.elf.get_section_by_name('.rela.dyn').data(),dtype=[('off','<u8'),('info','<u8'),('add','<u8')])
rel={int(x['off']):int(x['add']) for x in relocs if int(x['info'])&0xffffffff==1027}
needle=b'CharacterTool.Runtime.dll\0';off=n.blob.find(needle)
va=next(s['sh_addr']+off-s['sh_offset'] for s in n.elf.iter_sections() if s['sh_type']!='SHT_NOBITS' and s['sh_offset']<=off<s['sh_offset']+s['sh_size'])
module=next(k for k,v in rel.items() if v==va and k+16 in rel)
count=struct.unpack_from('<I',n.blob,n.va_to_off(module)+8)[0];table=rel[module+16]
rows=list(csv.DictReader((root.parent/'guardian-analysis/audit/managed-methods.csv').open(encoding='utf-8')))
mapped={rel.get(table+((int(r['token'],16)&0xffffff)-1)*8,0):r for r in rows if r['assembly']=='CharacterTool.Runtime.dll'}
for addr,r in mapped.items():
 if not addr or r['type'] not in ['CharacterTool.CollisionCalculateOnce','CharacterTool.CollisionInBattleOnce','CharacterTool.GetModifier','CharacterTool.GetCharacterAttackToDps','CharacterTool.GetOptionAppliedSelector'] or r['name'] not in ['TriggerAction','GetValue','GetModifier','Result','AssignForExecute']:continue
 end=min(a for a in mapped if a>addr)
 out=n.disasm(addr,end-addr)
 (root/'docs/passive-evidence'/(r['type'].split('.')[-1]+'-'+r['name']+'.asm')).write_text(out,encoding='utf-8')
 print(r['type'],r['name'],hex(addr),len(out))
