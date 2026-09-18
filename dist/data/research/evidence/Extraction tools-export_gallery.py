"""Export browsable previews of every local Unity texture and sprite; resumable by bundle."""
from pathlib import Path
import sys,json,hashlib,gc
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE/'tool-libs'))
import UnityPy
ROOT=BASE.parent.parent/'com.kakaogames.gdtskr'
OUT=BASE.parent/'guardian-explorer/dist/data/visual';OUT.mkdir(exist_ok=True)
(OUT/'images').mkdir(exist_ok=True);(BASE/'audit/gallery-parts').mkdir(exist_ok=True)
bundles=json.loads((BASE.parent/'guardian-explorer/dist/data/research/bundles.json').read_text())
bundles=[b for b in bundles if b['types'].get('Texture2D') or b['types'].get('Sprite')]
bundles.sort(key=lambda b:(0 if '/illusts/' in b['path'] else 1 if '/spritesheets/' in b['path'] else 2,b['path']))
allrows=[]
for i,b in enumerate(bundles):
    path=b['path'];key=hashlib.sha256(path.encode()).hexdigest()[:16];checkpoint=BASE/'audit/gallery-parts'/f'{key}.json'
    if checkpoint.exists():allrows+=json.loads(checkpoint.read_text());continue
    rows=[]
    try:
        env=UnityPy.load(str(ROOT/path))
        for o in env.objects:
            if o.type.name not in ('Texture2D','Sprite'):continue
            aid=hashlib.sha256((path+':'+str(o.path_id)).encode()).hexdigest()[:20]
            r=dict(id=aid,bundle=path,type=o.type.name,pathId=str(o.path_id),name='',status='unavailable')
            try:
                d=o.read();r['name']=d.m_Name;im=d.image; r['width'],r['height']=im.size
                im.thumbnail((768,768));im.save(OUT/'images'/f'{aid}.webp',format='WEBP',quality=82,method=3)
                r.update(image=f'images/{aid}.webp',status='ready',previewWidth=im.width,previewHeight=im.height)
            except Exception as ex:r['error']=str(ex)[:180]
            rows.append(r)
        del env
    except Exception as ex:rows.append(dict(id=key,bundle=path,name=Path(path).name,type='Bundle',status='unavailable',error=str(ex)[:180]))
    checkpoint.write_text(json.dumps(rows,separators=(',',':')),encoding='utf-8');allrows+=rows
    if (i+1)%25==0:print('Gallery bundles',i+1,'/',len(bundles),'assets',len(allrows),flush=True);gc.collect()
(OUT/'assets.json').write_text(json.dumps(allrows,separators=(',',':')),encoding='utf-8')
print('DONE',len(allrows),'assets;',sum(r['status']=='ready' for r in allrows),'ready',flush=True)
