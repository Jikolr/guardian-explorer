from pathlib import Path
import json
src=Path(__file__).resolve().parent.parent/'guardian-analysis/decoded'
out=Path(__file__).resolve().parent/'dist/data'
out.mkdir(parents=True,exist_ok=True)
mapping={'heroes':'heroes-bin','actions':'battleactions-bin','monsters':'monsters-bin','npcs':'npc-bin','text':'strings-bin-enUS'}
manifest={}
for key,name in mapping.items():
    records=json.loads((src/(name+'.json')).read_text(encoding='utf-8'))
    index=json.loads((src/(name+'.index.json')).read_text(encoding='utf-8'))
    assert len(records)==len(index)
    data=[{'id':i['record_id'],'fields':r} for r,i in zip(records,index)]
    fields=sorted(set(k for r in records for k in r))
    (out/(key+'.json')).write_text(json.dumps(data,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
    manifest[key]={'count':len(records),'fields':fields,'source':name}
(out/'manifest.json').write_text(json.dumps(manifest,separators=(',',':')),encoding='utf-8')
print({k:v['count'] for k,v in manifest.items()})
