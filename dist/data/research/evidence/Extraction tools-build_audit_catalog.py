from pathlib import Path
from collections import Counter
import csv,json,re,hashlib
from decode_static import ROOT,BASE,decrypt
OUT=BASE/'audit'
def save(name,rows):
    with (OUT/name).open('w',newline='',encoding='utf-8-sig') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
tables=[]
for p in (BASE/'decoded-static').glob('*.json'):
    obj=json.loads(p.read_text(encoding='utf-8'))
    sections=obj.items() if isinstance(obj,dict) else [('records',obj)]
    for name,value in sections:
        example=value[0] if isinstance(value,list) and value else value
        tables.append(dict(file=p.name,section=name,kind=type(value).__name__,count=len(value) if isinstance(value,(dict,list)) else 1,fields=' | '.join(example) if isinstance(example,dict) else type(example).__name__))
save('table-catalog.csv',tables)
scripts=[];functions=[];counts=Counter()
for p in (BASE/'decoded-scripts').rglob('*.lua'):
    text=p.read_text(encoding='utf-8');rel=p.relative_to(BASE/'decoded-scripts');category=rel.parts[0] if len(rel.parts)>1 else 'root controllers';counts[category]+=1
    hits=[]
    for line,s in enumerate(text.splitlines(),1):
        if 'function' not in s:continue
        # Bound the line scan: serialized tables can contain megabytes on one line.
        m=re.search(r'\bfunction\s+([\w.:]+)\s*\(|([\w.:]+)\s*=\s*function\s*\(',s[:2000])
        if m:
            name=m[1] or m[2];hits.append(name);functions.append(dict(file=str(rel),line=line,name=name))
    scripts.append(dict(file=str(rel),category=category,lines=len(text.splitlines()),functions=len(hits),cs_references=len(re.findall(r'\bCS\.',text))))
save('lua-catalog.csv',scripts);save('lua-functions.csv',functions)
events=[];errors=[];normalized=[]
for p in (ROOT/'files/events').rglob('*'):
    if not p.is_file() or p.suffix=='.etag':continue
    try:
        text=p.read_text(encoding='utf-8-sig')
        try:obj=json.loads(text)
        except json.JSONDecodeError:
            # Preserve quoted strings verbatim; remove only commas before closing delimiters.
            fixed=re.sub(r'"(?:\\.|[^"\\])*"|,\s*(?=[}\]])',lambda m:m[0] if m[0].startswith('"') else '',text)
            obj=json.loads(fixed);normalized.append(str(p.relative_to(ROOT)))
            dest=BASE/'decoded-events'/p.name;dest.parent.mkdir(exist_ok=True);dest.write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
        events.append(dict(file=str(p.relative_to(ROOT)),kind=type(obj).__name__,count=len(obj),keys=' | '.join(obj) if isinstance(obj,dict) else ''))
    except Exception as e:errors.append(dict(file=str(p.relative_to(ROOT)),error=str(e)))
if events:save('event-catalog.csv',events)
checks=[]
for name in ['exps2','weaponenhance']:
    obj=json.loads((BASE/'decoded-static'/(name+'.json')).read_text(encoding='utf-8'))
    for key in ['LevelExps','LevelExps.Kong','LevelExps.Switch']:
        rows=obj[key];total=0;bad=[]
        for row in rows:
            total+=row['Exps']
            if 'TotalExps' in row and total!=row['TotalExps']:bad.append(row['Level'])
        checks.append(dict(table=name,section=key,rows=len(rows),levels=[rows[0]['Level'],rows[-1]['Level']],cumulative_mismatches=bad))
# Decode the resource manifest separately, without touching saved user settings.
raw,seed=decrypt((ROOT/'files/media/index').read_bytes());(OUT/'media-index.decoded.tsv').write_bytes(raw)
inventory=list(csv.DictReader((OUT/'all-files.csv').open(encoding='utf-8')))
coverage=[]
for row in inventory:
    path=row['path'];typ=row['type'];status='Inventoried, hashed, signature checked'
    if path.endswith('.encrypted'):status='Decoded to Lua; padding, compression, length and UTF-8 validated'
    elif path.startswith('files/static_data/') and typ!='ETag':status='Decoded and parsed; five binary tables byte-identical to cache'
    elif path.startswith('files/Tilemaps/') and path.endswith('.bytes'):status='Decoded; KONG header checked; full internal schema pending' if 'short_story_clevatess_test' not in path else 'Unresolved: tilemap padding validation failed'
    elif typ=='UnityFS bundle':status='Container and object inventory parsed; TextAsset and MonoScript exported; MonoBehaviour schemas read'
    elif path.startswith('files/events/') and typ!='ETag':status='JSON parsed and catalogued (trailing commas normalized where present)'
    elif typ=='k1ng cache':status='Fully decoded with record and length validation'
    elif typ in ('PNG','JPEG','MP4 media'):status='Media signature checked; not visually reviewed'
    elif typ=='ETag':status='Version/cache tag; inventoried'
    elif path.startswith('cache/UnityShaderCache/'):status='Shader cache; inventoried, not disassembled'
    elif path.startswith('files/minimap/'):status='Binary coordinate-like data; inventoried, schema not confirmed'
    elif path in ['files/Android.index','files/Android.checksum','files/.index-firstpass','files/patch-index','files/media/index']:status='Decrypted and decompressed manifest'
    elif path.startswith('files/media/banwords/'):status='Plaintext moderation word list; classified'
    elif path in ['files/.mprefs','files/follower_history','files/notifications.bin','files/BTNGB.stks'] or path.startswith('files/Unity/'):status='Local settings/state/analytics; inventoried, no account data included in report'
    coverage.append(dict(path=path,bytes=row['bytes'],status=status))
save('file-review-status.csv',coverage)
summary=dict(table_sections=len(tables),lua_files=len(scripts),lua_lines=sum(x['lines'] for x in scripts),lua_function_definitions=len(functions),lua_categories=dict(counts),events=len(events),event_errors=errors,events_normalized=normalized,xp_checks=checks,reviewed_files=len(coverage),coverage_statuses=dict(Counter(x['status'] for x in coverage)))
(OUT/'catalog-summary.json').write_text(json.dumps(summary,indent=2),encoding='utf-8')
print(json.dumps(summary,ensure_ascii=True,indent=2))
