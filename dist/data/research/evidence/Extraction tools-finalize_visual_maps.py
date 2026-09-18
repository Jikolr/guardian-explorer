from pathlib import Path
import json,gzip,sys
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE/'tool-libs'))
from PIL import Image,ImageDraw
v=BASE.parent/'guardian-explorer/dist/data/visual'
cat=json.loads((v/'tilesets.json').read_text())
meshes={k:{n for n,p in json.loads(gzip.decompress((v/r['path']).read_bytes()))['meshes'].items() if p} for k,r in cat.items() if r.get('path')}
maps=json.loads((v/'maps.json').read_text());(v/'map-thumbnails').mkdir(exist_ok=True)
for m in maps:
 if m['status']!='ready':continue
 d=json.loads(gzip.decompress((v/'maps'/(m['name']+'.json.gz')).read_bytes()));ts=[t for l in d['layers'] for t in l['tiles']]
 m['artworkTiles']=sum(t['name'] in meshes.get(t['tileset'],set()) for t in ts)
 focus=[t for l in d['layers'] if l['name']=='floor' for t in l['tiles']] or ts
 im=Image.new('RGB',(320,200),'#101e2c');draw=ImageDraw.Draw(im)
 if focus:
  xs=[t['position'][0] for t in focus];zs=[t['position'][2] for t in focus];lo,hi=min(xs),max(xs);bottom,top=min(zs),max(zs);s=min(290/max(hi-lo+3,1),170/max(top-bottom+3,1));r=max(.65,s*.45)
  for l in reversed(d['layers']):
   color='#426e86' if 'floor' in l['name'] else '#a695cf' if 'wall' in l['name'] else '#e5ba63'
   for t in l['tiles']:
    x=160+(t['position'][0]-(lo+hi)/2)*s;y=100-(t['position'][2]-(bottom+top)/2)*s;draw.rectangle((x-r,y-r,x+r,y+r),fill=color)
 m['image']='map-thumbnails/'+m['name']+'.webp';im.save(v/m['image'],'WEBP',quality=75)
if not any(m['name']=='short_story_clevatess_test' for m in maps):maps.append(dict(name='short_story_clevatess_test',status='unavailable',error='Decryption failed padding validation'))
(v/'maps.json').write_text(json.dumps(maps,separators=(',',':')),encoding='utf-8')
print('Maps with some artwork:',sum(m.get('artworkTiles',0)>0 for m in maps))
