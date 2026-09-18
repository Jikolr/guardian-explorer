"""Reproduce Foundations.EncryptStream, then raw DEFLATE. No game execution."""
from pathlib import Path
import struct,hashlib,json,zlib,csv
from cryptography.hazmat.primitives.ciphers import Cipher,algorithms,modes
from cryptography.hazmat.primitives.padding import PKCS7
BASE=Path(__file__).parent
ROOT=Path(r'C:\Users\alexandre.corbineau\OneDrive - APS Solutions Informatiques\Desktop\com.kakaogames.gdtskr')
OUT=BASE/'decoded-static';OUT.mkdir(exist_ok=True)
def decrypt(b):
    assert len(b)>=32 and len(b)%16==0
    iv=b[:16]
    seed=struct.unpack('<i',bytes(x^y for x,y in zip(iv[12:16][::-1],b'k0ng')))[0]
    key=hashlib.sha256(('kongstudios'+str(seed)).encode()).digest()
    d=Cipher(algorithms.AES(key),modes.CBC(iv)).decryptor();padded=d.update(b[16:])+d.finalize()
    u=PKCS7(128).unpadder();compressed=u.update(padded)+u.finalize()
    z=zlib.decompressobj(-15);raw=z.decompress(compressed)+z.flush()
    assert z.eof and not z.unused_data and not z.unconsumed_tail
    return raw,seed
if __name__=='__main__':
    good=[];errors=[]
    for p in (ROOT/'files/static_data').iterdir():
        if not p.is_file() or p.suffix=='.etag':continue
        try:
            raw,seed=decrypt(p.read_bytes())
            if raw[:4]==b'k1ng':
                assert raw==(ROOT/'cache'/p.name).read_bytes()
                good.append(dict(source=str(p.relative_to(ROOT)),output='../decoded/'+p.name+'.json',seed=seed,decoded_bytes=len(raw),sections={},status='Byte-identical to already validated decoded cache'))
                continue
            obj=json.loads(raw)
            dest=OUT/(p.name+'.json');dest.write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
            sections={k:len(v) if isinstance(v,(list,dict)) else None for k,v in obj.items()} if isinstance(obj,dict) else {'records':len(obj)}
            good.append(dict(source=str(p.relative_to(ROOT)),output=dest.name,seed=seed,decoded_bytes=len(raw),sections=sections))
        except Exception as e:errors.append(dict(source=str(p.relative_to(ROOT)),error=str(e)))
    (BASE/'audit/static-decode-summary.json').write_text(json.dumps(dict(decoded=len(good),errors=errors,validation='PKCS7, complete raw DEFLATE with no trailing bytes, JSON',files=good),indent=2),encoding='utf-8')
    exps=json.loads((OUT/'exps2.json').read_text(encoding='utf-8'))
    for key in ['LevelExps','LevelExps.Kong','LevelExps.Switch']:
        rows=exps[key]
        with (OUT/(key+'.csv')).open('w',newline='',encoding='utf-8-sig') as f:
            w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    print('Static tables decoded',len(good),'errors',len(errors));print(errors)
