"""Fail if the recovered code/graph evidence no longer supports these models."""
from pathlib import Path
import json,hashlib
base=Path(__file__).resolve().parent
src=base.parent/'guardian-analysis'
evidence=[]
def record(path,claim):
 evidence.append({'file':str(path.relative_to(src if path.is_relative_to(src) else base)).replace('\\','/'),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'claim':claim})
def graph(name):
 p=src/'audit/attack-graphs'/(name+'.json')
 es=json.loads(json.loads(p.read_text(encoding='utf-8'))['_data']['_json'])['graph']['elements']
 return p,es,{e['$id']:e for e in es if '$id' in e}
def typename(e):return e.get('$type','').split('.')[-1]
def incoming(es,n,key):
 return next(e['sourceUnit']['$ref'] for e in es if typename(e)=='ValueConnection' and e['destinationUnit']['$ref']==n and e['destinationKey']==key)
def direct_literal(name,expected):
 p,es,ns=graph(name)
 damage=[n for n in ns.values() if typename(n)=='ApplyDamage'];assert len(damage)==1,name
 modifier=ns[incoming(es,damage[0]['$id'],'Modifier')];assert typename(modifier)=='GetModifier'
 literal=ns[incoming(es,modifier['$id'],'Modifier')];assert typename(literal)=='Literal'
 assert literal['value']['$content']==expected,(name,literal)
 assert modifier['defaultValues']['MaxHit']['$content']==1
 record(p,f'Direct damage path: literal {expected} -> GetModifier (MaxHit 1) -> ApplyDamage')
 return es,ns,damage[0]['$id']
for step,k in [('First',.3),('Second',.5),('Third',.4),('Fourth',.8)]:
 es,ns,damage=direct_literal('wrestler-ManualWrestler'+step,k)
 after=next(e['destinationUnit']['$ref'] for e in es if typename(e)=='ControlConnection' and e['sourceUnit']['$ref']==damage)
 assert typename(ns[after])=='ApplyBuff'
 assert ns[after]['defaultValues']['BuffKey']['$content']=='buff_wrestler_weapon_0'
 collision=next(ns[e['sourceUnit']['$ref']] for e in es if typename(e)=='ControlConnection' and e['destinationUnit']['$ref']==damage)
 assert typename(collision)=='WhileCollisionCalculate'
direct_literal('wrestler-SupportWrestler',3.3)
p,es,ns=graph('bridge_driver-RoleBridgeDriver')
assert incoming(es,'129','Modifier')=='397'
assert incoming(es,'397','Modifier')=='223'
assert ns['223']['defaultValues']['Key']['$content']=='ModifierBase'
record(p,'Role direct damage: ModifierBase -> GetModifier -> one ApplyDamage node; timing is position-dependent')
for filename,fragments,claim in [
 ('Option/WrestlerSpecialOption.lua',['self.owner ~= member','character_util.get_elemental_type(member) == self.target_elemental','math.min(self.cur_bonus_damage_ratio, self.max_bonus_damage_ratio)','return 1 + self.cur_bonus_damage_ratio','self:apply_myth_option(param)'],'Matching-element teammates excluding owner; owned Myth override; capped damage multiplier'),
 ('BattleAction/ManualDemonCeoBattleAction.lua',['self.attack_modifier, #self.hit_timing','self.action:apply_damage(target, modifier)','self:publish_sync_action('],'Synchronized collision state splits coefficient over HitTiming; projectile arrival is not cast time'),
 ('BattleAction/Support/InvaderKnightSupportBattleAction.lua',["'HitAreaTimings'","'HitDpsMultipliers'",'self.dps_multiplier[index]','self:apply_myth_option(params)'],'Chain hit timings, coefficient per hit and owned Myth override'),
 ('Option/WrestlerRoleOption.lua',['damage_info.sourceType & damage_source_type.role','if not damage_info.critical then','buff_util.apply_buff_info(self.owner, self.owner, self.role_buff_info'],'Role buff targets self after role damage; critical requirement waived by special option')]:
 p=src/'decoded-scripts/Battle'/filename;t=p.read_text(encoding='utf-8');assert all(x in t for x in fragments),filename;record(p,claim)
p=base/'docs/passive-evidence/WhileCollisionCalculate-TriggerAction.asm';t=p.read_text()
assert t.index('03baa200: ldr      x1, [x19, #0xa0]')<t.index('03baa25c: ldr      x1, [x19, #0xa8]')
for name,offset in [('get_Each','0xa0'),('get_True','0xa8')]:
 getter=base/'docs/passive-evidence'/('WhileCollisionCalculate-'+name+'.asm')
 assert '[x0, #'+offset+']' in getter.read_text();record(getter,name+' field offset')
record(p,'Native graph runner invokes Each over targets before True; Wrestler graph grants EX stacks after damage, unlike older Lua')
out={'snapshot':'3.54.0','scope':'Component-level source validation for the selected Darkness team. Not full hero/rotation validation or proof against runtime hotfixes.','checks':evidence}
(base/'dist/data/raid-code-validation.json').write_text(json.dumps(out,ensure_ascii=False,indent=2),encoding='utf-8')
print('Passed',len(evidence),'source checks; fingerprints saved to raid-code-validation.json')
