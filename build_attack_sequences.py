"""Recover bounded timed damage paths; reject unsupported control flow."""
import json,hashlib
from pathlib import Path
BASE=Path(__file__).resolve().parent; DATA=BASE/'dist/data'; SRC=BASE.parent/'guardian-analysis'
r=json.loads((DATA/'raid-roster-validation.json').read_text(encoding='utf8'))
models={}; failures={}
cosmetic={'PlayEffect','PlaySound','PlayCameraShake','PlayCameraShakeFadeout','DisposeEffect','PlayAnim','RemoveAnim','PlayDefaultVoice','SetOwnerDirection','UpdateEffect','CacheEffect'}
for name,a in r['actions'].items():
 if a.get('status')!='Graph analyzed':continue
 p=SRC/a['source'];es=json.loads(json.loads(p.read_text())['_data']['_json'])['graph']['elements'];ns={e['$id']:e for e in es if '$id'in e}
 def typ(n):return ns[n]['$type'].split('.')[-1]
 incoming={}
 for e in es:
  if e.get('$type','').endswith('ControlConnection'):incoming.setdefault(e['destinationUnit']['$ref'],[]).append((e['sourceUnit']['$ref'],e['sourceKey']))
 def timer_paths(n,seen=()):
  if n in seen:raise ValueError('Control cycle')
  out=[]
  for src,port in incoming.get(n,[]):
   t=typ(src)
   if t=='IsTimePassed' and port=='True':
    if any(e.get('$type','').endswith('ValueConnection') and e['destinationUnit']['$ref']==src and e['destinationKey']=='Timer' for e in es):raise ValueError('Dynamic timer')
    value=ns[src].get('defaultValues',{}).get('Timer',{}).get('$content')
    if not isinstance(value,(int,float)):raise ValueError('Missing timer')
    out.append({'time':value,'timerNode':src})
   elif t in cosmetic and port=='OutputTrigger':out.extend(timer_paths(src,seen+(n,)))
   else:raise ValueError('Control path needs custom tracing: '+t+':'+port)
  if not out:raise ValueError('No timer path')
  return out
 try:
  events=a.get('events',[])
  if not events or any(e['status']!='Code-traced input' for e in events):raise ValueError('Damage values need parameter or custom tracing')
  if len({e['damageType'] for e in events})!=1:raise ValueError('Mixed damage types')
  if any(typ(n) in ['ApplyBuff','PublishTriggerOption','ShootProjectile','ApplyAttackModifier'] for n in ns if typ(n)!='TriggerAction'):raise ValueError('Buff, projectile or delegated side effects require a custom model')
  ticks=[]
  for e in events:
   paths=incoming.get(e['node'],[])
   if not paths or any(typ(s)!='CollisionInBattleOnce' or port!='Each' for s,port in paths):raise ValueError('Collision/repetition is not an isolated once-per-timer path')
   for collider,_ in paths:
    for event in timer_paths(collider):ticks.append({**event,'coefficient':e['coefficient'],'damageNode':e['node'],'colliderNode':collider})
  ticks.sort(key=lambda e:e['time'])
  if not ticks or len(ticks)>100:raise ValueError('Invalid tick count')
  models[name]={'ticks':[t['coefficient'] for t in ticks],'timings':[t['time'] for t in ticks],'type':events[0]['damageType'],'source':a['source'],'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'paths':ticks,'scope':'Timed direct-damage sequence with all collision areas connecting; selected passive/buff snapshot applies. No rotation or movement simulation.'}
 except ValueError as error:failures[name]=str(error)
(DATA/'raid-attack-sequences.json').write_text(json.dumps({'models':models,'pendingGraphs':failures},ensure_ascii=False,separators=(',',':')),encoding='utf8')
db=json.loads((DATA/'raid-simulator.json').read_text(encoding='utf8'));db['attackSequences']=models;(DATA/'raid-simulator.json').write_text(json.dumps(db,ensure_ascii=False,separators=(',',':')),encoding='utf8')
print(json.dumps({n:{'ticks':len(m['ticks']),'total':sum(m['ticks'])}for n,m in models.items()}))
