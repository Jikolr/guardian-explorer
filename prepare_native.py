"""Export mapped game methods as compressed, on-demand ARM64 evidence chunks."""
from pathlib import Path
import sys,csv,json,gzip,bisect
BASE=Path(__file__).resolve().parent; SRC=BASE.parent/'guardian-analysis';sys.path.insert(0,str(SRC));import native_probe as n
OUT=BASE/'dist/data/research/native';OUT.mkdir(parents=True,exist_ok=True)
rows=list(csv.DictReader((SRC/'audit/game-method-addresses.csv').open(encoding='utf8')))
valid=sorted([r for r in rows if int(r['va'],16)],key=lambda r:int(r['va'],16));addrs=[int(r['va'],16) for r in valid];names={int(r['va'],16):r['type']+'.'+r['name'] for r in valid};index={};total=0
# Registered entry points bound ranges, not recovered source/function boundaries.
for start in range(0,len(valid),250):
 chunk={}
 for j,r in enumerate(valid[start:start+250],start):
  va=addrs[j];section=next((s for s in n.sections if s['sh_addr']<=va<s['sh_addr']+s['sh_size']),None)
  if section is None:continue
  end=min(addrs[j+1] if j+1<len(addrs) else va+65536,section['sh_addr']+section['sh_size']);cap=min(end,va+65536);off=n.va_to_off(va)
  lines=[];decoded=0
  for address,size,mnemonic,ops in n.md.disasm_lite(n.blob[off:off+cap-va],va):
   target=None
   if mnemonic in ('bl','b') and ops.startswith('#0x'):
    try:target=names.get(int(ops[1:],16))
    except ValueError:pass
   lines.append(f'{address:08x}: {mnemonic:8} {ops}'+(' ; '+target if target else ''));decoded+=size
  state='Address-bounded disassembly; not reviewed'
  if cap<end or decoded<cap-va:state='Partial address range; not reviewed'
  chunk[r['index']]={'name':r['type']+'.'+r['name'],'address':r['va'],'status':state,'rangeBytes':cap-va,'decodedBytes':decoded,'text':'\n'.join(lines)}
  index[r['index']]=start//250
 data=gzip.compress(json.dumps(chunk,separators=(',',':')).encode(),compresslevel=9,mtime=0);(OUT/f'{start//250}.json.gz').write_bytes(data);total+=len(data)
 if start%10000==0:print(start,len(valid),'compressed MB',round(total/1e6,1),flush=True)
(OUT/'index.json').write_text(json.dumps({'methods':index,'count':len(index),'bytes':total,'notice':'ARM64 assembly from the supplied APK. Ranges end at the next mapped game entry point and may contain padding or other code. Very large ranges are capped at 64 KiB; undecodable/capped ranges are labeled partial. Runtime patches can replace these methods. No original C# source is implied.'},separators=(',',':')))
print('DONE',len(index),total,flush=True)
