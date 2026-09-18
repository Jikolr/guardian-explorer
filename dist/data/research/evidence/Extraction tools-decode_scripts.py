"""Offline AES-CBC / PKCS7 / LZ4 decoder, recovered from GameScriptDecrypt.
Never executes the recovered Lua. Originals remain unchanged.
"""
from pathlib import Path
import ast,struct,json,hashlib,csv
from cryptography.hazmat.primitives.ciphers import Cipher,algorithms,modes
from cryptography.hazmat.primitives.padding import PKCS7
BASE=Path(__file__).parent
ROOT=Path(r'C:\Users\alexandre.corbineau\OneDrive - APS Solutions Informatiques\Desktop\com.kakaogames.gdtskr')
OUT=BASE/'decoded-scripts';OUT.mkdir(exist_ok=True)
# Reuse only the checked, pure-Python LZ4 function, not the cache batch runner.
node=next(n for n in ast.parse((BASE/'decode_cache.py').read_text()).body if isinstance(n,ast.FunctionDef) and n.name=='lz4')
exec(compile(ast.Module(body=[node],type_ignores=[]),'lz4_decoder','exec'))
results=[];errors=[]
for p in list((ROOT/'files/GameScript').rglob('*.encrypted'))+list((ROOT/'files/media/immediates').glob('*.encrypted')):
    try:
        b=p.read_bytes()
        d=Cipher(algorithms.AES(b'e569092327744c2e65c5a0382e4037e3'),modes.CBC(b'c323345463191717')).decryptor()
        padded=d.update(b)+d.finalize();u=PKCS7(128).unpadder();compressed=u.update(padded)+u.finalize()
        expected=struct.unpack_from('<I',compressed,len(compressed)-4)[0]
        raw=lz4(compressed[:-4]);assert len(raw)==expected
        text=raw.decode('utf-8')
        rel=(p.relative_to(ROOT/'files/GameScript') if p.is_relative_to(ROOT/'files/GameScript') else Path('_immediates')/p.name).with_suffix('.lua');dest=OUT/rel;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(raw)
        results.append(dict(source=str(p.relative_to(ROOT)),output=str(rel),bytes=len(raw),sha256=hashlib.sha256(raw).hexdigest()))
    except Exception as e:errors.append(dict(source=str(p.relative_to(ROOT)),error=str(e)))
(BASE/'audit/script-decode-summary.json').write_text(json.dumps(dict(decoded=len(results),errors=errors,validation='AES PKCS7 padding, complete LZ4 stream, exact declared length, strict UTF-8',files=results),indent=2),encoding='utf-8')
print('Decoded',len(results),'errors',len(errors));print(errors[:5])
