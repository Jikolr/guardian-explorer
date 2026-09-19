"""Join tower floors to enemy specs and existing artwork without inferring combat stats."""
import json
from pathlib import Path
P=Path(__file__).resolve().parent/'dist/data'
def read(name):return json.loads((P/name).read_text(encoding='utf-8'))
def table(name,key='Id'):return {r['fields'][key]:r['fields'] for r in read(name)}
floors=[r['fields'] for r in read('static-infinitytowerfloors.json')]
specs=table('monsters.json'); tower=table('static-infinitytowermonsters.json','MonsterId')
media=read('visual/record-media.json'); items=table('static-items.json'); options=table('static-options.json')
enemies={}
for mid,t in tower.items():
 s=specs.get(t['SpecId'],{});m=media.get('monsters:'+str(t['SpecId']),{})
 name=s.get('Name','Unknown enemy');clean=name.removeprefix('it_').removeprefix('boss_').removeprefix('mirror_')
 for suffix in ['_mirror_rift','_myth_rift','_rift']:clean=clean.removesuffix(suffix)
 enemies[mid]={'tower':t,'spec':s,'name':m.get('name') or clean.replace('_',' ').title(),'image':m.get('thumbnail') or m.get('image')}
usedItems={r['ItemId'] for f in floors for r in f.get('Rewards',[])}
usedOptions={o['OptionId'] for f in floors for m in f['Monsters'] for o in m.get('Options',[])}
out={'floors':floors,'enemies':enemies,'items':{i:{'record':items.get(i,{}),'media':media.get('static-items:'+str(i),{})} for i in usedItems},'options':{i:options.get(i,{}) for i in usedOptions}}
assert all(m['MonsterId'] in enemies for f in floors for m in f['Monsters'])
assert len({f['Floor'] for f in floors})==len(floors)
(P/'orbital-lift.json').write_text(json.dumps(out,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
print(f'{len(floors)} floors; {len(enemies)} enemy definitions; all floor references joined.')
