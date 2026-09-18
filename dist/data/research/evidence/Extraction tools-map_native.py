from pathlib import Path
import csv,json,re,struct
import numpy as np
import native_probe as n
OUT=Path(__file__).parent/'audit'
r=np.frombuffer(n.elf.get_section_by_name('.rela.dyn').data(),dtype=[('off','<u8'),('info','<u8'),('add','<u8')])
rel={int(x['off']):int(x['add']) for x in r if int(x['info'])&0xffffffff==1027}
module=0x9b0ec10
count=struct.unpack_from('<I',n.blob,n.va_to_off(module)+8)[0]
table=rel[module+16]
rows=list(csv.DictReader((OUT/'managed-methods.csv').open(encoding='utf-8')))
names={};mapped=[]
for row in rows:
    if row['assembly']!='Scripts.dll':continue
    token=int(row['token'],16)&0xffffff
    assert 0<token<=count
    va=rel.get(table+(token-1)*8,0)
    row['va']=hex(va);mapped.append(row)
    if va:names.setdefault(va,[]).append(row['type']+'.'+row['name'])
with (OUT/'game-method-addresses.csv').open('w',newline='',encoding='utf-8') as f:
    w=csv.DictWriter(f,fieldnames=list(mapped[0]));w.writeheader();w.writerows(mapped)
addresses=sorted(names)
def dump(row):
    va=int(row['va'],16)
    if not va:return ''
    idx=addresses.index(va); end=addresses[idx+1] if idx+1<len(addresses) else va+4096
    text=n.disasm(va,min(end-va,12000))
    text=re.sub(r'#0x([0-9a-f]+)',lambda m:m[0]+(' ; '+' | '.join(names[int(m[1],16)]) if int(m[1],16) in names else ''),text)
    return '// '+row['type']+'.'+row['name']+' '+row['va']+'\n'+text+'\n'
if __name__=='__main__':
    targets={'Oak.GameScriptDecrypt','Foundations.EncryptStream','Oak.StaticDataRepository','Oak.ExpsDataLevelExpExtensions','Oak.LevelExpSpec'}
    folder=OUT/'disassembly';folder.mkdir(exist_ok=True)
    for typ in targets:
        out='\n'.join(dump(x) for x in mapped if x['type']==typ)
        (folder/(typ+'.asm')).write_text(out,encoding='utf-8')
    print('Mapped',len(mapped),'methods;',len(names),'distinct nonzero addresses')
    for row in mapped:
        if row['type']=='Oak.GameScriptDecrypt':print(row['name'],row['va'])
