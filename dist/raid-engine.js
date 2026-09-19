/* Snapshot model. Kept independent of the page so numerical regressions run offline. */
(function(root){
'use strict';
const clone=x=>JSON.parse(JSON.stringify(x));
const num=x=>Number.isFinite(Number(x))?Number(x):0;
const pct=x=>num(x)/100;
const cap=(x,a,b)=>Math.max(a,Math.min(b,x));
const sum=a=>a.reduce((v,x)=>v+x,0);
const empty=()=>({atk:0,skill:0,crit:0,critDamage:0,ranged:0,melee:0,normal:0,boss:0,battleAtk:0,element:{},warnings:[],sources:[]});
const growth=(level,rate=1.02)=>rate**Math.min(82,Math.max(0,level-1))*1.026**Math.min(17,Math.max(0,level-83))*1.006**Math.max(0,level-100);
const maxProfile={name:'Endgame snapshot preset',heroCollection:71,itemCollection:102.7,equipCostume:10,illustration:2.2,jewelBook:2,tower:10,guardian:39.8,extraAtk:0,weaponBooks:Object.fromEntries(['onehandsword','twohandsword','assaultrifle','bow','staff','basket','gauntlet','claw'].map(k=>[k,10])),mastery:{meleeAtk:0,rangedAtk:0,supportAtk:0,tankerAtk:0,meleeSkill:0,rangedSkill:0,supportSkill:0,tankerSkill:0}};
function create(db){
 const map=rows=>Object.fromEntries(rows.map(r=>[r.Id,r]));
 const heroes=map(db.heroes),items=map(db.items),options=map(db.options),buffs=map(db.buffs),bosses=map(db.bosses);
 const actions=Object.fromEntries(db.actions.map(r=>[r.Name,r])),projectiles=Object.fromEntries(db.projectiles.map(r=>[r.Name,r]));
 const optionValue=(o,key,l)=>num(o[key+'Base'])+num(o[key+'Add'])*num(l);
 const stage=h=>h.Rank===6?'Myth':h.Rank===5?'Ascended':`${h.Rank+1}★`;
 const mythOrigins=new Set(db.heroes.filter(h=>h.Rank===6).map(h=>h.OriginId));
 const heroCap=h=>h&&mythOrigins.has(h.OriginId)?150:130;
 const weaponCap=w=>w?.ExclusiveCharacterId&&!mythOrigins.has(w.ExclusiveCharacterId)?130:150;
 const heroOptions=h=>[...(h.Options||[]),...(h.awakening||[])];
 function compatible(h,i){return !i||((h.CompatibleWeapons?.default||[]).includes(i.WeaponType));}
 function bestWeapon(h){return db.items.filter(i=>i.Type==='weapon'&&i.ExclusiveCharacterId===h.OriginId&&compatible(h,i)).sort((a,b)=>b.Rarity-a.Rarity)[0]?.Id||0;}
 function slot(id=0){const h=heroes[id],weapon=h?bestWeapon(h):0;return {hero:id,level:heroCap(h),weapon,weaponLevel:weaponCap(items[weapon]),accessory:0,shield:0,card1:0,card2:0,merch:0,merchLevel:30,jewel:0,relic:0,relicOptions:[],relicSet:true,extra:{atk:0,skill:0,crit:0,critDamage:0,ranged:0,melee:0,boss:0,battleAtk:0,normal:0},attackOverrides:{}};}
 function defaultState(){return {version:1,profile:clone(maxProfile),team:[slot(20596),slot(535),slot(20425),slot(20542)],leader:0,boss:790035,element:'Ice',debuffs:[],effects:[],activeBuffs:[],customDebuffs:{def:0,rangedDef:0,meleeDef:0,resistance:0},ailment:'none'};}
 function measured(){const s=defaultState();s.profile.name='Dabin measured account';s.profile.illustration=2.2;s.profile.mastery.rangedAtk=49;s.profile.mastery.rangedSkill=41;s.team.slice(1).forEach(x=>x.weapon=0);s.debuffs=['dabin-earth'];return s;}
 function eligible(o,h,w){
  if(o.CharacterOriginIds&&!o.CharacterOriginIds.includes(h.OriginId))return false;
  if(o.ConditionType==='EngraveOptionExclusive'&&w?.ExclusiveCharacterId!==h.OriginId)return false;
  if(o.ConditionType==='WeaponType'&&o.WeaponType!==w?.WeaponType)return false;
  return true;
 }
 const harmless=new Set(['HpScale','DefenseScale','RecoveryScale','ManaRegenScale','WeaponDefenseUp','WeaponDamageReduction','RawDamageReductionAdd','ShieldGenerationOnBattleStart','ShieldGenerationOnKill','HpRecoveryOnKill','DebuffResist','CriticalResistanceUp','TargetConditionProtection','GeneralIntervalInBattle','SuperBattleLevelUp','BattleAction','MythBattleAction','BattleActionParameter','WeaponElementalUp']);
 function apply(target,ref,h,w,source,party=false){
  const o=options[ref.OptionId];if(!o||!eligible(o,h,w))return;
  const l=ref.Level??ref.MaxLevel??0,c=o.Class;
  // Conditions that require a live trigger cannot be treated as permanently active.
  if(o.ConditionType&&!['CoopExpeditionExclude','CharacterOriginType','EngraveOptionExclusive','WeaponType','WeaponLimitBreakType'].includes(o.ConditionType)){
   target.warnings.push(`${source}: conditional ${o.Name} is not automatically applied.`);return;
  }
  let applied=false;
  if(c==='Buff'){
   if(!!o.IsPartyBuff!==party&&!o.IsForRelicSet)return;
   const b=buffs[o.BuffId];if(!b)return;
   const cls=b.ClassName;
   if(cls==='TotalAttackScale'){target.battleAtk+=optionValue(b,'AttackScale',l);applied=true;}
   if(cls==='ElementalAttackScale'){target.element[b.Elemental]=(target.element[b.Elemental]||0)+optionValue(b,'AttackScale',l);applied=true;}
   for(const [type,key,value] of [['ProjectileAttackScale','ranged','AttackScale'],['MeleeAttackScale','melee','AttackScale'],['SuperSkillScale','skill','AttackScale'],['NormalSkillScale','normal','AttackScale'],['Critical','crit','Critical'],['CriticalMultiplierScale','critDamage','CriticalScale']])if(cls===type){target[key]+=optionValue(b,value,l);applied=true;}
   if(!applied&&!['DefenseScale','HpScale','MeleeDefenseScale','ProjectileDefenseScale','ManaRegenScale'].includes(cls))target.warnings.push(`${source}: buff ${b.Name} is not modelled.`);
  }else if(!party){
   const supported={TotalAttackScale:['atk','AttackScale'],SuperSkillScale:['skill','AttackScale'],CriticalChanceUp:['crit','CriticalUp'],CriticalMultiplierScaleUp:['critDamage','CriticalUp'],NormalSkillScale:['normal','AttackScale']};
   if(supported[c]){const [key,v]=supported[c];target[key]+=optionValue(o,v,l);applied=true;}
   else if(c==='ElementalScale'){
    // Elemental options contribute to prepared ATK, restricted to each damage component below.
    const key=String(o.Elemental).toLowerCase();target.element[key]=(target.element[key]||0)+optionValue(o,'ElementalScale',l);applied=true;
   }else if(c==='TargetConditionDamageBoost'){target.boss+=optionValue(o,'BossModifier',l);applied=true;}
   else if(c==='MerchDamageBoost'&&o.BossAlwaysApply){target.boss+=num(o.BossDamageModifier)*num(l);applied=true;target.warnings.push(`${source}: boss-always merch bonus included; conditional extra damage is not simulated.`);}
   else if(!harmless.has(c))target.warnings.push(`${source}: ${o.Name} (${c}) needs a custom-effect model.`);
  }
  if(applied)target.sources.push(`${source}: ${o.Name} · level ${l}`);
 }
 function equipment(s,h){
  const result=empty(),w=items[s.weapon];
  for(const ref of heroOptions(h))apply(result,ref,h,w,'Hero / max awakening');
  for(const ref of h.BlessingLevelOptions?.at(-1)||[])apply(result,ref,h,w,'Max blessing');
  for(const key of ['weapon','accessory','shield','card1','card2','merch','jewel']){
   const i=items[s[key]];if(!i)continue;
   const name=key+': '+i.Name;
   for(const ref of [...i.Options||[],...i.StaticOptions||[]]){
    let r={...ref};
    // Merch base stat options scale with internal item level (display level minus one).
    if(key==='merch'&&/^merch_(attack|hp|defense)_/.test(options[r.OptionId]?.Name||''))r.Level=Math.max(0,s.merchLevel-1);
    apply(result,r,h,w,name);
   }
   if(key==='weapon'){
    for(const ref of i.EngraveStaticOptions||[])apply(result,ref,h,w,'Max EX engraving');
    const picks=i.EngraveRandomOptions||[];
    if(picks.length)apply(result,picks.reduce((a,b)=>a.Level>b.Level?a:b),h,w,'Max engraving roll');
   }
  }
  for(const r of s.relicOptions||[])apply(result,r,h,w,'Relic roll');
  for(const [k,v] of Object.entries(s.extra||{}))if(k in result&&typeof result[k]==='number')result[k]+=k==='crit'?num(v):pct(v);
  if(!h.treeKnown)result.warnings.push('Max awakening tree is unavailable for this hero.');
  return result;
 }
 function party(state){
  const p=empty();
  for(const s of state.team){const h=heroes[s.hero];if(!h)continue;for(const r of heroOptions(h))apply(p,r,h,items[s.weapon],h.displayName,true);}
  // Four matching relic groups activate a single set; use the weakest equipped stage.
  const relics=state.team.map(s=>items[s.relic]);
  if(relics.every(Boolean)&&state.team.every(s=>s.hero&&s.relicSet)&&relics.every(r=>r.GroupId===relics[0].GroupId)){
   const set=relics.map(r=>r.SetOption?.[0]).filter(Boolean).sort((a,b)=>a.Level-b.Level)[0];
   if(set)apply(p,set,heroes[state.team[0].hero],items[state.team[0].weapon],'Four matching relics',true);
  }
  return p;
 }
 function mastery(profile,h,kind){
  const role={projectile:'ranged',melee:'melee',supporter:'support',support:'support',tanker:'tanker'}[String(h.CoopClass).toLowerCase()];
  const level=profile.mastery?.[role+(kind==='atk'?'Atk':'Skill')]||0;
  const optionLevel=db.mastery.find(x=>x.SkillLevel===level)?.OptionLevel||0;
  const spec=db.options.find(o=>o.ConditionType==='CoopClassType'&&String(o.CoopClassType).toLowerCase()===String(h.CoopClass).toLowerCase()&&o.Class===(kind==='atk'?'TotalAttackScale':'SuperSkillScale'));
  return spec?optionValue(spec,'AttackScale',optionLevel):0;
 }
 function weaponFactor(w){
  const p=projectiles[w?.Projectile];
  if(p&&w.MagazineSize>0&&w.ReloadTime>0)return num(p.AtkModifier)*w.MagazineSize/((w.MagazineSize-1)*num(w.ShootTerm)+w.ReloadTime);
  return db.weaponTypes.find(x=>x.WeaponType===w?.WeaponType)?.Atk2Dps||1;
 }
 function availableDebuffs(state){
  const result=[];
  for(const s of state.team){const h=heroes[s.hero],w=items[s.weapon];if(!h||!w)continue;
   if(h.OriginId===596&&w.ExclusiveCharacterId===596)result.push({id:'dabin-earth',label:'Dabin EX · Earth resistance −20%',kind:'resistance',element:'Earth',value:.2,group:'earth-resistance'});
   if(h.OriginId===425)result.push({id:'kamael-ranged',label:'Kamael · ranged DEF −20%',kind:'rangedDef',value:.2,group:'ranged-def'});
   if(h.OriginId===542)result.push({id:'eunha-def',label:'Eunha · DEF −20%',kind:'def',value:.2,group:'def'});
   // Discover directly referenced constant debuffs. Do not guess stack counts or
   // option levels for scripted/level-scaled effects.
   const refs=heroOptions(h),owned=new Set(refs.map(r=>r.OptionId));
   const specs=[...refs.map(r=>options[r.OptionId]),...(w.StaticOptions||[]).map(r=>options[r.OptionId]).filter(o=>o&&eligible(o,h,w))];
   const names=new Set([w.SuperBattleAction]);
   for(const st of db.styles.filter(x=>x.Class===h.Class&&(x.Weapon1===w.WeaponType||x.Weapon2===w.WeaponType)))for(const n of [...st.BattleActions||[],...st.ManualBattleActions||[]])names.add(n);
   for(const o of specs)if(o?.BattleActionName)names.add(o.BattleActionName);
   for(const name of names){const a=actions[name];if(a){specs.push(a);if(owned.has(a.MythOptionId))specs.push(options[a.MythOptionId]);}}
   for(const spec of specs.filter(Boolean))for(const [key,name] of Object.entries(spec)){
    if(!/DebuffName$/.test(key)||typeof name!=='string')continue;
    const b=db.buffs.find(x=>x.Name===name);if(!b)continue;
    const kinds={DefenseScale:'def',ProjectileDefenseScale:'rangedDef',MeleeDefenseScale:'meleeDef',DamageResistance:'resistance'};
    const kind=kinds[b.ClassName];if(!kind)continue;
    const value=kind==='resistance'?-num(b.ResistanceBase)/100:-num(b.DefenseScaleBase);
    if(value<=0||value>=1||b.DefenseScaleAdd||b.ResistanceAdd)continue;
    const group=kind==='resistance'?String(b.Elemental).toLowerCase()+'-resistance':kind==='rangedDef'?'ranged-def':kind==='meleeDef'?'melee-def':'def';
    if(result.some(d=>d.group===group&&d.value===value))continue;
    result.push({id:`data-${h.OriginId}-${b.Id}`,label:`${h.displayName} · ${b.Name} −${value*100}% (data estimate)`,kind,element:b.Elemental,value,group});
   }
  }
  return result;
 }
 function availableBuffs(state){
  const found=new Map(),byName=Object.fromEntries(db.buffs.map(b=>[b.Name,b]));
  function add(b,level,meta,seen=new Set()){
   if(!b||seen.has(b.Id))return;seen=new Set(seen);seen.add(b.Id);
   if(b.ClassName==='MultipleGroup'){(b.BuffId||[]).forEach((id,j)=>add(buffs[id],b.Level?.[j]??level,meta,seen));return;}
   if(!(b.Duration>0))return;
   const mapping={TotalAttackScale:['battleAtk','AttackScale'],StackableAttackScale:['battleAtk','AttackScale'],StackableTotalAttackScale:['battleAtk','AttackScale'],StackableCriticalMultiplierScale:['critDamage','CriticalScale'],ElementalAttackScale:['element','AttackScale'],ProjectileAttackScale:['ranged','AttackScale'],MeleeAttackScale:['melee','AttackScale'],SuperSkillScale:['skill','AttackScale'],NormalSkillScale:['normal','AttackScale'],Critical:['crit','Critical'],CriticalMultiplierScale:['critDamage','CriticalScale']};
   const rule=mapping[b.ClassName];if(!rule)return;
   const [key,field]=rule;
   if(num(b[field+'Add'])!==0&&!Number.isFinite(level))return;
   const value=optionValue(b,field,level);if(value<=0)return;
   const id=`buff:${meta.owner}:${meta.source}:${b.Id}`;
   found.set(id,{...meta,id,buffId:b.Id,name:b.Name,key,value,element:b.Elemental,duration:b.Duration,maxStacks:Math.max(1,Math.floor(num(b.StackCap)||1)),group:b.BuffGroup||String(b.Id)});
  }
  state.team.forEach((s,owner)=>{
   const h=heroes[s.hero],w=items[s.weapon];if(!h||!w||!compatible(h,w))return;
   const refs=heroOptions(h),owned=new Set(refs.map(r=>r.OptionId));
   const override=a=>owned.has(a.MythOptionId)?{...a,...options[a.MythOptionId]}:a;
   // These recipient/trigger mappings are verified in the recovered action Lua.
   if(h.OriginId===542&&owned.has(320542)){
    const o=override(options[320542]);add(byName[o.ManualBuffName],o.ManualBuffLevel,{owner,hero:h.displayName,source:'ManualDokkaebi',trigger:'Normal attack hit',scope:'Party'});
   }
   if(h.OriginId===542&&w.ExclusiveCharacterId===542){const o=options[310542];add(byName[o.ManualBuffName],o.ManualBuffLevel,{owner,hero:h.displayName,source:'ManualDokkaebi-EX',trigger:'EX after sustained normal attacks (3s preparation)',scope:'Party',recipientElement:'None'});}
   if(h.OriginId===533&&w.ExclusiveCharacterId===533){
    const o=override(options[310533]);add(byName[o.BuffName],o.BuffLevel,{owner,hero:h.displayName,source:'ManualDragonDaughter',trigger:'Normal / break attack hit with EX',scope:'Party'});
   }
   const names=new Map();
   for(const st of db.styles.filter(x=>x.Class===h.Class&&(x.Weapon1===w.WeaponType||x.Weapon2===w.WeaponType)))for(const name of [...st.BattleActions||[],...st.ManualBattleActions||[]])names.set(name,name.startsWith('Role')?'Special attack':'Normal attack');
   for(const ref of refs){const o=options[ref.OptionId];if(o?.BattleActionName&&o.BattleActionName!=='FALSE')names.set(o.BattleActionName,o.Class==='MythBattleAction'?'Leader skill':o.Class==='BattleAction'?'Chain skill':'Hero action');}
   if(w.SuperBattleAction)names.set(w.SuperBattleAction,'Weapon skill');
   for(const [name,trigger] of names){
    if(['Weapon skill','Leader skill'].includes(trigger)&&owner!==state.leader)continue;
    if(!actions[name])continue;const a=override(actions[name]);
    const meta={owner,hero:h.displayName,source:name,trigger,scope:['Party','Self'].includes(a.BuffTarget)?a.BuffTarget:'Unknown'};
    const raid=a.BuffInfo?.find?.(b=>b.Content==='GuildRaid');
    if(raid){add(byName[raid.BuffName],raid.Level,{...meta,scope:'Party'});continue;}
    const buffName=h.Rank===6&&a.MythBuffName?a.MythBuffName:a.BuffName;
    if(typeof buffName==='string')add(byName[buffName],a.BuffLevel,meta);
    for(const [key,scope] of [['SelfBuffName','Self'],['PartyBuffName','Party']])if(a[key])add(byName[a[key]],a[key.replace('Name','Level')],{...meta,scope});
   }
   // Scripted hero / equipped EX references are discoverable even when the
   // trigger or recipient is unknown. They require an explicit recipient choice.
   const eqRefs=['weapon','shield','accessory','merch','jewel','card1','card2'].flatMap(k=>items[s[k]]?.StaticOptions||[]);
   for(const ref of [...refs,...eqRefs]){
    const raw=options[ref.OptionId];if(!raw||!eligible(raw,h,w)||raw.Class==='Buff')continue;
    const o=override(raw);
    if(owned.has(ref.OptionId)&&raw.Class==='BattleActionParameter')continue;
    const superTrigger=o.ActionType==='super'||String(o.BattleActionName||'').startsWith('Cwp');
    if(superTrigger&&owner!==state.leader)continue;
    const meta={owner,hero:h.displayName,source:String(o.Id),trigger:superTrigger?'After weapon skill':o.Class==='OnHitPassive'?'On hit':'Hero / equipment effect (trigger not decoded)',scope:['Self','Party'].includes(o.TargetType)?o.TargetType:'Unknown'};
    for(const key of ['BuffName','SelfBuffName','PartyBuffName','HitBuffName','ManualBuffName']){
     const names=Array.isArray(o[key])?o[key]:[o[key]];
     for(const name of names)if(typeof name==='string')add(byName[name],o[key.replace('Name','Level')],{...meta,scope:key==='SelfBuffName'?'Self':key==='PartyBuffName'?'Party':meta.scope});
    }
   }
  });
  const entries=[...found.values()];
  return entries.filter(b=>b.scope!=='Unknown'||!entries.some(other=>other.owner===b.owner&&other.buffId===b.buffId&&other.scope!=='Unknown'));
 }
 function activeBuffEffects(state,index,available=availableBuffs(state)){
  const chosen=new Map();
  for(const selected of state.activeBuffs||[]){
   const b=available.find(x=>x.id===selected.id);if(!b)continue;
   const scope=b.scope==='Unknown'?selected.scope:b.scope;
   if(!['Party','Self'].includes(scope)||(scope==='Self'&&index!==b.owner))continue;
   if(b.recipientElement&&heroes[state.team[index]?.hero]?.ElementalType!==b.recipientElement)continue;
   const stacks=cap(Math.floor(num(selected.stacks)||1),1,b.maxStacks);
   const effect={...b,scope,stacks,value:b.value*stacks};
   const key=b.group+':'+b.key+':'+(b.element||'');
   if(!chosen.has(key)||chosen.get(key).value<effect.value)chosen.set(key,effect);
  }
  return [...chosen.values()];
 }
 function prepared(s,profile,p,temporary=[]){
  const h=heroes[s.hero],w=items[s.weapon];if(!h)return null;
  const e=equipment(s,h),components=[],baseCrit=e.crit;
  for(const b of temporary){if(b.key==='element')e.element[b.element]=(e.element[b.element]||0)+b.value;else e[b.key]+=b.value;e.sources.push(`Active: ${b.hero} · ${b.trigger} · ${b.name} (${b.stacks} stack${b.stacks===1?'':'s'})`);}
  const ordinary=1+e.atk+pct(profile.heroCollection)+pct(profile.itemCollection)+pct(profile.equipCostume)+pct(profile.illustration)+pct(profile.jewelBook)+pct(profile.tower)+pct(profile.extraAtk)+pct(profile.weaponBooks?.[w?.WeaponType]);
  const account=1+pct(profile.guardian)+mastery(profile,h,'atk');
  if(w&&!compatible(h,w))e.warnings.push('Selected weapon is incompatible with this hero.');
  for(const el of ['None','Fire','Ice','Earth','Light','Darkness','Nebula']){
   const key=el==='None'?'Damage':el+'Damage';let raw=0;
   for(const item of [w,items[s.shield]]){if(!item)continue;let roll=0;
    for(const r of item.Options||[]){const o=options[r.OptionId];if(o?.Class==='WeaponElementalUp'&&o.Elemental?.toLowerCase()===el.toLowerCase())roll+=optionValue(o,'ElementalUp',r.MaxLevel);}
    raw+=num(item[key])*growth(Math.min(s.weaponLevel,weaponCap(item)),item.StatGrowthRate||1.02)*(1+roll);
   }
   if(!raw)continue;
   const match=h.ElementalType===el?1.1:1;
   const ordinaryElement=ordinary+(e.element[el.toLowerCase()]||0);
   const atk=num(h.Atk)*growth(Math.min(s.level,heroCap(h)),h.StatGrowthRate)*raw*match*ordinaryElement*account;
   components.push({element:el,weaponAttack:raw*match,atk,battleAtk:atk*(1+p.battleAtk+e.battleAtk+(p.element[el]||0)+(e.element[el]||0)),ordinary:ordinaryElement});
  }
  const passive=h.OriginId===596&&heroOptions(h).some(r=>r.OptionId===320596)?Math.min(20,stateEarthCount(p)*5):0;
  return {h,w,e,baseCrit,temporary,components,ordinary,account,atk:sum(components.map(c=>c.atk)),factor:weaponFactor(w),crit:cap((num(w?.Critical)+e.crit+p.crit+passive)/100,0,1),critMultiplier:2+e.critDamage+p.critDamage,skill:1+e.skill+p.skill+mastery(profile,h,'skill')};
 }
 const stateEarthCount=p=>p.earthCount||0;
 function attackList(s){
  const h=heroes[s.hero],w=items[s.weapon];if(!h)return [];
  const refs=heroOptions(h),owned=new Set(refs.map(r=>r.OptionId));
  const names=new Map();
  for(const st of db.styles.filter(x=>x.Class===h.Class&&(x.Weapon1===w?.WeaponType||x.Weapon2===w?.WeaponType)))for(const n of [...st.BattleActions||[],...st.ManualBattleActions||[],...st.ClassBattleActions||[]])names.set(n,n.startsWith('Role')?'special':'normal');
  for(const ref of refs){const o=options[ref.OptionId];if(o?.BattleActionName&&o.BattleActionName!=='FALSE')names.set(o.BattleActionName,o.Class==='MythBattleAction'?'leader':'chain');}
  if(w?.SuperBattleAction)names.set(w.SuperBattleAction,'weapon');
  const list=[];
  for(const [name,kind] of names){
   const original=actions[name]||{},a={...original};
   if(owned.has(a.MythOptionId))Object.assign(a,options[a.MythOptionId]);
   let coefficient=num(a.TotalDpsMult)||null,ticks=null,timings=null,status=coefficient?'estimate':'unresolved',note=coefficient?'TotalDpsMult from the action record; custom hit logic and conditional extras are not replayed.':'This action’s coefficient needs script-specific decoding. Enter a DPS coefficient below to explore it.';
   let noDamage=false;
   if(kind==='chain'&&coefficient===null&&a.DpsMultiplier>0){coefficient=a.DpsMultiplier;status='estimate';note='Chain DpsMultiplier record: aggregate estimate only. Native BasicSupport exposes CollisionDpsMultiplier; custom repetition, hit schedules and extra procs remain unverified.';}
   const family=name.split(':')[0];
   if(['ManualGolemRider','ManualPriestess','ManualInvaderKnight','ManualViking'].includes(family)&&a.ModifierBase>0&&!a.ModifierAdd){
    coefficient=a.ModifierBase;ticks=[coefficient];status='estimate';note=family+'BattleAction.lua: ModifierBase → calculate_attack_modifier_from_dps → damage command. One base damage event; conditional EX procs and repeated collisions excluded.';
   }
   if(family==='ManualHeatBladeCombo'&&a.ModifierBase>0&&!a.ModifierAdd){coefficient=a.ModifierBase*(a.AttackType==='thrust'?.5:1);ticks=[coefficient];status='estimate';note='ManualHeatBladeComboBattleAction.lua: one collision event. Thrust uses half of ModifierBase; slash/bash use the full value. Extra collisions and EX effects are excluded.';}
   if(family==='ManualKnight'&&a.ModifierBase>0&&a.MaxHit>0){coefficient=a.ModifierBase;ticks=Array(a.MaxHit).fill(coefficient/a.MaxHit);status='estimate';note='ManualKnightBattleAction.lua: ModifierBase divided by MaxHit before each damage command. Base combo step with all hits landing; EX-specific additions excluded.';}
   if(name==='ManualChinaHero'){coefficient=num(a.ModifierBase)*num(a.ActionDuration);ticks=[coefficient];status='estimate';note='ManualChinaHeroBattleAction.lua: ordinary collision, ModifierBase / hits-per-second, with hits-per-second = 1 / ActionDuration. Enhanced strike is listed separately.';}
   if(name==='RoleSunyeo'){coefficient=0;ticks=[];noDamage=true;status='verified';note='RoleSunyeoBattleAction.lua: movement and loading the role-shot buff; the role action itself emits no damage. The subsequent loaded shot is listed separately.';}
   if(Array.isArray(a.HitDpsMultipliers)&&a.HitDpsMultipliers.every(x=>typeof x==='number')){ticks=a.HitDpsMultipliers;coefficient=sum(ticks);timings=Array.isArray(a.HitTiming)&&a.HitTiming.length===ticks.length?a.HitTiming:null;status='estimate';note='Per-hit DPS multipliers from the action record; conditional script effects still need verification.';}
   if(kind==='weapon'&&coefficient===null&&typeof a.ModifierBase==='number'){
    const skillLevel=num(w.SuperBattleActionLevel)+sum((w.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp'&&eligible(options[r.OptionId],h,w)).map(r=>num(r.Level)));
    coefficient=num(a.OverrideModifierBase)||a.ModifierBase+num(a.ModifierAdd)*skillLevel;status='estimate';note='Base + skill-level modifier from the weapon action. Aggregate only: script-specific hit counts, overrides and scaling are not replayed.';
   }
   if(['ManualKamael','ManualDragonDaughter'].includes(name)){
    const shots=Math.round(h.Stamina/a.StaminaPerAction),extra=name==='ManualKamael'?1:num(a.StaminaBreakModifier)-1;
    const cycle=(shots-1)*a.ActionDuration+Math.max(.5,a.ActionDuration)+h.Stamina/80;
    coefficient=cycle/(shots+extra);
    if(name==='ManualDragonDaughter'&&w?.ExclusiveCharacterId===h.OriginId)coefficient*=1+num(options[310533]?.ManualDpsMultiplier);
    ticks=[coefficient];status='estimate';note='Ordinary hit from the discrete-stamina helper and Lua damage call. Speed / conditional special modifiers are not replayed. Break attack is listed separately.';
   }
   if(name==='ManualDokkaebi'){
    coefficient=num(a.ModifierBase);ticks=a.HitTiming.map(()=>coefficient/a.HitTiming.length);timings=a.HitTiming;status='estimate';note='One three-tick attack interval, split using the Lua max-hit count. Own-EX skill conversion is included when eligible; additional conditional effects are not replayed.';
   }
   if(h.OriginId===596&&name==='ManualSunyeo'){
    coefficient=2.05;ticks=[2.05];status='verified';note='Recovered discrete-stamina cycle. One ordinary shot; excludes enhanced role attacks.';
   }
   if(h.OriginId===596&&name==='CwpSunyeo'&&w?.ExclusiveCharacterId===596){
    const level=sum((w.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp').map(r=>num(r.Level)));
    coefficient=num(a.OverrideModifierBase)||num(original.ModifierBase)+num(original.ModifierAdd)*level;
    ticks=[coefficient*.4,coefficient*.3,coefficient*.3];timings=[.30,.45,.60];status='verified';note='Recovered 40% / 30% / 30% hit split. Times are relative to the field state; all three hits must land.';
   }
   const override=s.attackOverrides?.[name];
   if(override&&override.enabled){coefficient=num(override.coefficient);ticks=Array.from({length:cap(Math.floor(num(override.hits)||1),1,100)},()=>coefficient/cap(Math.floor(num(override.hits)||1),1,100));status='custom';note='Your coefficient; total split equally over the specified hits.';}
   list.push({name,kind,coefficient,ticks,timings,status,note,noDamage:noDamage&&!override?.enabled,type:a.BaseDamageType||((h.CoopClass==='melee')?'Melee':'Projectile')});
   if(name==='ManualChinaHero'&&!override?.enabled)list.push({name:name+' · enhanced hit',kind:'normal',coefficient:num(a.EnhanceModifier)*num(a.ActionDuration),status:'estimate',note:'Enhanced collision from EnhanceModifier / hits-per-second. Select this result only when the enhanced hit occurs; no probability averaging.',type:a.BaseDamageType});
   if(name==='RoleSunyeo'&&owned.has(320596)){
    const special=options[320596];
    const bonus=owned.has(special.MythOptionId)?options[special.MythOptionId]:special;
    for(const [suffix,key] of [['loaded shot · direct target','ModifierBase'],['loaded shot · splash target','ExplosionModifier']])if(bonus?.[key]>0)list.push({name:'Dabin '+suffix,kind:'normal',coefficient:bonus[key],ticks:[bonus[key]],status:'estimate',note:'ManualSunyeoBattleAction.lua bonus_state: a target receives either the direct coefficient OR the splash coefficient, never both. Role must first load the shot. EX source-specific bonus interactions remain unverified.',type:'Projectile'});
   }
   if(['ManualKamael','ManualDragonDaughter'].includes(name)&&!override?.enabled){const ratio=name==='ManualKamael'?2:num(a.StaminaBreakModifier);list.push({name:name+' · break hit',kind,coefficient:coefficient*ratio,ticks:[coefficient*ratio],status:'estimate',note:'Lua break-attack multiplier applied to the ordinary hit. Conditional extras excluded.',type:a.BaseDamageType||'Projectile'});}
  }
  if(!list.some(a=>a.kind==='normal'))list.unshift({name:'Normal attack (unresolved)',kind:'normal',coefficient:null,status:'unresolved',note:'No compatible action mapping recovered.',type:h.CoopClass==='melee'?'Melee':'Projectile'});
  for(const a of list){const o=s.attackOverrides?.[a.name];if(o?.enabled){const count=cap(Math.floor(num(o.hits)||1),1,100);a.coefficient=num(o.coefficient);a.ticks=Array(count).fill(a.coefficient/count);a.timings=null;a.status='custom';a.note='User-entered DPS coefficient and equal hit split; not a recovered formula.';}}
  return list;
 }
 function calculate(state){
  const p=party(state);p.earthCount=state.team.filter(s=>heroes[s.hero]?.ElementalType==='Earth').length;
  const boss=bosses[state.boss];if(!boss)throw Error('Choose a raid boss.');
  const available=availableDebuffs(state),active=available.filter(d=>state.debuffs.includes(d.id));
  const protection=state.element==='None'?.73:.75;
  const output=[],buffAvailable=availableBuffs(state);
  for(let index=0;index<state.team.length;index++){
   const s=state.team[index],v=prepared(s,state.profile,p,activeBuffEffects(state,index,buffAvailable));if(!v)continue;
   const warnings=[...v.e.warnings,...p.warnings];
   if(!v.w)warnings.push('No weapon equipped: this hero contributes party buffs but has no calculated attack damage.');
   const results=attackList(s).map(a=>{
    const leaderOnly=['weapon','leader'].includes(a.kind);
    if(leaderOnly&&state.leader!==index)return {...a,unavailable:'Leader only'};
    if(a.noDamage)return {...a,unavailable:'No direct damage — loads the next shot',note:a.note};
    if(a.coefficient===null)return a;
    if(!v.w)return {...a,unavailable:'No weapon equipped'};
    if(!compatible(v.h,v.w))return {...a,unavailable:'Incompatible weapon'};
    const ranged=a.type!=='Melee';const typeKey=ranged?'ranged':'melee';
    const defs=active.filter(d=>d.kind==='def'||d.kind===(ranged?'rangedDef':'meleeDef'));
    const groups={};for(const d of defs)groups[d.group]=Math.max(groups[d.group]||0,d.value);
    let defFactor=Object.values(groups).reduce((x,y)=>x*(1-y),1);
    defFactor*=1-cap(pct(state.customDebuffs.def),0,.99);defFactor*=1-cap(pct(state.customDebuffs[ranged?'rangedDef':'meleeDef']),0,.99);
    const defense=num(boss.StaticDef??boss.Def)*defFactor;
    const typeFactor=1+p[typeKey]+v.e[typeKey];
    const skillFactor=['weapon','chain','leader'].includes(a.kind)?v.skill:1;
    let normalFactor=a.kind==='normal'?1+p.normal+v.e.normal:1;
    if(a.name==='ManualDokkaebi'&&v.w?.ExclusiveCharacterId===v.h.OriginId){const o=options[310542];normalFactor*=1+Math.min(Math.max(v.skill-1,0)*num(o?.ConvertRatio),num(o?.ManualDpsMultiplier));}
    const ailment=(state.ailment==='airborne'&&ranged)||(state.ailment==='downed'&&!ranged)?1.5:1;
    let damagePerCoefficient=0;
    const breakdown=[];
    for(const c of v.components){
     const matrix=db.elements.find(x=>x.ElementalType===c.element);
     let matchup=matrix?.Superiority?.includes(state.element)?1+num(matrix.DamageDealt)/100:matrix?.Inferiority?.includes(state.element)?.7:1;
     const resistance=1+Math.max(0,...active.filter(d=>d.kind==='resistance'&&d.element===c.element).map(d=>d.value))+pct(state.customDebuffs.resistance);
     const target=100/(100+defense)*matchup*resistance*(1-protection);
     let role=1;if(v.h.OriginId===596&&a.name==='ManualSunyeo'&&state.effects.includes('dabin-role'))role=1.3;
     const value=c.battleAtk*v.factor*typeFactor*skillFactor*normalFactor*(1+v.e.boss)*target*ailment*role;
     damagePerCoefficient+=value;breakdown.push({...c,matchup,resistance,defense,protection,target,typeFactor,skillFactor,normalFactor,ailment,role});
    }
    const hits=(a.ticks||[a.coefficient]).map(k=>({noncrit:damagePerCoefficient*k,critical:damagePerCoefficient*k*v.critMultiplier,average:damagePerCoefficient*k*(1+v.crit*(v.critMultiplier-1))}));
    return {...a,hits,total:{noncrit:sum(hits.map(x=>x.noncrit)),critical:sum(hits.map(x=>x.critical)),average:sum(hits.map(x=>x.average))},breakdown};
   });
   output.push({index,...v,results,warnings:[...new Set(warnings)],uiDps:v.atk*v.factor*(1+cap((num(v.w?.Critical)+v.baseCrit)/100,0,1))});
  }
  return {heroes:output,party:p,boss,protection,activeDebuffs:active};
 }
 function validate(input){
  if(!input||input.version!==1||!Array.isArray(input.team)||input.team.length!==4)throw Error('This is not a version 1 Guardian Atlas raid setup.');
  const baseline=defaultState(),s=clone(baseline);
  const number=(v,min,max)=>{if(typeof v!=='number'||!Number.isFinite(v)||v<min||v>max)throw Error('Invalid or out-of-range numeric value in setup.');return v;};
  s.profile.name=String(input.profile?.name||'Imported profile').slice(0,100);
  for(const key of Object.keys(maxProfile))if(typeof maxProfile[key]==='number')s.profile[key]=number(input.profile?.[key],0,1000);
  for(const key of Object.keys(maxProfile.weaponBooks))s.profile.weaponBooks[key]=number(input.profile?.weaponBooks?.[key]??0,0,100);
  for(const key of Object.keys(maxProfile.mastery))s.profile.mastery[key]=number(input.profile?.mastery?.[key]??0,0,db.mastery.at(-1).SkillLevel);
  s.team=input.team.map(t=>{
   if(t.hero&&!heroes[t.hero])throw Error('Unknown hero in setup.');const x=slot(t.hero||0);
   for(const key of ['weapon','accessory','shield','card1','card2','merch','jewel','relic']){if(t[key]&&!items[t[key]])throw Error('Unknown equipment in setup.');x[key]=t[key]||0;}
   if(x.hero){const h=heroes[x.hero];for(const key of ['weapon','shield','accessory'])if(x[key]&&!compatible(h,items[x[key]]))throw Error('Incompatible equipment in setup.');}
   for(const key of ['weapon','shield','accessory']){const item=items[x[key]];if(item&&(item.Type!=='weapon'||(key==='weapon'&&['shield','accessory'].includes(item.WeaponType))||(key!=='weapon'&&item.WeaponType!==key)))throw Error('Equipment in wrong weapon slot.');}
   for(const key of ['level','weaponLevel'])x[key]=Math.min(number(t[key],1,150),key==='level'?heroCap(heroes[x.hero]):weaponCap(items[x.weapon]));
   x.merchLevel=number(t.merchLevel,1,30);x.relicSet=!!t.relicSet;
   const relic=items[x.relic],pools=[...relic?.BaseOptions||[],...relic?.ChangeOptions||[]];
   x.relicOptions=(t.relicOptions||[]).slice(0,5).map((r,j)=>{if(!r.OptionId)return {OptionId:0,Level:0};const roll=pools[j]?.find(o=>o.OptionId===r.OptionId);if(!roll)throw Error('Invalid relic option for this stage / slot.');return {OptionId:r.OptionId,Level:number(r.Level,roll.MinLevel,roll.MaxLevel)};});
   for(const key of ['card1','card2','merch','relic','jewel'])if(x[key]&&items[x[key]].Type!==({card1:'orb',card2:'orb'}[key]||key))throw Error('Equipment in wrong slot.');
   if(x.card1&&x.card1===x.card2)throw Error('Duplicate cards in setup.');
   for(const key of Object.keys(x.extra))x.extra[key]=number(t.extra?.[key]??0,0,1000);
   for(const [key,o] of Object.entries(t.attackOverrides||{}).slice(0,100)){if(['__proto__','constructor','prototype'].includes(key))throw Error('Invalid attack key.');x.attackOverrides[key]={enabled:!!o.enabled,coefficient:number(o.coefficient,0,1000),hits:number(o.hits,1,100)};}
   return x;
  });
  const origins=s.team.filter(t=>t.hero).map(t=>heroes[t.hero].OriginId);if(new Set(origins).size!==origins.length)throw Error('Duplicate heroes in team.');
  s.leader=number(input.leader,0,3);if(!Number.isInteger(s.leader))throw Error('Invalid leader.');
  if(!bosses[input.boss])throw Error('Unknown boss.');s.boss=input.boss;
  if(!['None','Fire','Ice','Earth','Light','Darkness','Nebula'].includes(input.element))throw Error('Invalid element.');s.element=input.element;
  s.debuffs=(input.debuffs||[]).filter(id=>availableDebuffs(s).some(d=>d.id===id));s.effects=(input.effects||[]).filter(x=>x==='dabin-role');
  const available=availableBuffs(s);
  if(input.activeBuffs!==undefined&&!Array.isArray(input.activeBuffs))throw Error('Invalid active buffs.');
  s.activeBuffs=(input.activeBuffs||[]).filter(r=>r&&available.some(b=>b.id===r.id)).map(r=>{const b=available.find(b=>b.id===r.id);const stacks=number(r.stacks??1,1,b.maxStacks);if(!Number.isInteger(stacks))throw Error('Buff stacks must be whole numbers.');return {id:b.id,stacks,scope:b.scope==='Unknown'?(['Party','Self'].includes(r.scope)?r.scope:'Unknown'):b.scope};});
  for(const k of Object.keys(s.customDebuffs))s.customDebuffs[k]=number(input.customDebuffs?.[k]||0,0,k==='resistance'?100:99);
  s.ailment=['none','airborne','downed','injured'].includes(input.ailment)?input.ailment:'none';return s;
 }
 return {db,heroes,items,options,bosses,stage,heroCap,weaponCap,slot,bestWeapon,compatible,defaultState,measured,calculate,attackList,availableDebuffs,availableBuffs,activeBuffEffects,validate,maxProfile:clone(maxProfile)};
}
root.RaidEngine={create,growth,maxProfile};if(typeof module!=='undefined')module.exports=root.RaidEngine;
})(typeof window==='undefined'?globalThis:window);
