"""Conservative source analysis. A traced damage input is NOT a validated cast."""
import json,re,hashlib
from pathlib import Path
BASE=Path(__file__).resolve().parent;SRC=BASE.parent/'guardian-analysis';OUT=BASE/'dist/data'
db=json.loads((OUT/'raid-simulator.json').read_text(encoding='utf-8'))
roster=json.loads((BASE/'docs/roster-loadouts.json').read_text(encoding='utf-8'))
actions={a['Name']:a for a in db['actions']};options={o['Id']:o for o in db['options']}
scripts={p.stem:p for p in (SRC/'decoded-scripts/Battle').rglob('*.lua')}
source_files={};graphs={}
def source(path):
 key=str(path.relative_to(SRC)).replace('\\','/')
 if key not in source_files:
  text=path.read_text(encoding='utf-8');lines=text.splitlines()
  source_files[key]={'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'lineCount':len(lines),'effectLines':[{'line':i+1,'text':l.strip()} for i,l in enumerate(lines) if not l.strip().startswith('--') and re.search(r'publish_damage|apply_buff|remove_buff|get_attack_modifier|force_critical|ForceCritical|parse_myth_option|parse_option_data|damage_modifier|calculate_attack_modifier_from_dps',l)]}
 return key
def graph_path(name):
 bundle,asset=name.split(':',1);return SRC/'audit/attack-graphs'/(Path(bundle).name+'-'+asset+'.json')
def analyze_graph(name):
 if name in graphs:return graphs[name]
 p=graph_path(name)
 if not p.exists():graphs[name]={'status':'Missing graph bundle','events':[]};return graphs[name]
 key=source(p);es=json.loads(json.loads(p.read_text())['_data']['_json'])['graph']['elements'];ns={e['$id']:e for e in es if '$id'in e}
 def typ(n):return n.get('$type','').split('.')[-1]
 vs={(e['destinationUnit']['$ref'],e['destinationKey']):(e['sourceUnit']['$ref'],e['sourceKey']) for e in es if typ(e)=='ValueConnection'}
 def val(n,k,seen=()):
  if (n,k) in seen:raise ValueError('cyclic value dependency')
  if (n,k) in vs:return expr(*vs[n,k],seen+((n,k),))
  value=ns[n].get('defaultValues',{}).get(k,{}).get('$content')
  if isinstance(value,(int,float)) and not isinstance(value,bool):return {'op':'constant','value':value}
  raise ValueError('unresolved input '+k)
 def expr(n,k,seen):
  e=ns[n];t=typ(e)
  if t=='Literal':
   value=e.get('value',{}).get('$content')
   if isinstance(value,(int,float)) and not isinstance(value,bool):return {'op':'constant','value':value}
  if t=='GetModifier':return {'op':'dps','base':val(n,'Modifier',seen),'add':val(n,'ModifierAdd',seen),'hits':val(n,'MaxHit',seen)}
  if t=='ScalarMultiply':return {'op':'multiply','a':val(n,'a',seen),'b':val(n,'b',seen)}
  if t=='ScalarDivide':return {'op':'divide','a':val(n,'dividend',seen),'b':val(n,'divisor',seen)}
  if t=='ScalarSubtract':return {'op':'subtract','a':val(n,'minuend',seen),'b':val(n,'subtrahend',seen)}
  # Static values may come from selected option parameters, not the action record.
  # Do not bind GetStatic or selectors to guessed records here.
  raise ValueError('runtime dependency: '+t)
 def evaluate(x):
  op=x['op']
  if op=='constant':return x['value']
  if op=='dps':
   if evaluate(x['add'])!=0:raise ValueError('requires skill level')
   if evaluate(x['hits'])<=0:raise ValueError('nonpositive divisor')
   return evaluate(x['base'])/evaluate(x['hits'])
  a,b=evaluate(x['a']),evaluate(x['b'])
  return a*b if op=='multiply' else a-b if op=='subtract' else a/b
 events=[]
 for n,e in ns.items():
  if typ(e)!='ApplyDamage':continue
  r={'node':n,'status':'Unresolved damage input','scope':'One node invocation; collision gates, repetition, timing and side effects are not validated.'}
  try:
   tree=val(n,'Modifier');coefficient=evaluate(tree)
   has_dps='"op": "dps"' in json.dumps(tree)
   dtype=e.get('defaultValues',{}).get('DamageType',{}).get('$content')
   critical=e.get('defaultValues',{}).get('ForceCritical',{}).get('$content')
   if not has_dps or dtype not in ['Melee','Projectile'] or (n,'DamageType')in vs or (n,'ForceCritical')in vs or critical is not False or not 0<coefficient<1000:raise ValueError('damage flags or coefficient need custom interpretation')
   r.update(status='Code-traced input',coefficient=coefficient,damageType=dtype,expression=tree)
  except (ValueError,KeyError,ZeroDivisionError,RecursionError) as error:r['reason']=str(error)
  events.append(r)
 controls=[{'from':e['sourceUnit']['$ref'],'port':e['sourceKey'],'to':e['destinationUnit']['$ref']} for e in es if typ(e)=='ControlConnection' and (typ(ns.get(e['sourceUnit']['$ref'],{}))in ['ApplyDamage','ApplyBuff','WhileCollisionCalculate'] or typ(ns.get(e['destinationUnit']['$ref'],{}))in ['ApplyDamage','ApplyBuff'])]
 graphs[name]={'status':'Graph analyzed','source':key,'events':events,'effectControlEdges':controls,'buffNodeCount':sum(typ(e)=='ApplyBuff' for e in es)}
 return graphs[name]
action_reports={};option_reports={}
for hero in roster:
 for loadout in hero['loadouts']:
  pending=[r['OptionId'] for r in loadout['options'] if r.get('OptionId')];seen=set()
  for row in loadout['actions']:
   name=row['name']
   a=actions.get(name,{})
   for k,v in a.items():
    if k.endswith('OptionId'):pending.extend(v if isinstance(v,list) else [v])
   if name in action_reports:continue
   r={'name':name,'status':'Native or unresolved action source'}
   if a.get('GraphName'):r.update(analyze_graph(a['GraphName']));r['graph']=a['GraphName']
   else:
    family=name.split(':')[0];p=scripts.get(family+'BattleAction')
    if a.get('LuaAddOn'):p=scripts.get(a['LuaAddOn']+'SupportBattleAction',p)
    if p:r.update(status='Lua source located; custom path validation required',source=source(p))
   action_reports[name]=r
  while pending:
   id=pending.pop()
   if not isinstance(id,int) or id in seen:continue
   seen.add(id);o=options.get(id)
   if not o:option_reports[id]={'id':id,'status':'Missing option record'};continue
   for k,v in o.items():
    if k.endswith('OptionId'):pending.extend(v if isinstance(v,list) else [v])
   if id in option_reports:continue
   r={'id':id,'name':o['Name'],'class':o.get('Class'),'status':'Stat/native effect; see calculator coverage','referencedBuffs':{k:v for k,v in o.items() if 'BuffName' in k or k=='BuffId'}}
   if o.get('GraphName'):r.update(analyze_graph(o['GraphName']));r['graph']=o['GraphName']
   elif o.get('ScriptName'):
    p=scripts.get(o['ScriptName']+'Option')
    r['status']='Missing Lua option source'
    if p:r.update(status='Lua source located; custom path validation required',source=source(p))
   option_reports[id]=r
  loadout['optionIds']=sorted(seen);del loadout['options']
counts={'uniqueHeroes':sum(h['rarity']=='Unique' for h in roster),'rareHeroes':sum(h['rarity']=='Rare' for h in roster),'stages':len({l['heroId'] for h in roster for l in h['loadouts']}),'loadouts':sum(len(h['loadouts'])for h in roster),'actions':len(action_reports),'options':len(option_reports),'sourceFiles':len(source_files),'graphs':len(graphs),'missingGraphs':sum(g['status']=='Missing graph bundle' for g in graphs.values()),'tracedEventInputs':sum(e['status']=='Code-traced input' for g in graphs.values() for e in g['events'])}
proofs={
 'DaiSpecial':['self.damage_modifier = cs_util.get_float_from_dictionary(param, \'DamageModifier\')','return 1 + self.damage_modifier','battle_util.is_in_battle(self.owner)'],
 'FallenQueenSpecial':['self:apply_myth_option(param)',"self.damage_modifier = cs_util.get_float_from_dictionary(myth_param, 'DamageModifier')",'return 1 + self.damage_modifier'],
 'BlueDragonSpecial':['math.min(math.max(self:get_alive_ally_count() , 1), self.max_count)','return 1 + count * self.damage_modifier','character_util.is_dead(target) == false'],
 'DemonOperatorAwakening':['CS.Oak.CoopClass.Tanker','modifier_base + modifier_add * level','character_util.get_coop_class(target) == self.target_coop_class'],
 'ForestElfSpecial':['if true == self.activate_cwp_option then','buff_util.apply_buff_info(self.owner, member, buff_info)','buff_util.apply_buff_info(self.owner, self.owner, buff_info)']}
for name,fragments in proofs.items():
 text=scripts[name+'Option'].read_text(encoding='utf-8');assert all(f in text for f in fragments),name
model_scopes={
 'DaiSpecial':'Direct battle damage multiplier only; other timed effects remain separate.',
 'FallenQueenSpecial':'Direct battle damage multiplier and owned Myth override only; other effects remain separate.',
 'BlueDragonSpecial':'Living party count multiplier, including self and capped by MaxCount. The current snapshot assumes selected heroes are alive.',
 'DemonOperatorAwakening':'Target Tanker-class damage bonus. Missing boss combat class is explicitly unresolved.',
 'ForestElfSpecial':'Normal-attack stacks and critical-damage window: self without EX, party with EX. Already-active buffs are selected manually; timers are not replayed.'
}
for id,r in option_reports.items():
 family=options.get(id,{}).get('ScriptName')
 if family in model_scopes:r.update(status='Partial code-traced passive',modelScope=model_scopes[family])
report={'snapshot':db['snapshot'],'scope':'All Unique and Rare origins with their available stages and own EX variants; no claim of complete runtime validation. Source location and graph-input proof are separate from cast/trigger validation.','counts':counts,'heroes':roster,'actions':action_reports,'options':option_reports,'sources':source_files,'implementedLuaChecks':list(proofs)}
(OUT/'raid-roster-validation.json').write_text(json.dumps(report,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
db['sourceModels']={name:{'source':r.get('source'),'events':[e for e in r.get('events',[]) if e['status']=='Code-traced input']} for name,r in action_reports.items() if any(e['status']=='Code-traced input' for e in r.get('events',[]))}
(OUT/'raid-source-models.json').write_text(json.dumps(db['sourceModels'],separators=(',',':')),encoding='utf-8')
(OUT/'raid-simulator.json').write_text(json.dumps(db,ensure_ascii=False,separators=(',',':')),encoding='utf-8')
print(json.dumps(counts))
