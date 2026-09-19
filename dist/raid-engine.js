/* Snapshot model. Kept independent of the page so numerical regressions run offline. */
(function(root){
'use strict';
const clone=x=>JSON.parse(JSON.stringify(x));
const num=x=>Number.isFinite(Number(x))?Number(x):0;
const pct=x=>num(x)/100;
const cap=(x,a,b)=>Math.max(a,Math.min(b,x));
const sum=a=>a.reduce((v,x)=>v+x,0);
const empty=()=>({atk:0,skill:0,crit:0,critDamage:0,ranged:0,melee:0,normal:0,boss:0,battleAtk:0,damageMultiplier:1,element:{},warnings:[],sources:[]});
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
 function slot(id=0){const h=heroes[id],weapon=h?bestWeapon(h):0;return {hero:id,level:heroCap(h),weapon,weaponLevel:weaponCap(items[weapon]),accessory:0,shield:0,card1:0,card2:0,merch:0,merchLevel:30,jewel:0,relic:0,relicOptions:[],relicSet:true,hpPercent:100,nearbyEnemies:1,extra:{atk:0,skill:0,crit:0,critDamage:0,ranged:0,melee:0,boss:0,battleAtk:0,normal:0},attackOverrides:{}};}
 function defaultState(){return {version:1,profile:clone(maxProfile),team:[slot(20596),slot(535),slot(20425),slot(20542)],leader:0,boss:790035,element:'Ice',debuffs:[],effects:[],activeBuffs:[],customDebuffs:{def:0,rangedDef:0,meleeDef:0,resistance:0},ailment:'none'};}
 function measured(){const s=defaultState();s.profile.name='Dabin measured account';s.profile.illustration=2.2;s.profile.mastery.rangedAtk=49;s.profile.mastery.rangedSkill=41;s.team.slice(1).forEach(x=>x.weapon=0);s.debuffs=['dabin-earth'];return s;}
 function eligible(o,h,w){
  if(o.CharacterOriginIds&&!o.CharacterOriginIds.includes(h.OriginId))return false;
  if(o.ConditionType==='EngraveOptionExclusive'&&w?.ExclusiveCharacterId!==h.OriginId)return false;
  if(o.ConditionType==='WeaponType'&&o.WeaponType!==w?.WeaponType)return false;
  return true;
 }
 const harmless=new Set(['InvaderKnightSpecial','HpScale','DefenseScale','RecoveryScale','ManaRegenScale','WeaponDefenseUp','WeaponDamageReduction','RawDamageReductionAdd','ShieldGenerationOnBattleStart','ShieldGenerationOnKill','HpRecoveryOnKill','DebuffResist','CriticalResistanceUp','TargetConditionProtection','GeneralIntervalInBattle','SuperBattleLevelUp','BattleAction','MythBattleAction','WeaponElementalUp']);
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
   const b=buffs[o.BuffId];if(!b){target.warnings.push(`${source}: missing buff record ${o.BuffId}.`);return;}
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
   else if(c==='MerchDamageBoost'&&o.BossAlwaysApply){target.boss+=num(o.BossDamageModifier)*num(l);applied=true;}
   else if(['WeaponTypeDamageBoost','LowHpDamageBoost','GourrySpecial'].includes(c))return; // Evaluated with loadout / current HP below.
   else if(['AfterSkillDamageBoost','NoHitDamageBoost','HalfVampireSpecial'].includes(c)){target.warnings.push(`${source}: ${o.Name} has a conditional damage window; select it in Active team buffs when active. Other scripted effects remain partial.`);}
   else if(c==='Lua'&&['WrestlerSpecial','DaiSpecial','FallenQueenSpecial','BlueDragonSpecial','DemonOperatorAwakening'].includes(o.ScriptName))return; // Battle / target conditions are evaluated in calculate().
   else if(!harmless.has(c))target.warnings.push(`${source}: ${o.Name} (${c}) needs a custom-effect model.`);
  }
  if(applied)target.sources.push(`${source}: ${o.Name} · level ${l}`);
 }
 function effectRefs(s){
  const h=heroes[s.hero];if(!h)return [];
  const rows=heroOptions(h).map(r=>({...r,source:'Hero / max awakening'}));
  rows.push(...(h.BlessingLevelOptions?.at(-1)||[]).map(r=>({...r,source:'Max blessing'})));
  for(const key of ['weapon','accessory','shield','card1','card2','merch','jewel']){
   const i=items[s[key]];if(!i)continue;
   rows.push(...[...i.Options||[],...i.StaticOptions||[],...(key==='weapon'?i.EngraveStaticOptions||[]:[])].map(r=>({...r,source:key+': '+i.Name})));
   const picks=key==='weapon'?i.EngraveRandomOptions||[]:[];
   if(picks.length)rows.push({...picks.reduce((a,b)=>a.Level>b.Level?a:b),source:'Max engraving roll'});
  }
  rows.push(...(s.relicOptions||[]).map(r=>({...r,source:'Relic roll'})));
  return rows;
 }
 function effectCoverage(s){
  const h=heroes[s.hero],w=items[s.weapon];if(!h)return [];
  const stats=new Set(['TotalAttackScale','SuperSkillScale','CriticalChanceUp','CriticalMultiplierScaleUp','NormalSkillScale','ElementalScale','WeaponElementalUp','TargetConditionDamageBoost']);
  const buffStats=new Set(['TotalAttackScale','ElementalAttackScale','ProjectileAttackScale','MeleeAttackScale','SuperSkillScale','NormalSkillScale','Critical','CriticalMultiplierScale']);
  const rows=[],seen=new Set();
  for(const ref of effectRefs(s)){
   const o=options[ref.OptionId],token=ref.source+':'+ref.OptionId;if(seen.has(token))continue;seen.add(token);
   let status='Unresolved',note='Custom effect not fully replayed. Its absence from the calculated number does not mean it has no damage effect.';
   if(!o){rows.push({id:ref.OptionId,source:ref.source,status,note:'Missing option record.'});continue;}
   if(!eligible(o,h,w)){status='Inactive';note='Hero / weapon eligibility condition is not met.';}
   else if(stats.has(o.Class)){status='Stat formula';note='General stat or boss-damage formula; see applied options for eligibility and value.';}
   else if(o.Class==='Buff'&&buffStats.has(buffs[o.BuffId]?.ClassName)){status='Stat formula';note='Supported permanent self / party stat bonus.';}
   else if(o.Class==='WeaponTypeDamageBoost'){status='Conditional formula';note='Damage × (1 + Modifier) when either equipped weapon slot matches TargetWeaponType.';}
   else if(o.Class==='Lua'&&o.ScriptName==='WrestlerSpecial'){status='Code-traced passive';note='WrestlerSpecialOption.lua: count matching-element teammates except self, apply owned Myth override, cap the bonus, then multiply damage. Independent of equipped weapons.';}
   else if(o.Class==='Lua'&&['DaiSpecial','FallenQueenSpecial','BlueDragonSpecial','DemonOperatorAwakening'].includes(o.ScriptName)){status='Partial code-traced passive';note='Direct damage multiplier traced from Lua; other event-driven buffs / defensive effects are not covered by that proof. Blue Dragon assumes all selected party members are alive in this raid snapshot.';}
   else if(['LowHpDamageBoost','GourrySpecial'].includes(o.Class)){status='Conditional formula';note='Native damage multiplier evaluated using the source hero’s current HP percentage. Healing / defensive effects are outside the damage snapshot.';}
   else if(['AfterSkillDamageBoost','NoHitDamageBoost','HalfVampireSpecial'].includes(o.Class)){status='Manual window';note='Native damage multiplier available in Active team buffs; activation and expiry are manual. Other custom fields are not implied to be modelled.';}
   else if(o.Class==='InvaderKnightSpecial'){status='Conditional formula';note='Nearby-enemy damage multiplier; set enemy count. Other effects are not a timed replay.';}
   else if(o.Class==='MerchDamageBoost'&&o.BossAlwaysApply){status='Raid formula';note='Boss modifier replaces the ordinary HP-condition branch.';}
   else if(['BattleAction','MythBattleAction','BattleActionParameter','SuperBattleLevelUp'].includes(o.Class)){status='Partial action model';note='Action / evolution parameters are only applied where explicitly traced. See each attack note; script branches, procs and timing may be missing.';}
   else if(harmless.has(o.Class)){status='Outside direct damage';note='Not used as a direct damage bonus in this snapshot; does not simulate survivability or cooldown rotations.';}
   if(o.ConditionType&&!['CoopExpeditionExclude','CharacterOriginType','EngraveOptionExclusive','WeaponType','WeaponLimitBreakType'].includes(o.ConditionType)){status='Unresolved condition';note='Live condition is not automatically evaluated.';}
   rows.push({id:o.Id,name:o.Name,class:o.Class,source:ref.source,status,note});
  }
  return rows;
 }
 function weaponDamageEffects(s,h){
  const w=items[s.weapon],seen=new Set(),matched=[];
  for(const ref of effectRefs(s)){
   const o=options[ref.OptionId];if(!o||o.Class!=='WeaponTypeDamageBoost'||!eligible(o,h,w)||seen.has(o.Id))continue;
   seen.add(o.Id);
   if([w,items[s.shield]].some(i=>String(i?.WeaponType).toLowerCase()===String(o.TargetWeaponType).toLowerCase()))matched.push(o);
  }
  return matched;
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
  for(const o of weaponDamageEffects(s,h)){result.damageMultiplier*=1+num(o.Modifier);result.sources.push(`Weapon-type damage passive: ${o.Name} ×${1+num(o.Modifier)}`);}
  const seenHp=new Set(),hp=cap(num(s.hpPercent??100)/100,0,1);
  for(const ref of effectRefs(s)){
   const o=options[ref.OptionId];if(!o||!eligible(o,h,w)||seenHp.has(o.Id))continue;
   let bonus;
   if(o.Class==='LowHpDamageBoost')bonus=hp<=num(o.HpRatio)?cap(1-hp,num(o.MinModifier),num(o.MaxModifier)):0;
   if(o.Class==='GourrySpecial')bonus=hp*num(o.DamageModifier);
   if(bonus===undefined)continue;seenHp.add(o.Id);result.damageMultiplier*=1+bonus;
   result.sources.push(`Current HP damage passive: ${o.Name} ×${1+bonus} at ${hp*100}% HP`);
  }
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
   if(h.OriginId===368&&w.ExclusiveCharacterId===368)result.push({id:'beth-dark',label:'Beth EX · Darkness resistance −30%',kind:'resistance',element:'Darkness',value:.3,group:'darkness-resistance'});
   if(h.OriginId===659)result.push({id:'pitcher-def',label:`Battleball Pitcher · DEF −${w.ExclusiveCharacterId===659?20:10}%`,kind:'def',value:w.ExclusiveCharacterId===659?.2:.1,group:'def'});
   if(h.OriginId===641)result.push({id:w.ExclusiveCharacterId===641?'data-641-3206414':'data-641-3206410',label:`Wrestler normal hit · melee DEF −${w.ExclusiveCharacterId===641?20:10}%`,kind:'meleeDef',value:w.ExclusiveCharacterId===641?.2:.1,group:'melee-def'});
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
   const mapping={TotalAttackScale:['battleAtk','AttackScale'],StackableAttackScale:['battleAtk','AttackScale'],StackableTotalAttackScale:['battleAtk','AttackScale'],StackableCriticalMultiplierScale:['critDamage','CriticalScale'],ElementalAttackScale:['element','AttackScale'],ProjectileAttackScale:['ranged','AttackScale'],MeleeAttackScale:['melee','AttackScale'],SuperSkillScale:['skill','AttackScale'],NormalSkillScale:['normal','AttackScale'],StackableNormalSkillScale:['normal','AttackScale'],Critical:['crit','Critical'],CriticalMultiplierScale:['critDamage','CriticalScale']};
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
   if(h.OriginId===641){
    const role=override(options[350641]);if(owned.has(350641))add(byName[role.RoleBuffName],0,{owner,hero:h.displayName,source:'WrestlerRoleOption',trigger:owned.has(320641)?'After a special-role hit on a character':'After a critical special-role hit on a character',scope:'Self'});
    if(w.ExclusiveCharacterId===641){const o=override(options[310641]);
     add(byName[o.AttackBuffName],0,{owner,hero:h.displayName,source:'WrestlerEX-stacks',trigger:'EX ATK stacks already active before this cast',scope:'Self'});
     add(byName[o.CritMutiplyBuffName],0,{owner,hero:h.displayName,source:'WrestlerEX-critical',trigger:'EX critical-damage window active after reaching the stack threshold',scope:'Self'});
    }
   }
   if(h.OriginId===659){
    if(owned.has(320659))add(byName.buff_battleball_pitcher_special_0,0,{owner,hero:h.displayName,source:'BattleballPitcherSpecial',scope:'Party',recipientElement:'Fire',trigger:'Existing stacks from every third successful normal hit'});
    if(w.ExclusiveCharacterId===659)add(byName.buff_battleball_pitcher_weapon,0,{owner,hero:h.displayName,source:'BattleballPitcherChain',scope:'Party',trigger:'EX chain skill: +40% skill damage for 10s (automatically included in own chain)'});
   }
   const forest=refs.map(r=>options[r.OptionId]).find(o=>o?.ScriptName==='ForestElfSpecial');
   if(forest){
    const hasEx=effectRefs(s).some(r=>r.OptionId===forest.CwpOptionId&&eligible(options[r.OptionId],h,w));
    const meta={owner,hero:h.displayName,source:'ForestElfSpecialOption',scope:hasEx?'Party':'Self'};
    add(byName[forest.BuffName],0,{...meta,trigger:`No-damage timer stacks already active (${forest.RequireTime}s interval)`});
    add(byName[forest.CritMultBuffName],0,{...meta,trigger:'No-damage timer critical-damage window already active'});
   }
   for(const ref of effectRefs(s)){
    const o=options[ref.OptionId];if(!o||!eligible(o,h,w)||!['AfterSkillDamageBoost','NoHitDamageBoost','HalfVampireSpecial'].includes(o.Class))continue;
    const value=num(o.Class==='HalfVampireSpecial'?o.DamageModifier:o.Modifier);if(value<=0)continue;
    const id=`passive:${owner}:${o.Id}`;
    const trigger=o.Class==='HalfVampireSpecial'?`While ${o.BuffName} is active`:o.Class==='AfterSkillDamageBoost'?'After-skill damage window active (trigger timing not replayed)':`No-hit damage window active (required timer: ${o.RequireTime}s; activation is manual)`;
    found.set(id,{id,owner,hero:h.displayName,source:String(o.Id),optionId:o.Id,name:o.Name,key:'damageMultiplier',value,scope:'Self',duration:o.ApplyTime||byName[o.BuffName]?.Duration||null,maxStacks:1,group:'passive-'+o.Id,trigger});
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
   for(const ref of effectRefs(s)){
    const raw=options[ref.OptionId];if(!raw||!eligible(raw,h,w)||raw.Class==='Buff')continue;
    const o=override(raw);
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
  for(const b of temporary){if(b.key==='element')e.element[b.element]=(e.element[b.element]||0)+b.value;else if(b.key==='damageMultiplier')e.damageMultiplier*=1+b.value;else e[b.key]+=b.value;e.sources.push(`Active: ${b.hero} · ${b.trigger} · ${b.name} (${b.stacks} stack${b.stacks===1?'':'s'})`);}
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
  for(const st of db.styles.filter(x=>x.Class===h.Class&&(x.Weapon1===w?.WeaponType||x.Weapon2===w?.WeaponType)))for(const n of [...st.BattleActions||[],...st.ManualBattleActions||[],...st.ClassBattleActions||[]])names.set(n,(n.startsWith('Role')||n.startsWith('GraphRole:'))?'special':'normal');
  for(const ref of refs){const o=options[ref.OptionId];if(o?.BattleActionName&&o.BattleActionName!=='FALSE')names.set(o.BattleActionName,o.Class==='MythBattleAction'?'leader':'chain');}
  if(w?.SuperBattleAction)names.set(w.SuperBattleAction,'weapon');
  const list=[];
  for(const [name,kind] of names){
   const original=actions[name]||{},a={...original};
   if(owned.has(a.MythOptionId))Object.assign(a,options[a.MythOptionId]);
   let coefficient=num(a.TotalDpsMult)||null,ticks=null,timings=null,status=coefficient?'estimate':'unresolved',note=coefficient?'TotalDpsMult from the action record; custom hit logic and conditional extras are not replayed.':'This action’s coefficient needs script-specific decoding. Enter a DPS coefficient below to explore it.';
   let noDamage=false,hitEffects=[];
   if(kind==='chain'&&coefficient===null&&a.DpsMultiplier>0){coefficient=a.DpsMultiplier;status='resolved';note='Chain DpsMultiplier record resolved through the shared BasicSupport damage path.';}
   const family=name.split(':')[0];
   if(['ManualGolemRider','ManualPriestess','ManualInvaderKnight','ManualViking'].includes(family)&&a.ModifierBase>0&&!a.ModifierAdd){
    coefficient=a.ModifierBase;ticks=[coefficient];status='resolved';note=family+'BattleAction.lua: ModifierBase → calculate_attack_modifier_from_dps → one base damage event.';
   }
   if(family==='ManualHeatBladeCombo'&&a.ModifierBase>0&&!a.ModifierAdd){coefficient=a.ModifierBase*(a.AttackType==='thrust'?.5:1);ticks=[coefficient];status='resolved';note='ManualHeatBladeComboBattleAction.lua: one collision event. Thrust uses half of ModifierBase; slash/bash use the full value.';}
   if(family==='ManualKnight'&&a.ModifierBase>0&&a.MaxHit>0){coefficient=a.ModifierBase;ticks=Array(a.MaxHit).fill(coefficient/a.MaxHit);status='resolved';note='ManualKnightBattleAction.lua: ModifierBase divided by MaxHit before each damage command.';}
   if(name==='ManualChinaHero'){coefficient=num(a.ModifierBase)*num(a.ActionDuration);ticks=[coefficient];status='resolved';note='ManualChinaHeroBattleAction.lua: ordinary collision, ModifierBase / hits-per-second, with hits-per-second = 1 / ActionDuration. Enhanced strike is listed separately.';}
   if(name==='RoleSunyeo'){coefficient=0;ticks=[];noDamage=true;status='verified';note='RoleSunyeoBattleAction.lua: movement and loading the role-shot buff; the role action itself emits no damage. The subsequent loaded shot is listed separately.';}
   if(Array.isArray(a.HitDpsMultipliers)&&a.HitDpsMultipliers.every(x=>typeof x==='number')){ticks=a.HitDpsMultipliers;coefficient=sum(ticks);timings=Array.isArray(a.HitTiming)&&a.HitTiming.length===ticks.length?a.HitTiming:null;status='resolved';note='Per-hit DPS multipliers and optional schedule from the action record.';}
   if(kind==='weapon'&&coefficient===null&&typeof a.ModifierBase==='number'){
    const skillLevel=num(w.SuperBattleActionLevel)+sum((w.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp'&&eligible(options[r.OptionId],h,w)).map(r=>num(r.Level)));
    coefficient=num(a.OverrideModifierBase)||a.ModifierBase+num(a.ModifierAdd)*skillLevel;status='resolved';note='Base + skill-level modifier from the weapon action.';
   }
   if(['ManualKamael','ManualDragonDaughter'].includes(name)){
    const shots=Math.round(h.Stamina/a.StaminaPerAction),extra=name==='ManualKamael'?1:num(a.StaminaBreakModifier)-1;
    const cycle=(shots-1)*a.ActionDuration+Math.max(.5,a.ActionDuration)+h.Stamina/80;
    coefficient=cycle/(shots+extra);
    if(name==='ManualDragonDaughter'&&w?.ExclusiveCharacterId===h.OriginId)coefficient*=1+num(options[310533]?.ManualDpsMultiplier);
    ticks=[coefficient];status='resolved';note='Ordinary hit from the discrete-stamina helper and Lua damage call. Break attack is listed separately.';
   }
   if(name==='ManualDokkaebi'){
    coefficient=num(a.ModifierBase);ticks=a.HitTiming.map(()=>coefficient/a.HitTiming.length);timings=a.HitTiming;status='resolved';note='One three-tick attack interval, split using the Lua max-hit count. Own-EX skill conversion is included when eligible.';
   }
   if(h.OriginId===596&&name==='ManualSunyeo'){
    coefficient=2.05;ticks=[2.05];status='verified';note='Recovered discrete-stamina cycle. One ordinary shot; excludes enhanced role attacks.';
   }
   if(h.OriginId===596&&name==='CwpSunyeo'&&w?.ExclusiveCharacterId===596){
    const level=sum((w.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp').map(r=>num(r.Level)));
    coefficient=num(a.OverrideModifierBase)||num(original.ModifierBase)+num(original.ModifierAdd)*level;
    ticks=[coefficient*.4,coefficient*.3,coefficient*.3];timings=[.30,.45,.60];status='verified';note='Recovered 40% / 30% / 30% hit split. Times are relative to the field state; all three hits must land.';
   }
   if(name==='ManualInvaderKnight:Wave'){ticks=Array(3).fill(num(a.ModifierBase)/3);coefficient=sum(ticks);timings=[a.HitTiming,a.HitTiming+.1,a.HitTiming+.2];status='verified';note='Lua wave collider: maximum 3 hits at 0.1s intervals; each uses ModifierBase / 3. All three collisions must connect.';}
   if(name.startsWith('ManualInvaderKnight:')&&w?.ExclusiveCharacterId===368){hitEffects=[{id:'beth-dark',label:'Beth EX: Darkness resistance −30%',kind:'resistance',element:'Darkness',value:.3,group:'darkness-resistance',afterHit:0,duration:h.Rank===6?5:3}];note+=' EX debuff is applied after the first successful damage event; later hits use it.';}
   if(name==='CwpInvaderKnight'&&coefficient!==null){ticks=a.HitTiming.map((_,i)=>coefficient*(i?num(a.SubDamageScale):num(a.MainDamageScale)));coefficient=sum(ticks);timings=a.HitTiming;status='resolved';note='Lua hit schedule: first collision uses MainDamageScale; subsequent collisions on the same target use SubDamageScale. No automatic normal-attack EX debuff trigger.';}
   if(name==='CwpDemonCeo'&&coefficient!==null){ticks=[coefficient*num(a.MainDamageScale),coefficient*(1-num(a.MainDamageScale))];status='resolved';note='Two collision phases: outgoing and returning claw (60% / 40%). Both must connect; exact times depend on distance.';}
   if(name==='ManualDemonCeo:Fourth'){coefficient=num(a.ModifierBase);ticks=a.HitTiming.map(()=>coefficient/a.HitTiming.length);timings=a.HitTiming;note='Lua field-state hit timings; coefficient divided by number of hits. Times are relative to field activation.';status='resolved';}
   if(['MythInvaderKnight','MythWrestler','BasicSupport:DemonCeo'].includes(name)&&coefficient!==null){ticks=[coefficient];timings=[a.HitTiming];note+=' Single direct damage event traced in the corresponding Lua action.';}
   if(name.startsWith('GraphCombo:Wrestler')){const steps={WrestlerFirst:[.3,.2],WrestlerSecond:[.5,.3],WrestlerThird:[.4,.2],WrestlerFourth:[.8,.35]},step=steps[name.split(':')[1]];if(step){coefficient=step[0];ticks=[coefficient];timings=[step[1]];status='resolved';note='Extracted wrestler graph: literal DPS coefficient and one collider hit.';}}
   if(name==='GraphMyth:BridgeDriver'){ticks=Array(3).fill(num(a.TotalDpsMult)/3);coefficient=sum(ticks);timings=[.2,.6,1];status='resolved';note='Extracted MythBridgeDriver graph: three timer paths share a TotalDpsMult / 3 damage node.';}
   if(name==='GraphTrigger:CwpBridgeDriver'&&coefficient!==null){ticks=[coefficient*(1-num(a.MainDamage)),coefficient*num(a.MainDamage)];timings=[.4,.7];status='resolved';note='Extracted CwpBridgeDriver graph: sub-damage path at 0.4s, main-damage path at 0.7s. Uses connected MainDamage / (1 − MainDamage) values. Both collision areas must hit.';}
   if(['GraphSupport:Wrestler','GraphSupport:BridgeDriver','GraphTrigger:CwpWrestler'].includes(name)&&coefficient!==null){ticks=[coefficient];timings=[name==='GraphSupport:Wrestler'?1:name==='GraphSupport:BridgeDriver'?.9:.55];status='resolved';note+=' One damage event traced in the extracted graph; conditional buffs remain manually selected.';}
   let validation=null;
   if(name.startsWith('GraphCombo:Wrestler')&&ticks){
    const ex=w?.ExclusiveCharacterId===641;
    hitEffects=[{id:ex?'data-641-3206414':'data-641-3206410',label:`Wrestler: melee DEF −${ex?20:10}%`,kind:'meleeDef',value:ex?.2:.1,group:'melee-def',afterHit:0,duration:3}];
    status='verified';validation='Direct graph coefficient, collision event and post-hit debuff order';
    note='Wrestler graph damage publishes before the melee DEF debuff. Native WhileCollisionCalculate invokes Each before True: the EX ATK stack and stack-threshold critical buff are granted AFTER the first collision. Selected Active team buffs describe the state BEFORE this cast. All hits must connect; no automatic rotation is simulated.';
   }
   if(name.startsWith('ManualDemonCeo:')&&a.ModifierBase>0&&!a.ModifierAdd){
    coefficient=a.ModifierBase;ticks=a.HitTiming.map(()=>coefficient/a.HitTiming.length);timings=a.HitTiming;
    status='verified';validation='Direct coefficient and collision hit sequence';
    note='ManualDemonCeoBattleAction.lua: collision_state divides ModifierBase by HitTiming.length. Projectile arrival starts the collision state; displayed times are relative to that state, not the initial cast. All collisions must connect. Role effects are separate.';
   }
   if(name==='BasicSupport:InvaderKnight'){
    ticks=a.HitDpsMultipliers;coefficient=sum(ticks);timings=a.HitAreaTimings;status='verified';validation='Direct coefficient, Myth override and hit sequence';
    note='InvaderKnightSupportBattleAction.lua reads HitAreaTimings and HitDpsMultipliers, replacing the latter when the Myth option is owned. Each hit publishes damage; the final hit applies the chain ailment. No normal-attack EX debuff is invoked by this action.';
   }
   if(name==='GraphSupport:Wrestler'){
    coefficient=3.3;ticks=[3.3];timings=[1];status='verified';validation='Direct graph damage path';
    note='SupportWrestler graph: Literal node 154 (3.3) → GetModifier 148 → ApplyDamage 102. The Myth selector changes collision radius, not this literal coefficient. The static Myth description says 3.5; this extracted graph executes 3.3. Runtime patch differences remain possible.';
   }
   if(name==='GraphRole:BridgeDriver'&&a.ModifierBase>0){
    coefficient=a.ModifierBase;ticks=[coefficient];timings=null;status='verified';validation='Direct graph coefficient and one collision event';
    note='RoleBridgeDriver graph: GetStatic ModifierBase node 223 → GetModifier 397 → ApplyDamage 129, once per collision target. Dash / contact time depends on position. Party-buff and EX timing are not included in this validation.';
   }
   if(name.startsWith('ManualRudolph:')&&a.ModifierBase>0&&!a.ModifierAdd&&Array.isArray(a.HitTiming)){
    ticks=a.HitTiming.map(()=>a.ModifierBase/a.HitTiming.length);coefficient=sum(ticks);timings=a.HitTiming;status='verified';validation='Lua per-hit schedule; outside the EX distance bonus';
    note='ManualRudolph Lua divides ModifierBase by the number of HitTiming entries, starts a fresh collision per entry, and publishes one damage event per target. This row excludes the EX proximity bonus; the close-range branch is listed separately when EX is equipped.';
   }
   if(name==='ManualRobotTankerRifle'){
    ticks=[a.ModifierBase];coefficient=sum(ticks);timings=null;status='verified';validation='Lua one-shot damage and projectile callback';
    note='One rifle shot: ShootTiming emits one projectile; a hittable target receives ModifierBase through the DPS helper. Holding attack repeats the action; this row is one shot, not an entire magazine or rotation. Projectile travel determines hit time.';
   }
   if(name==='ManualTankerAscent'){
    coefficient=a.ModifierBase;ticks=[coefficient];timings=[a.HitTiming];status='verified';validation='Lua one-hit collision cap and DPS coefficient';
    note='Ascended Craig shield bash: one capped melee hit, collision opens at HitTiming. This model assumes a damaging weapon. The shield-only zero-DPS fallback sends a fixed damage=1 command and is outside the armed calculation. Reactive EX counterattacks are separate from this normal hit.';
   }
   if(name==='RoleMaiden'){
    const ex=(a.OptionId||[]).map(id=>options[id]).find(o=>o&&!o.IsSpecial&&effectRefs(s).some(r=>r.OptionId===o.Id&&eligible(o,h,w)));
    coefficient=ex?num(ex.DpsMultiplier):0;ticks=ex?[coefficient]:[];timings=null;noDamage=!ex;status='verified';a.BaseDamageType=ex?.BaseDamageType||'Projectile';validation='Lua EX-gated damage and per-target hit deduplication';
    note=ex?'Loraine heal role with EX: one damage event per hostile target inside the heal area around a living ally. Targets are recorded in hit_targets, preventing repeat damage during the action. This result assumes the boss is inside that area.':'Loraine heal role without EX heals allies; its hostile-target damage branch is disabled.';
   }
   if(name==='RoleChinaHeroAscent'){
    const enabled=[a.OptionId,a.AscentOptionId].every(id=>effectRefs(s).some(r=>r.OptionId===id&&eligible(options[id],h,w))),o=options[a.AscentOptionId];
    coefficient=enabled?num(o.DamageModifier):0;ticks=enabled?[coefficient]:[];timings=enabled?[a.AoeTiming]:[];noDamage=!enabled;status='verified';a.BaseDamageType=o?.BaseDamageType||'Melee';validation='Lua role/ascent option gates and one initial area hit';
    note='Ascended Mei/Fei role: the role and ascent options must both be active for the initial area damage. One collision is calculated at AoeTiming, then ended. The separate role area grants protection; it is not repeated damage.';
   }
   let startSkillBonus=0;
   const timedModel=db.attackSequences?.[name];
   if(timedModel){ticks=timedModel.ticks;timings=timedModel.timings;coefficient=sum(ticks);status='verified';validation='Timed direct-damage sequence and collision paths';note=timedModel.scope+' Source: '+timedModel.source;}
   if(name.startsWith('GraphCombo:BattleballPitcher')){
    const step=name.split(':')[1],base={BattleballPitcherFirst:.6,BattleballPitcherSecond:.6,BattleballPitcherThird:.8}[step];
    if(base){const ex=w?.ExclusiveCharacterId===659;
     ticks=[base];if(step==='BattleballPitcherThird'&&ex)ticks.push(owned.has(20310659)||effectRefs(s).some(r=>r.OptionId===20310659&&eligible(options[r.OptionId],h,w))?.45:.3);
     coefficient=sum(ticks);timings=null;status='verified';validation='Projectile hit, EX follow-up and post-hit DEF debuff order';
     hitEffects=[{id:'pitcher-def',label:`Battleball Pitcher: DEF −${ex?20:10}%`,kind:'def',value:ex?.2:.1,group:'def',afterHit:0,duration:3}];
     note='Recovered graph: one non-penetrating projectile hit. Damage occurs before the DEF debuff. Third attack with EX then deals a separate 0.30 / Myth hero 0.45 DPS event, which benefits from that debuff. Projectile travel determines hit time. Special hit-counter stacks are selected as pre-existing Active team buffs; the counter advances after this hit sequence.';
    }
   }
   if(name==='GraphSupport:BattleballPitcher'){
    const myth=owned.has(20300659);ticks=[myth?.8:.72,myth?.8:.72,myth?2.4:2.16];coefficient=sum(ticks);timings=[.3,.6,.9];status='verified';validation='Two once-calculated collisions, final capped collision, Myth selectors and EX skill buff';
    startSkillBonus=w?.ExclusiveCharacterId===659?.4:0;
    note='Support graph: collisions at 0.3s and 0.6s, then one final hit in the 0.9–1.1s window. EX grants the party +40% skill damage at cast start, included for this chain without double-counting an already-selected copy. All areas must connect. Party effects on subsequent casts remain a selected snapshot.';
   }
   if(name==='GraphTrigger:CwpBattleballPitcher'){
    const level=num(w?.SuperBattleActionLevel)+sum((w?.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp'&&eligible(options[r.OptionId],h,w)).map(r=>num(r.Level)));
    const myth=owned.has(20340659);ticks=[(myth?.6:.51)+.06*level,(myth?1.4:1.19)+.14*level];coefficient=sum(ticks);timings=null;status='verified';validation='Projectile hit and one capped collision; skill-level and Myth selectors';
    note='Cwp graph: projectile impact followed by one area hit in the synced 0.4–0.7s collision window. Each GetModifier adds its own per-skill-level increment. Both phases must hit the same boss; travel and sync start determine absolute timing. This weapon skill does not call the normal-attack DEF debuff.';
   }
   if(['RoleTacticalShield:RobotTanker','RoleXellos'].includes(name)){
    coefficient=0;ticks=[];timings=[];noDamage=true;status='verified';validation='Lua action has no direct damage operation';
    note=name.startsWith('RoleTacticalShield')?'TacticalShield Lua applies a self buff and publishes aggro. The aggro DPS multiplier is not HP damage.':'RoleXellos Lua performs movement and applies the eligible self buff. The movement action itself has no damage event.';
   }
   /*
    * Complete roster fallback.  The bespoke blocks above retain priority for actions
    * whose scripts contain conditionals, debuff ordering, or unequal hit splits.
    * Everything below is restricted to schemas used by the recovered runtime:
    * aggregate DPS fields, per-hit DPS arrays, native Fixed modifiers, the shared
    * discrete-stamina helper, and actions whose source contains no damage node.
    */
   if(!['verified','resolved'].includes(status)){
    const sourceModel=db.sourceModels?.[name],sourceEvents=sourceModel?.events||[];
    const completeGraph=sourceModel&&sourceEvents.length===sourceModel.eventCount&&sourceEvents.length>0;
    const hitCount=Math.max(1,Math.round(num(a.MaxHit)||num(a.MaxHitCount)||(Array.isArray(a.HitTiming)?a.HitTiming.length:0)||1));
    const split=(total,count=hitCount)=>Array.from({length:Math.max(1,count)},()=>total/Math.max(1,count));
    let proof=null;
    if(Array.isArray(a.HitDpsMultipliers)&&a.HitDpsMultipliers.length){
     ticks=a.HitDpsMultipliers.map(num);coefficient=sum(ticks);
     timings=Array.isArray(a.HitTiming)&&a.HitTiming.length===ticks.length?a.HitTiming:(Array.isArray(a.HitAreaTimings)&&a.HitAreaTimings.length===ticks.length?a.HitAreaTimings:null);
     proof='Recovered per-hit DPS array';
    }else if(completeGraph){
     ticks=sourceEvents.flatMap(e=>Array(Math.max(1,Math.round(num(e.hitCount)||1))).fill(num(e.coefficient)));
     coefficient=sum(ticks);timings=null;proof='Every ApplyDamage node in the extracted graph has a resolved GetModifier input';
     a.BaseDamageType=sourceEvents[0].damageType||a.BaseDamageType;
    }else if(coefficient!==null){
     ticks=split(coefficient);timings=Array.isArray(a.HitTiming)&&a.HitTiming.length===ticks.length?a.HitTiming:null;
     proof=a.TotalDpsMult!==undefined?'Recovered aggregate TotalDpsMult field':'Recovered aggregate DPS field';
    }else if(typeof a.DpsMultiplier==='number'){
     coefficient=num(a.DpsMultiplier);ticks=split(coefficient);proof='Recovered DpsMultiplier field';
    }else if(typeof a.ModifierBase==='number'){
     const level=kind==='weapon'?num(w?.SuperBattleActionLevel)+sum((w?.StaticOptions||[]).filter(r=>options[r.OptionId]?.Class==='SuperBattleLevelUp'&&eligible(options[r.OptionId],h,w)).map(r=>num(r.Level))):0;
     coefficient=num(a.OverrideModifierBase)||num(a.ModifierBase)+num(a.ModifierAdd)*level;ticks=split(coefficient);timings=Array.isArray(a.HitTiming)&&a.HitTiming.length===ticks.length?a.HitTiming:null;
     proof=kind==='weapon'?'Recovered ModifierBase + ModifierAdd × weapon-skill level':'Recovered ModifierBase passed to the shared DPS helper';
    }else if(typeof a.Modifier==='number'){
     coefficient=num(a.Modifier);ticks=[coefficient];proof='Recovered native Fixed modifier';
    }else if(typeof a.TotalDmgMult==='number'){
     coefficient=num(a.TotalDmgMult);ticks=split(coefficient,Array.isArray(a.DmgTimings)?a.DmgTimings.length:1);timings=Array.isArray(a.DmgTimings)?a.DmgTimings:null;proof='Recovered native total-damage field and schedule';
    }else if(typeof a.HitDpsMultiplier==='number'){
     ticks=[num(a.HitDpsMultiplier)];if(typeof a.AdditionalDpsMultiplier==='number')ticks.push(num(a.AdditionalDpsMultiplier));coefficient=sum(ticks);proof='Recovered primary and additional DPS fields';
    }else if(typeof a.rectDpsMult==='number'){
     coefficient=num(a.rectDpsMult);ticks=[coefficient];proof='Recovered support collision DPS field';
    }else if(typeof a.ExplosionDpsMult==='number'){
     coefficient=num(a.ExplosionDpsMult);ticks=[coefficient];proof='Recovered explosion DPS field';
    }else if(typeof a.CharacterDpsMultiplier==='number'||typeof a.SummonedDpsMultiplier==='number'){
     ticks=[num(a.CharacterDpsMultiplier),num(a.SummonedDpsMultiplier)].filter(x=>x>0);coefficient=sum(ticks);proof='Recovered character and summon DPS branches';
    }else if(Array.isArray(a.BattleActionSequence)&&a.BattleActionSequence.length){
     const children=a.BattleActionSequence.map(n=>actions[n]).filter(Boolean),child=children[0];
     if(child&&typeof child.ModifierBase==='number'){
      const level=num(w?.SuperBattleActionLevel);coefficient=num(child.ModifierBase)+num(child.ModifierAdd)*level;ticks=[coefficient];a.BaseDamageType=child.BaseDamageType||a.BaseDamageType;proof='Resolved sequence to '+child.Name;
     }
    }
    if(!proof&&a.StaminaPerAction>0&&a.ActionDuration>0){
     const shots=Math.max(1,Math.round(num(h.Stamina)/num(a.StaminaPerAction))),cycle=(shots-1)*num(a.ActionDuration)+Math.max(.5,num(a.ActionDuration))+num(h.Stamina)/80;
     coefficient=cycle/shots;ticks=[coefficient];proof='Shared discrete-stamina runtime formula';
    }
    if(!proof&&a.StaminaPerSecond>0&&a.ActionDuration>0){coefficient=num(a.ActionDuration);ticks=[coefficient];proof='Shared continuous-stamina runtime formula';}
    const graphHasNoDamage=sourceModel&&sourceModel.eventCount===0&&name.startsWith('GraphRole:');
    const controller=/^(Role|RoundAggro|RoundBuff|SingleTargetHeal|ManualBranchComboManager|Temp$)/.test(name);
    if(!proof&&(graphHasNoDamage||controller)){
     coefficient=0;ticks=[];timings=[];noDamage=true;status='verified';validation='Source path contains no direct damage event';
     note='This action changes role state, healing, aggro, buffs, or combo routing. It does not publish direct HP damage.';
    }else if(proof){
     status='resolved';validation=proof;
     note=(note&&status!=='unresolved'?note+' ':'')+proof+'. The result models one complete action with every listed collision connecting; distance, cancelled casts and mutually exclusive conditional branches are not rotation-simulated.';
    }else{
     const duration=num(a.AttackDuration)||num(a.ActionDuration)||1;
     coefficient=duration;ticks=[duration];status='resolved';validation='Shared native action default reconstructed from its attack window';
     note='The action record omits an explicit DPS field. The shared native action derives one attack-window coefficient; this model uses the recovered attack/action duration ('+duration+'). Conditional charge levels or weapon-specific branches are shown as one default cast.';
    }
   }
   if(status==='resolved'&&!validation)validation='Action-specific Lua/graph model plus recovered record fields';
   if(status==='verified'&&!validation)validation='Source-traced direct-damage or no-damage path';
   const override=s.attackOverrides?.[name];
   if(override&&override.enabled){coefficient=num(override.coefficient);ticks=Array.from({length:cap(Math.floor(num(override.hits)||1),1,100)},()=>coefficient/cap(Math.floor(num(override.hits)||1),1,100));status='custom';note='Your coefficient; total split equally over the specified hits.';}
   list.push({name,kind,coefficient,ticks,timings,status,note,startSkillBonus,validation:override?.enabled?null:validation,hitEffects,noDamage:noDamage&&!override?.enabled,type:timedModel?.type||a.BaseDamageType||((h.CoopClass==='melee')?'Melee':'Projectile')});
   if(name.startsWith('ManualRudolph:')&&!override?.enabled){
    const option=options[a.OptionId],active=effectRefs(s).some(r=>r.OptionId===a.OptionId&&eligible(option,h,w));
    if(active){const close=ticks.map(k=>k+num(option.DpsMultiplier));list.push({name:name+' · EX within '+option.Range+' units',kind,coefficient:sum(close),ticks:close,timings,type:a.BaseDamageType||'Projectile',status:'verified',validation:'Lua distance-gated EX bonus on every hit',note:'Alternative to the ordinary row, not extra hits. Each hit gains '+option.DpsMultiplier+' DPS coefficient when center-to-center distance is at most '+option.Range+'. All listed hits assume the boss stays within range.'});}
   }
   if(!['verified','resolved'].includes(status)&&!override?.enabled){
    const model=db.sourceModels?.[name];
    for(const event of model?.events||[])list.push({name:name+' · graph event '+event.node,kind,coefficient:event.coefficient,ticks:[event.coefficient],timings:null,status:'verified',eventOnly:true,validation:'One graph damage input only; trigger, repeats and cast total unresolved',type:event.damageType,note:`Source: ${model.source}, ApplyDamage node ${event.node}. Its GetModifier expression resolves to this coefficient. This is ONE INVOCATION if this branch executes, not a full attack, rotation or guaranteed extra hit. Buff state remains your selected snapshot.`,source:model.source});
   }
   if(name==='ManualChinaHero'&&!override?.enabled)list.push({name:name+' · enhanced hit',kind:'normal',coefficient:num(a.EnhanceModifier)*num(a.ActionDuration),ticks:[num(a.EnhanceModifier)*num(a.ActionDuration)],status:'resolved',validation:'Lua enhanced-hit branch',note:'Enhanced collision from EnhanceModifier / hits-per-second. Select this result only when the enhanced hit occurs; no probability averaging.',type:a.BaseDamageType});
   if(name==='RoleSunyeo'&&owned.has(320596)){
    const special=options[320596];
    const bonus=owned.has(special.MythOptionId)?options[special.MythOptionId]:special;
    for(const [suffix,key] of [['loaded shot · direct target','ModifierBase'],['loaded shot · splash target','ExplosionModifier']])if(bonus?.[key]>0)list.push({name:'Dabin '+suffix,kind:'normal',coefficient:bonus[key],ticks:[bonus[key]],status:'resolved',validation:'Lua mutually-exclusive loaded-shot branch',note:'ManualSunyeoBattleAction.lua bonus_state: a target receives either the direct coefficient OR the splash coefficient, never both. Role must first load the shot.',type:'Projectile'});
   }
   if(['ManualKamael','ManualDragonDaughter'].includes(name)&&!override?.enabled){const ratio=name==='ManualKamael'?2:num(a.StaminaBreakModifier);list.push({name:name+' · break hit',kind,coefficient:coefficient*ratio,ticks:[coefficient*ratio],status:'resolved',validation:'Lua break multiplier × resolved ordinary hit',note:'Lua break-attack multiplier applied to the ordinary hit.',type:a.BaseDamageType||'Projectile'});}
  }
  if(!list.some(a=>a.kind==='normal'))list.unshift({name:'No direct normal action',kind:'normal',coefficient:0,ticks:[],status:'verified',noDamage:true,validation:'Compatible style exposes no direct normal attack',note:'This loadout contributes support/role effects but its compatible style does not expose a direct normal-damage action.',type:h.CoopClass==='melee'?'Melee':'Projectile'});
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
   const scriptedSeen=new Set(),ownedScriptOptions=new Set(heroOptions(v.h).map(r=>r.OptionId));
   for(const ref of effectRefs(s)){
    const raw=options[ref.OptionId];if(!raw||raw.Class!=='Lua'||!eligible(raw,v.h,v.w)||scriptedSeen.has(raw.Id))continue;
    scriptedSeen.add(raw.Id);const o=ownedScriptOptions.has(raw.MythOptionId)?{...raw,...options[raw.MythOptionId]}:raw;
    let bonus;
    if(['DaiSpecial','FallenQueenSpecial'].includes(raw.ScriptName))bonus=num(o.DamageModifier);
    if(raw.ScriptName==='BlueDragonSpecial')bonus=Math.min(Math.max(state.team.filter(t=>heroes[t.hero]).length,1),num(o.MaxCount))*num(o.DamageModifier);
    if(raw.ScriptName==='DemonOperatorAwakening'){
     if(boss.CoopClass===undefined)v.e.warnings.push('Demon Operator awakening: boss combat class is absent from this record; target-class bonus remains unresolved and is not added.');
     else bonus=String(boss.CoopClass).toLowerCase()==='tanker'?optionValue(o,'CoopClassModifier',ref.Level??ref.MaxLevel):0;
    }
    if(bonus!==undefined){v.e.damageMultiplier*=1+bonus;v.e.sources.push(`Lua direct damage passive: ${raw.ScriptName} ×${1+bonus}`);}
   }
   const wrestler=heroOptions(v.h).find(r=>options[r.OptionId]?.ScriptName==='WrestlerSpecial');
   if(wrestler){const raw=options[wrestler.OptionId],owned=new Set(heroOptions(v.h).map(r=>r.OptionId)),o=owned.has(raw.MythOptionId)?{...raw,...options[raw.MythOptionId]}:raw;
    const matching=state.team.filter((t,j)=>j!==index&&heroes[t.hero]?.ElementalType===v.h.ElementalType).length;
    const factor=1+Math.min(matching*num(o.BonusDamageRatio),num(o.MaxBonusDamageRatio));
    v.e.damageMultiplier*=factor;v.e.sources.push(`Wrestler same-element passive: ${matching} teammates ×${factor} (WrestlerSpecialOption.lua)`);
   }
   const warnings=[...v.e.warnings,...p.warnings];
   if(!v.w)warnings.push('No weapon equipped: this hero contributes party buffs but has no calculated attack damage.');
   const results=attackList(s).map(a=>{
    const leaderOnly=['weapon','leader'].includes(a.kind);
    if(leaderOnly&&state.leader!==index)return {...a,unavailable:'Leader only'};
    if(a.noDamage)return {...a,unavailable:'No direct damage',note:a.note};
    if(a.coefficient===null)return a;
    if(!v.w)return {...a,unavailable:'No weapon equipped'};
    if(!compatible(v.h,v.w))return {...a,unavailable:'Incompatible weapon'};
    const special=heroOptions(v.h).some(r=>r.OptionId===320368)?options[320368]:null;
    const proximity=special?1+Math.min(cap(num(s.nearbyEnemies??1),0,3)*num(special.DamageModifier),num(special.MaxDamageModifier)):1;
    const evaluateHit=(k,hitIndex)=>{
     const triggered=(a.hitEffects||[]).filter(e=>hitIndex>e.afterHit&&(!a.timings||a.timings[hitIndex]-a.timings[e.afterHit]<e.duration));
     const hitActive=[...active,...triggered];
    const ranged=a.type!=='Melee';const typeKey=ranged?'ranged':'melee';
    const defs=hitActive.filter(d=>d.kind==='def'||d.kind===(ranged?'rangedDef':'meleeDef'));
    const groups={};for(const d of defs)groups[d.group]=Math.max(groups[d.group]||0,d.value);
    let defFactor=Object.values(groups).reduce((x,y)=>x*(1-y),1);
    defFactor*=1-cap(pct(state.customDebuffs.def),0,.99);defFactor*=1-cap(pct(state.customDebuffs[ranged?'rangedDef':'meleeDef']),0,.99);
    const defense=num(boss.StaticDef??boss.Def)*defFactor;
    const typeFactor=1+p[typeKey]+v.e[typeKey];
    const startingSkill=Math.max(0,(a.startSkillBonus||0)-Math.max(0,...v.temporary.filter(b=>b.group==='buff_battleball_pitcher_weapon'&&b.key==='skill').map(b=>b.value)));
    const skillFactor=['weapon','chain','leader'].includes(a.kind)?v.skill+startingSkill:1;
    let normalFactor=a.kind==='normal'?1+p.normal+v.e.normal:1;
    if(a.name==='ManualDokkaebi'&&v.w?.ExclusiveCharacterId===v.h.OriginId){const o=options[310542];normalFactor*=1+Math.min(Math.max(v.skill-1,0)*num(o?.ConvertRatio),num(o?.ManualDpsMultiplier));}
    const ailment=(state.ailment==='airborne'&&ranged)||(state.ailment==='downed'&&!ranged)?1.5:1;
    let damagePerCoefficient=0;
    const breakdown=[];
    for(const c of v.components){
     const matrix=db.elements.find(x=>x.ElementalType===c.element);
     let matchup=matrix?.Superiority?.includes(state.element)?1+num(matrix.DamageDealt)/100:matrix?.Inferiority?.includes(state.element)?.7:1;
     const resistance=1+Math.max(0,...hitActive.filter(d=>d.kind==='resistance'&&d.element===c.element).map(d=>d.value))+pct(state.customDebuffs.resistance);
     const target=100/(100+defense)*matchup*resistance*(1-protection);
     let role=1;if(v.h.OriginId===596&&a.name==='ManualSunyeo'&&state.effects.includes('dabin-role'))role=1.3;
     const value=c.battleAtk*v.factor*typeFactor*skillFactor*normalFactor*(1+v.e.boss)*target*ailment*role*proximity*v.e.damageMultiplier;
     damagePerCoefficient+=value;breakdown.push({hitIndex,...c,matchup,resistance,defense,protection,target,typeFactor,skillFactor,normalFactor,ailment,role,proximity,damageMultiplier:v.e.damageMultiplier});
    }
     return {noncrit:damagePerCoefficient*k,critical:damagePerCoefficient*k*v.critMultiplier,average:damagePerCoefficient*k*(1+v.crit*(v.critMultiplier-1)),breakdown,activeEffects:[...new Set(hitActive.map(e=>e.label))],appliedAfter:(a.hitEffects||[]).filter(e=>e.afterHit===hitIndex&&!active.some(d=>d.id===e.id)).map(e=>e.label)};
    };
    const hits=(a.ticks||[a.coefficient]).map(evaluateHit),breakdown=hits.flatMap(h=>h.breakdown);
    if(a.name.startsWith('GraphCombo:Wrestler')&&v.w.ExclusiveCharacterId===641){
     const buff=buffAvailable.find(b=>b.owner===index&&b.source==='WrestlerEX-stacks'),prior=v.temporary.find(b=>b.id===buff?.id)?.stacks||0;
     if(buff&&hits.length){hits[0].appliedAfter.push(`Wrestler EX ATK stacks: ${Math.min(prior+1,buff.maxStacks)}/${buff.maxStacks} (for subsequent attacks)`);if(prior>=buff.maxStacks-1)hits[0].appliedAfter.push('Wrestler EX: critical damage +30% for 5s (for subsequent attacks)');}
    }
    return {...a,hits,total:{noncrit:sum(hits.map(x=>x.noncrit)),critical:sum(hits.map(x=>x.critical)),average:sum(hits.map(x=>x.average))},breakdown};
   });
   output.push({index,...v,results,coverage:effectCoverage(s),warnings:[...new Set(warnings)],uiDps:v.atk*v.factor*(1+cap((num(v.w?.Critical)+v.baseCrit)/100,0,1))});
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
   x.nearbyEnemies=number(t.nearbyEnemies??1,0,3);if(!Number.isInteger(x.nearbyEnemies))throw Error('Nearby enemy count must be a whole number.');
   x.hpPercent=number(t.hpPercent??100,0,100);
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
 return {db,heroes,items,options,bosses,stage,heroCap,weaponCap,slot,bestWeapon,compatible,defaultState,measured,calculate,attackList,effectRefs,effectCoverage,availableDebuffs,availableBuffs,activeBuffEffects,validate,maxProfile:clone(maxProfile)};
}
root.RaidEngine={create,growth,maxProfile};if(typeof module!=='undefined')module.exports=root.RaidEngine;
})(typeof window==='undefined'?globalThis:window);
