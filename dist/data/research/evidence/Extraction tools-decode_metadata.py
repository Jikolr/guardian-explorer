"""Reproduce the ARM64 metadata loader at VA 0x39cf804, without running the game.

Layout definitions: Perfare/Il2CppDumper MetadataClass.cs, version 31 layout.
Original loader leaves sanity/version zero; they are not patched in this output.
"""
from pathlib import Path
import struct, csv, json, re, hashlib
import numpy as np

BASE=Path(__file__).parent
OUT=BASE/'audit'; OUT.mkdir(exist_ok=True)
lib=(BASE/'apk/config.arm64_v8a/lib/arm64-v8a/libil2cpp.so').read_bytes()
resource=(OUT/'apk-extra/assets/bin/Data/Managed/Resources/mscorlib.dll-resources.dat').read_bytes()
start=struct.unpack_from('<I',resource,len(resource)//4*4-4)[0]^0x52776dee
size=len(resource)-start-4
assert size%4==0 and 0<start<len(resource)
key=lib[0x1fc66f0:0x1fc66f0+52]
words=np.frombuffer(resource[start&~3:(start&~3)+size],dtype='<u4').copy()
words^=np.resize(np.frombuffer(key,dtype='<u4'),len(words))
b=words.tobytes(); (OUT/'global-metadata.dat').write_bytes(b)
def pair(pos):
    o,n=struct.unpack_from('<II',b,pos)
    assert o+n<=len(b)
    return o,n
for pos in range(8,256,8): pair(pos)
so,sn=pair(24)
def string(i):
    assert 0<=i<sn
    end=b.index(b'\0',so+i,so+sn)
    return b[so+i:end].decode('utf-8')
to,tn=pair(0xa0); mo,mn=pair(0x30); fo,fn=pair(0x60); io,ins=pair(0xa8)
assert tn%88==mn%36==fn%12==ins%40==0
images=[]
for o in range(io,io+ins,40):
    v=struct.unpack_from('<10I',b,o)
    images.append(dict(name=string(v[0]),type_start=v[2],type_count=v[3]))
types=[]; methods=[]; fields=[]
for idx,o in enumerate(range(to,to+tn,88)):
    v=struct.unpack_from('<16i8H2I',b,o)
    name=string(v[1])+'.'+string(v[0]);name=name.lstrip('.')
    assembly=next(x['name'] for x in images if x['type_start']<=idx<x['type_start']+x['type_count'])
    row=dict(index=idx,assembly=assembly,name=name,field_start=v[8],method_start=v[9],method_count=v[16],field_count=v[18],token=hex(v[-1]))
    types.append(row)
    for j in range(v[9],v[9]+v[16]):
        x=struct.unpack_from('<7I4H',b,mo+j*36)
        assert x[1]==idx
        methods.append(dict(index=j,assembly=assembly,type=name,name=string(x[0]),return_type=x[2],parameter_start=x[4],parameter_count=x[-1],token=hex(x[6])))
    for j in range(v[8],v[8]+v[18]):
        x=struct.unpack_from('<3I',b,fo+j*12)
        fields.append(dict(index=j,assembly=assembly,type=name,name=string(x[0]),type_index=x[1],token=hex(x[2])))
assert len(methods)==mn//36 and len(fields)==fn//12
def save(name,rows):
    with (OUT/name).open('w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
save('managed-types.csv',types);save('managed-methods.csv',methods);save('managed-fields.csv',fields)
lo,ln=pair(8);ld,ldn=pair(16); literals=[]
for i,o in enumerate(range(lo,lo+ln,8)):
    n,off=struct.unpack_from('<II',b,o); assert off+n<=ldn
    literals.append(dict(index=i,text=b[ld+off:ld+off+n].decode('utf-8',errors='replace')))
(OUT/'managed-literals.json').write_text(json.dumps(literals,ensure_ascii=True,indent=2),encoding='utf-8')
interesting=re.compile(r'exp|level|damage|attack|defen|statgrowth|decrypt|encrypt|cipher|staticdata|datastore|demonworld',re.I)
save('gameplay-methods.csv',[x for x in methods if x['assembly']=='Scripts.dll' and interesting.search(x['type']+' '+x['name'])])
summary=dict(resource_offset=start,metadata_size=size,sha256=hashlib.sha256(b).hexdigest(),layout='31-compatible, original version field zero',assemblies=images,types=len(types),methods=len(methods),fields=len(fields),literals=len(literals),all_section_bounds_valid=True,all_method_owners_valid=True)
(OUT/'metadata-summary.json').write_text(json.dumps(summary,indent=2),encoding='utf-8')
print({k:v for k,v in summary.items() if k!='assemblies'})
print('Scripts.dll',next(x for x in images if x['name']=='Scripts.dll'))

