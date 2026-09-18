from pathlib import Path
import json,re,collections
BASE=Path(__file__).resolve().parent;DATA=BASE.parent/'guardian-explorer/dist/data';OUT=DATA/'visual'
def read(p):return json.loads(p.read_text(encoding='utf-8'))
def write(p,x):p.write_text(json.dumps(x,separators=(',',':'),ensure_ascii=False),encoding='utf-8')
assets=list({a['id']:a for a in read(OUT/'assets.json')+read(OUT/'icons.json')}.values())
for a in assets:a.pop('records',None)
def norm(s):return re.sub(r'\.(rgba4444|png|tga|tif|psd|jpg|webp)$','',str(s).lower())
lookup=collections.defaultdict(list)
for a in assets:
    a['aliases']=['Andras'] if re.search(r'(^|[/_])demon_slayer($|[/_.])',a['name']+' '+a['bundle']) else []
    path=a['bundle'].lower();name=a['name'].lower()
    a['category']='Items' if '/spritesheets/items' in path else 'Bosses' if 'boss' in path or name.startswith('boss_') else 'Heroes & characters' if '/illusts/' in path or '/characters/' in path or '/spritesheets/heroes' in path else 'Tilesets' if 'tileset' in path else 'Other graphics'
    a['presentation']='Icon / sprite' if a['type']!='Texture2D' else 'Texture / atlas'
    if a['status']=='ready':
        for key in {norm(a['name']),norm(Path(a['bundle']).name),norm(a['name']).removeprefix('illust_')}:lookup[key].append(a)
def values(x):
    if isinstance(x,str):return [x]
    if isinstance(x,dict):return [v for z in x.values() for v in values(z)]
    return []
links={};records=[]
for table in ['heroes','monsters','npcs','static-items','static-heroes','static-heroes2','static-monsters','static-npc']:
    p=DATA/(table+'.json')
    if not p.exists():continue
    for row in read(p):
        f=row['fields'];candidates={}
        for field,base in [('PortraitAssetName',120),('IllustAssetName',120),('SpriteName',110),('Name',90),('Class',80),('AssetName',80),('SpineAssetName',60)]:
            for value in values(f.get(field)):
                for key in [norm(value)]+[norm(t) for t in value.split('#')]:
                    for a in lookup.get(key,[]):
                        # Background textures are not a character portrait.
                        if a['name'].startswith('bg_'):continue
                        score=base+(100 if a['presentation']=='Icon / sprite' else 0)
                        if table=='static-items' and a['category']=='Items':score+=50
                        if norm(a['name'])==key:score+=10
                        if score>candidates.get(a['id'],(-1,None,None))[0]:candidates[a['id']]=(score,a,field+' = '+value)
        ranked=sorted(candidates.values(),key=lambda x:-x[0]);alias='Andras' if f.get('Class')=='demon_slayer' or f.get('PortraitAssetName')=='demon_slayer' else ''
        if not ranked and not alias:continue
        chosen=ranked[:12];primary=chosen[0][1] if chosen else None
        icons=[a for _,a,_ in ranked if a['presentation']=='Icon / sprite'];thumb=icons[0] if icons else primary
        info=dict(name=alias,aliasSource='User-confirmed identity' if alias else '',image=primary['image'] if primary else None,thumbnail=thumb['image'] if thumb else None,assetIds=[a['id'] for _,a,_ in chosen],match=chosen[0][2] if chosen else '',presentation=primary['presentation'] if primary else '')
        links[table+':'+str(row['id'])]=info
        if table in ['heroes','monsters','npcs','static-items']:
            records.append(dict(table=table,id=row['id'],name=f.get('Name',str(row['id'])),displayName=alias,**{k:info[k] for k in ['image','thumbnail','assetIds','presentation']}))
            for _,a,_ in chosen:
                a.setdefault('records',[])
                if len(a['records'])<30:a['records'].append(dict(table=table,id=row['id'],name=f.get('Name',''),displayName=alias))
write(OUT/'assets.json',assets);write(OUT/'record-media.json',links);write(OUT/'records.json',records)
print('Assets',len(assets),'linked records',len(links),'hero links',sum(k.startswith('heroes:') for k in links))
