"""Inventory hit evidence for every action. Expressions are evidence, not executable models."""
import json
from pathlib import Path
BASE=Path(__file__).resolve().parent
DATA=BASE/'dist/data'
SRC=BASE.parent/'guardian-analysis'
db=json.loads((DATA/'raid-simulator.json').read_text(encoding='utf-8'))
scripts={p.stem:p for p in (SRC/'decoded-scripts/Battle').rglob('*.lua')}
def inspect_graph(path):
    es=json.loads(json.loads(path.read_text(encoding='utf-8'))['_data']['_json'])['graph']['elements']
    ns={e['$id']:e for e in es if '$id' in e}
    vs=[e for e in es if e.get('$type','').endswith('ValueConnection')]
    cs=[e for e in es if e.get('$type','').endswith('ControlConnection')]
    def value(n,k,seen=()):
        if (n,k) in seen:return 'runtime loop'
        c=next((c for c in vs if c['destinationUnit']['$ref']==n and c['destinationKey']==k),None)
        if c:return expression(c['sourceUnit']['$ref'],seen+((n,k),))
        return ns[n].get('defaultValues',{}).get(k,{}).get('$content','unresolved '+k)
    def expression(n,seen=()):
        e=ns[n];t=e['$type'].split('.')[-1]
        if t=='GetModifier':return ['DPS',value(n,'Modifier',seen),value(n,'ModifierAdd',seen),value(n,'MaxHit',seen)]
        if t=='Literal':return e.get('value',{}).get('$content')
        if t=='GetStatic':return ['static',value(n,'Key',seen)]
        if t=='ScalarMultiply':return ['multiply',value(n,'a',seen),value(n,'b',seen)]
        if t=='ScalarSubtract':return ['subtract',value(n,'minuend',seen),value(n,'subtrahend',seen)]
        if t=='ScalarDivide':return ['divide',value(n,'dividend',seen),value(n,'divisor',seen)]
        return 'runtime '+t
    def timers(n,seen=()):
        if n in seen:return []
        t=ns[n]['$type'].split('.')[-1]
        if t=='IsTimePassed':return [value(n,'Timer')]
        return sum((timers(c['sourceUnit']['$ref'],seen+(n,)) for c in cs if c['destinationUnit']['$ref']==n),[])
    damage=[dict(node=e['$id'],modifier=value(e['$id'],'Modifier'),timingCandidates=timers(e['$id'])) for e in es if e.get('$type','').endswith('ApplyDamage')]
    buffs=[dict(node=e.get('$id'),type=e['$type'],defaults=e.get('defaultValues')) for e in es if e.get('$type','').endswith(('ApplyBuff','RemoveBuff'))]
    return dict(damageNodes=damage,buffNodes=buffs,warning='Candidate control paths; conditions, loops, connected overrides and recipients require verification before calculation.')
rows=[]
for a in db['actions']:
    name=a['Name'];family=name.split(':')[0];script=scripts.get(family+'BattleAction')
    if a.get('LuaAddOn'):script=scripts.get(a['LuaAddOn']+'SupportBattleAction',script)
    graph=a.get('GraphName');entry=dict(name=name,hitFields={k:v for k,v in a.items() if any(x in k for x in ['HitTiming','HitDps','MaxHit','DamageTerm','DamageScale','TotalDps','HitCount'])})
    if script:
        lines=script.read_text(encoding='utf-8').splitlines()
        entry['lua']=str(script.relative_to(SRC)).replace('\\','/')
        entry['evidenceLines']=[dict(line=i+1,text=l.strip()) for i,l in enumerate(lines) if any(x in l for x in ['publish_damage','apply_buff_info','calculate_attack_modifier_from_dps','MaxHit','DamageTerm','HitTiming'])]
    if graph:
        bundle,asset=graph.split(':',1);path=SRC/'audit/attack-graphs'/(Path(bundle).name+'-'+asset+'.json')
        entry['graph']=graph
        if path.exists():entry['graphEvidence']=inspect_graph(path)
        else:entry['missingGraph']=True
    rows.append(entry)
(DATA/'raid-hit-audit.json').write_text(json.dumps(dict(snapshot=db['snapshot'],actionCount=len(rows),actions=rows),ensure_ascii=False,separators=(',',':')),encoding='utf-8')
print('Audited',len(rows),'action records;',sum('graphEvidence'in r for r in rows),'graph mappings;',sum('lua'in r for r in rows),'Lua mappings.')
