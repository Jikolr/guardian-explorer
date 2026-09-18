from pathlib import Path
import sys,json,hashlib
BASE=Path(__file__).resolve().parent;sys.path.insert(0,str(BASE/'tool-libs'))
import UnityPy
ROOT=BASE.parent.parent/'com.kakaogames.gdtskr';OUT=BASE.parent/'guardian-explorer/dist/data/visual'
bundles=json.loads((OUT.parent/'research/bundles.json').read_text());rows=[];errors=[]
for b in bundles:
    if '/spritesheets/' not in b['path']:continue
    env=UnityPy.load(str(ROOT/b['path']));objects={o.path_id:o for o in env.objects};images={}
    for o in env.objects:
        if o.type.name!='MonoBehaviour':continue
        t=o.read_typetree()
        if not t.get('mSprites') or not t.get('material',{}).get('m_PathID'):continue
        try:
            mp=t['material'];assert mp['m_FileID']==0
            mt=objects[mp['m_PathID']].read_typetree();ptr=dict(mt['m_SavedProperties']['m_TexEnvs'])['_MainTex']['m_Texture'];assert ptr['m_FileID']==0
            tid=ptr['m_PathID']
            if tid not in images:images[tid]=objects[tid].read().image
            im=images[tid]
            for sp in t['mSprites']:
                x,y,w,h=[sp[k] for k in ['x','y','width','height']]
                if not (w>0 and h>0 and 0<=x<x+w<=im.width and 0<=y<y+h<=im.height):continue
                key=hashlib.sha256((b['path']+str(o.path_id)+sp['name']).encode()).hexdigest()[:20]
                crop=im.crop((x,y,x+w,y+h));crop.thumbnail((768,768));crop.save(OUT/'images'/f'{key}.webp',quality=90)
                rows.append(dict(id=key,name=sp['name'],bundle=b['path'],type='Atlas sprite',status='ready',image=f'images/{key}.webp',width=w,height=h,atlas=t['m_Name'],rect=[x,y,w,h]))
        except Exception as ex:errors.append(dict(bundle=b['path'],object=str(o.path_id),error=str(ex)))
(OUT/'icons.json').write_text(json.dumps(rows,separators=(',',':')),encoding='utf-8')
(BASE/'audit/atlas-icon-errors.json').write_text(json.dumps(errors),encoding='utf-8')
print('Icons',len(rows),'unresolved atlases',len(errors),flush=True)
