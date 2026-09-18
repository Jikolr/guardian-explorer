from pathlib import Path
import sys,struct,json,re
sys.path.insert(0,str(Path(__file__).parent/'tool-libs'))
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
import numpy as np
BASE=Path(__file__).parent
path=BASE/'apk/config.arm64_v8a/lib/arm64-v8a/libil2cpp.so'
blob=path.read_bytes(); elf=ELFFile(path.open('rb'));md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
sections=[s for s in elf.iter_sections() if s['sh_flags']&4]
def va_to_off(va):
    for s in elf.iter_sections():
        if s['sh_type']!='SHT_NOBITS' and s['sh_addr']<=va<s['sh_addr']+s['sh_size']:return s['sh_offset']+va-s['sh_addr']
    raise ValueError(hex(va))
def disasm(va,size):
    off=va_to_off(va)
    return '\n'.join(f'{i.address:08x}: {i.mnemonic:8} {i.op_str}' for i in md.disasm(blob[off:off+size],va))
def refs(target):
    result=[]
    for s in sections:
        data=s.data(); words=np.frombuffer(data[:len(data)//4*4],dtype='<u4');indices=np.nonzero((words&0x9f000000)==0x90000000)[0]
        for idx in indices:
            w=int(words[idx]); pc=s['sh_addr']+int(idx)*4; reg=w&31;imm=((w>>29)&3)|(((w>>5)&0x7ffff)<<2)
            if imm&(1<<20):imm-=1<<21
            page=(pc&~4095)+(imm<<12)
            if page!=(target&~4095):continue
            for j in range(1,min(12,len(words)-int(idx))):
                w2=int(words[int(idx)+j])
                if w2&0xffc00000==0x91000000 and (w2>>5)&31==reg and ((w2>>10)&0xfff)==target&0xfff:result.append(pc)
    return result

if __name__=='__main__':
    if len(sys.argv)>1:
        print(disasm(int(sys.argv[1],0),int(sys.argv[2],0) if len(sys.argv)>2 else 512));sys.exit()
    symbols=[dict(name=s.name,va=hex(s['st_value']),size=s['st_size']) for s in elf.get_section_by_name('.dynsym').iter_symbols()]
    (BASE/'audit/native-symbols.json').write_text(json.dumps(symbols,indent=2))
    targets=[]
    for needle in [b'global-metadata.dat',b'mscorlib.dll-resources.dat',b'collation.core.bin']:
        off=blob.find(needle)
        if off<0:continue
        va=next(s['sh_addr']+off-s['sh_offset'] for s in elf.iter_sections() if s['sh_type']!='SHT_NOBITS' and s['sh_offset']<=off<s['sh_offset']+s['sh_size'])
        xrefs=refs(va);print(needle,hex(va),[hex(x) for x in xrefs],flush=True)
        for x in xrefs:
            out=disasm(x-80,800)
            (BASE/'audit'/f'xref-{x:x}.asm').write_text(out)
            print(out,flush=True)
