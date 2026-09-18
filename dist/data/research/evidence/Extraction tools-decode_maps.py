from pathlib import Path
import hashlib,struct,zlib,json,csv,re
from cryptography.hazmat.primitives.ciphers import Cipher,algorithms,modes
from cryptography.hazmat.primitives.padding import PKCS7
from decode_static import ROOT,BASE
OUT=BASE/'decoded-maps';OUT.mkdir(exist_ok=True)
iv=(BASE/'audit/tilemap-iv.bin').read_bytes()
good=[];errors=[]
for p in (ROOT/'files/Tilemaps').rglob('*.bytes'):
    try:
        b=p.read_bytes()
        if b[:4]==b'KONG':raw=b
        else:
            key=hashlib.sha256(('kongstudios'+p.stem).encode()).digest()
            d=Cipher(algorithms.AES(key),modes.CBC(iv)).decryptor();padded=d.update(b)+d.finalize()
            u=PKCS7(128).unpadder();compressed=u.update(padded)+u.finalize()
            z=zlib.decompressobj(-15);raw=z.decompress(compressed)+z.flush()
            assert z.eof and not z.unused_data and not z.unconsumed_tail
        assert raw[:4]==b'KONG'
        dest=OUT/p.relative_to(ROOT/'files/Tilemaps');dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(raw)
        texts=[m.group().decode('ascii') for m in re.finditer(rb'[ -~]{8,}',raw)]
        good.append(dict(source=str(p.relative_to(ROOT)),output=str(dest.relative_to(BASE)),bytes=len(raw),version=struct.unpack_from('<I',raw,4)[0],references=texts))
    except Exception as e:errors.append(dict(source=str(p.relative_to(ROOT)),error=str(e)))
    if (len(good)+len(errors))%250==0:print('Maps processed',len(good)+len(errors),'errors',len(errors),flush=True)
(BASE/'audit/map-decode-summary.json').write_text(json.dumps(dict(decoded=len(good),errors=errors,validation='PKCS7, complete DEFLATE, KONG header; internal object schema not fully parsed',files=good),indent=2),encoding='utf-8')
print('Maps decoded',len(good),'errors',len(errors));print(errors[:5])
