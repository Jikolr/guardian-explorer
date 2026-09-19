const assert=require('node:assert/strict');
const engine=require('./dist/raid-engine.js');
const E=engine.create(require('./dist/data/raid-simulator.json'));
const near=(a,b,t=1e-7)=>assert.ok(Math.abs(a-b)<t,`${a} != ${b}`);
const normal=s=>E.calculate(s).heroes[0].results.find(x=>x.name==='ManualSunyeo').total;
const measured=E.measured(),result=E.calculate(measured),d=result.heroes[0];
near(d.atk,648976.6917885361);
near(d.components[0].weaponAttack,6234.6386,.001);
near(d.crit,.60);near(d.critMultiplier,2.2);near(d.skill,1.912);
near(normal(measured).critical,513668.2964340853);
assert.ok(Math.abs(normal(measured).critical-513669)<1);
const clean=E.measured();clean.debuffs=[];
near(normal(measured).critical/normal(clean).critical,1.2);
const full=E.measured();full.team[1].weapon=E.bestWeapon(E.heroes[full.team[1].hero]);full.team[2].weapon=9060535;full.team[3].weapon=9050565;full.debuffs=E.availableDebuffs(full).map(x=>x.id);
near(normal(full).critical/normal(measured).critical,1000/676);
const noTower=E.measured();noTower.profile.tower=0;
near(normal(noTower).critical/normal(measured).critical,4.239/4.339);
const fire=E.measured();fire.element='Fire';fire.debuffs=[];
near(normal(fire).critical/normal(clean).critical,.7/1.3);
const basic=E.measured();basic.element='None';assert.equal(E.calculate(basic).protection,.73);
const follower=E.measured();follower.leader=1;assert.equal(E.calculate(follower).heroes[0].results.find(a=>a.kind==='weapon').unavailable,'Leader only');
const skill=d.results.find(a=>a.name==='CwpSunyeo');near(skill.hits.reduce((s,x)=>s+x.noncrit,0),skill.total.noncrit);near(skill.hits[0].noncrit/skill.total.noncrit,.4);near(skill.total.noncrit,696857.672927341);
assert.deepEqual(E.validate(JSON.parse(JSON.stringify(measured))),measured);
const relic=E.measured();relic.team[0].relic=190020;relic.team[0].relicOptions=[{OptionId:900005,Level:70},{OptionId:0,Level:0}];assert.deepEqual(E.validate(relic),relic);assert.ok(normal(relic).critical>normal(measured).critical);
const malformed=E.measured();malformed.team[0].hero=999999;assert.throws(()=>E.validate(malformed));
const duplicate=E.measured();duplicate.team[1]=structuredClone(duplicate.team[0]);assert.throws(()=>E.validate(duplicate));
const invalid=E.measured();invalid.profile.tower=NaN;assert.throws(()=>E.validate(invalid));
const wrongRelic=structuredClone(relic);wrongRelic.team[0].relicOptions[0].OptionId=36;assert.throws(()=>E.validate(wrongRelic));
const mastery=E.measured();mastery.profile.mastery.rangedAtk=0;assert.ok(normal(mastery).critical<normal(measured).critical);
const lower=E.measured();lower.team[0]=E.slot(596);assert.ok(E.calculate(lower).heroes[0].atk<d.atk);assert.ok(!E.calculate(lower).heroes[0].results.some(a=>a.kind==='leader'));
let attacks=0,estimates=0,unresolved=0;
for(const h of E.db.heroes){
 const s=E.defaultState();s.team=[E.slot(h.Id),E.slot(),E.slot(),E.slot()];
 const r=E.calculate(s);assert.ok(Number.isFinite(r.heroes[0].atk));
 for(const a of r.heroes[0].results){attacks++;if(a.status==='unresolved')unresolved++;if(a.status==='estimate')estimates++;if(a.total)for(const v of Object.values(a.total))assert.ok(Number.isFinite(v)&&v>=0,`${h.Id} ${a.name}`);}
}
console.log(`Passed: measured hit, skill ticks, debuff stacking, bonus groups, element/protection, leader gating, profiles, relics, invalid imports, evolution, and ${E.db.heroes.length} hero stages. ${attacks} mapped action entries (${estimates} estimates, ${unresolved} unresolved).`);

// Temporary buffs are opt-in, scoped, stage/equipment-dependent and persisted.
const temp=E.measured(),chain=E.availableBuffs(temp).find(b=>b.name==='buff_sunyeo_support');
assert.ok(chain);assert.equal(chain.scope,'Party');
temp.activeBuffs=[{id:chain.id,scope:'Party',stacks:1}];
near(normal(temp).critical/normal(measured).critical,1.7/1.5);
near(E.calculate(temp).heroes[0].atk,d.atk);
assert.deepEqual(E.validate(JSON.parse(JSON.stringify(temp))),temp);
const legacy=E.measured();delete legacy.activeBuffs;assert.deepEqual(E.validate(legacy).activeBuffs,[]);
const tempLeader=E.availableBuffs(temp).find(b=>b.trigger==='Leader skill');
temp.activeBuffs=[{id:tempLeader.id,scope:'Party',stacks:1}];temp.leader=2;
assert.ok(!E.availableBuffs(temp).some(b=>b.id===tempLeader.id));
near(normal(temp).critical,normal(measured).critical);
const equipped=E.defaultState(),activeList=E.availableBuffs(equipped);
const eunha=activeList.find(b=>b.name==='buff_dokkaebi_myth_special_option');
assert.equal(eunha.maxStacks,10);assert.equal(eunha.value,.03);
equipped.activeBuffs=[{id:eunha.id,scope:'Party',stacks:10}];
near(normal(equipped).critical/normal(E.defaultState()).critical,1.8/1.5);
const ameris=activeList.find(b=>b.name==='buff_dragon_daughter_weapon_1');
equipped.activeBuffs=[{id:ameris.id,scope:'Party',stacks:3}];
near(E.calculate(equipped).heroes[0].critMultiplier,2.8);
equipped.team[1].weapon=0;assert.ok(!E.availableBuffs(equipped).some(b=>b.id===ameris.id));
near(E.calculate(equipped).heroes[0].critMultiplier,2.2);
const restricted=E.defaultState(),basicBuff=E.availableBuffs(restricted).find(b=>b.recipientElement==='None');
assert.ok(basicBuff);restricted.activeBuffs=[{id:basicBuff.id,scope:'Party',stacks:1}];
near(E.calculate(restricted).heroes[0].critMultiplier,2.2);
near(E.calculate(restricted).heroes[3].critMultiplier,2.7);
restricted.team[3].weapon=9050565;assert.ok(!E.availableBuffs(restricted).some(b=>b.id===basicBuff.id));
const doubled=E.measured();doubled.activeBuffs=[{id:chain.id,scope:'Party',stacks:1},{id:chain.id,scope:'Party',stacks:1}];
near(normal(doubled).critical/normal(measured).critical,1.7/1.5);
const badStacks=E.defaultState();badStacks.activeBuffs=[{id:eunha.id,scope:'Party',stacks:11}];assert.throws(()=>E.validate(badStacks));
console.log('Passed: temporary party bonuses, stack limits, group deduplication, recipient elements, leader/EX eligibility, legacy saves and buff round-trip.');

// Corrections supplied by the user and newly traced attack branches.
assert.equal(E.maxProfile.illustration,2.2);
const noMythHero=E.db.heroes.find(h=>E.heroCap(h)===130&&E.bestWeapon(h));
assert.ok(noMythHero);assert.equal(E.slot(noMythHero.Id).level,130);
assert.equal(E.slot(noMythHero.Id).weaponLevel,130);
const legacyCap=E.defaultState();legacyCap.team[0]=E.slot(noMythHero.Id);legacyCap.team[0].level=150;legacyCap.team[0].weaponLevel=150;
const correctedCap=E.validate(legacyCap);assert.equal(correctedCap.team[0].level,130);assert.equal(correctedCap.team[0].weaponLevel,130);
near(E.calculate(legacyCap).heroes[0].atk,E.calculate(correctedCap).heroes[0].atk);
const dabinActions=E.attackList(E.measured().team[0]);
assert.ok(dabinActions.find(a=>a.name==='RoleSunyeo').noDamage);
const loaded=dabinActions.find(a=>a.name==='Dabin loaded shot · direct target');assert.ok(loaded.coefficient>0);
const knightHero=E.db.heroes.find(h=>E.attackList(E.slot(h.Id)).some(a=>a.name==='ManualKnight:Fourth'));
const knightStep=E.attackList(E.slot(knightHero.Id)).find(a=>a.name==='ManualKnight:Fourth');assert.equal(knightStep.ticks.length,3);near(knightStep.ticks.reduce((a,b)=>a+b,0),.2333);
console.log('Passed: 2.2% preset, non-Myth hero/EX caps, legacy level migration, Dabin role/loaded shot and Knight multi-hit split.');

// Every cast starts from the selected target state; a landed hit can alter later hits.
const timingTeam=E.defaultState();timingTeam.team=[20368,20641,406,20698].map(id=>E.slot(id));timingTeam.debuffs=[];
const bethWave=st=>E.calculate(st).heroes[0].results.find(a=>a.name==='ManualInvaderKnight:Wave');
const freshWave=bethWave(timingTeam);assert.equal(freshWave.hits.length,3);freshWave.ticks.forEach(k=>near(k,.2));
near(freshWave.timings[0],.2);near(freshWave.timings[2],.4);
near(freshWave.hits[1].noncrit/freshWave.hits[0].noncrit,1.3);near(freshWave.hits[2].noncrit,freshWave.hits[1].noncrit);
assert.ok(freshWave.hits[0].appliedAfter.some(x=>x.includes('Beth')));
assert.ok(!freshWave.hits[0].activeEffects.some(x=>x.includes('Beth')));
near(freshWave.total.noncrit,freshWave.hits.reduce((n,h)=>n+h.noncrit,0));
const preDebuffed=structuredClone(timingTeam);preDebuffed.debuffs=['beth-dark'];const preWave=bethWave(preDebuffed);
near(preWave.hits[0].noncrit,freshWave.hits[1].noncrit);near(preWave.hits[0].noncrit,preWave.hits[2].noncrit);
assert.equal(preWave.hits[0].appliedAfter.length,0);
const offEx=structuredClone(timingTeam);offEx.team[0].weapon=E.db.items.find(i=>i.WeaponType==='twohandsword'&&!i.ExclusiveCharacterId).Id;
const offWave=bethWave(offEx);assert.equal(offWave.hitEffects.length,0);near(offWave.hits[0].noncrit,offWave.hits[1].noncrit);
const driverActions=E.attackList(timingTeam.team[3]);const driverLead=driverActions.find(a=>a.name==='GraphMyth:BridgeDriver');assert.equal(driverLead.ticks.length,3);near(driverLead.coefficient,4.5);
const driverWs=driverActions.find(a=>a.name==='GraphTrigger:CwpBridgeDriver');near(driverWs.ticks[0]/driverWs.coefficient,.4);near(driverWs.ticks[1]/driverWs.coefficient,.6);
assert.equal(E.attackList(timingTeam.team[0]).find(a=>a.name==='CwpInvaderKnight').ticks.length,4);
assert.equal(E.attackList(timingTeam.team[2]).find(a=>a.name==='CwpDemonCeo').ticks.length,2);
console.log('Passed: Beth before/after-hit debuff, initial debuff deduplication, EX gating, per-hit totals, and teammate graph/weapon sequences.');

// User measurement: Water Invader Terrorist, first wave, only Beth EX equipped.
const bethMeasured=E.defaultState();bethMeasured.team=[20368,20641,406,20698].map(id=>E.slot(id));bethMeasured.team.slice(1).forEach(t=>t.weapon=0);bethMeasured.boss=790185;bethMeasured.element='Ice';bethMeasured.profile.mastery.meleeAtk=49;bethMeasured.debuffs=[];
const bethOutput=E.calculate(bethMeasured).heroes[0],measuredWave=bethOutput.results.find(a=>a.name==='ManualInvaderKnight:Wave');
const predictedTicks=[measuredWave.hits[0].critical,measuredWave.hits[1].noncrit,measuredWave.hits[2].critical];
[39871,23560,51833].forEach((observed,i)=>assert.ok(Math.abs(predictedTicks[i]-observed)<1,'Beth measured tick '+i));
const outsideRange=structuredClone(bethMeasured);outsideRange.team[0].nearbyEnemies=0;const outsideOutput=E.calculate(outsideRange).heroes[0];
near(bethOutput.atk,outsideOutput.atk);near(bethOutput.uiDps,outsideOutput.uiDps);
near(measuredWave.hits[0].noncrit/outsideOutput.results.find(a=>a.name==='ManualInvaderKnight:Wave').hits[0].noncrit,1.2);
const threeEnemies=structuredClone(bethMeasured);threeEnemies.team[0].nearbyEnemies=3;
near(bethWave(threeEnemies).hits[0].noncrit/bethWave(outsideRange).hits[0].noncrit,1.6);
assert.equal(E.validate(bethMeasured).team[0].nearbyEnemies,1);
const oldProximity=structuredClone(bethMeasured);delete oldProximity.team[0].nearbyEnemies;assert.equal(E.validate(oldProximity).team[0].nearbyEnemies,1);
console.log('Passed: Beth measured critical/normal/critical ticks within 1 damage, proximity range/cap and unchanged prepared ATK/UI DPS.');

// Native damage options are separate from prepared ATK and displayed DPS.
const firstDamage=v=>v.results.find(a=>a.total)?.total.noncrit;
const garam=E.defaultState();garam.team=[E.slot(367),E.slot(),E.slot(),E.slot()];garam.debuffs=[];
const garamOut=E.calculate(garam).heroes[0];near(garamOut.e.damageMultiplier,1.2);
const noPassiveDb=structuredClone(E.db);noPassiveDb.options.find(o=>o.Id===320365).Modifier=0;
const noPassive=require('./dist/raid-engine.js').create(noPassiveDb).calculate(garam).heroes[0];
near(garamOut.atk,noPassive.atk);near(garamOut.uiDps,noPassive.uiDps);near(firstDamage(garamOut)/firstDamage(noPassive),1.2);
const basket=E.db.items.find(i=>i.Type==='weapon'&&i.WeaponType==='basket');garam.team[0].weapon=basket.Id;
near(E.calculate(garam).heroes[0].e.damageMultiplier,1);
for(const hero of [159,84,460,475,478]){
 const st=E.defaultState();st.team=[E.slot(hero),E.slot(),E.slot(),E.slot()];st.debuffs=[];
 const buff=E.availableBuffs(st).find(b=>b.key==='damageMultiplier');assert.ok(buff,'Native window for '+hero);
 const before=E.calculate(st).heroes[0];st.activeBuffs=[{id:buff.id,scope:'Self',stacks:1}];
 const after=E.calculate(st).heroes[0];near(after.atk,before.atk);near(after.uiDps,before.uiDps);
 near(after.e.damageMultiplier/before.e.damageMultiplier,1+buff.value);
 if(firstDamage(before)>0)near(firstDamage(after)/firstDamage(before),1+buff.value);
 assert.equal(E.validate(st).activeBuffs[0].id,buff.id);
 st.activeBuffs.push({...st.activeBuffs[0]});near(E.calculate(st).heroes[0].e.damageMultiplier,after.e.damageMultiplier);
 st.team[0]=E.slot(20596);assert.ok(!E.availableBuffs(st).some(b=>b.id===buff.id));
}
assert.ok(E.effectCoverage(E.slot(20596)).some(o=>o.status==='Partial action model'));
assert.ok(E.calculate(E.measured()).heroes[0].warnings.some(w=>w.includes('BattleActionParameter')));
console.log('Passed: Garam weapon gating, native conditional windows, unchanged ATK/UI DPS, no duplicate stacking, save validation and explicit partial script coverage.');
for(const [id,full,half,low] of [[99,1,1.5,1.5],[454,1.3,1.15,1.03],[475,1.1,1.1,1.1]]){
 const st=E.defaultState();st.team=[E.slot(id),E.slot(),E.slot(),E.slot()];st.debuffs=[];
 const baseline=E.calculate(st).heroes[0];near(baseline.e.damageMultiplier,full);
 for(const [hp,value] of [[50,half],[10,low]]){
  st.team[0].hpPercent=hp;const out=E.calculate(st).heroes[0];near(out.e.damageMultiplier,value);near(out.atk,baseline.atk);near(out.uiDps,baseline.uiDps);
  assert.equal(E.validate(st).team[0].hpPercent,hp);
 }
 st.team[0].hpPercent=101;assert.throws(()=>E.validate(st));
 delete st.team[0].hpPercent;assert.equal(E.validate(st).team[0].hpPercent,100);
}
const shieldDb=structuredClone(E.db),gHero=shieldDb.heroes.find(h=>h.Id===367);
gHero.Options.push({OptionId:3103531,Level:1});
const shieldOption=shieldDb.options.find(o=>o.Id===3103531);delete shieldOption.CharacterOriginIds;delete shieldOption.ConditionType;
const shieldE=engine.create(shieldDb),shieldState=shieldE.defaultState();shieldState.team=[shieldE.slot(367),shieldE.slot(),shieldE.slot(),shieldE.slot()];
const unshielded=shieldE.calculate(shieldState).heroes[0];shieldState.team[0].shield=shieldE.db.items.find(i=>String(i.WeaponType).toLowerCase()==='shield').Id;
near(shieldE.calculate(shieldState).heroes[0].e.damageMultiplier/unshielded.e.damageMultiplier,1.2);
console.log('Passed: HP passive boundaries, full-health legacy default, independent damage factors and secondary shield weapon-type matching.');

// Source-validated Darkness-team components (see validate_team_sources.py).
const darkTeam=E.defaultState();darkTeam.team=[20368,20641,406,20698].map(id=>E.slot(id));darkTeam.debuffs=[];
let darkOut=E.calculate(darkTeam);near(darkOut.heroes[1].e.damageMultiplier,1.3);
const fewerDark=structuredClone(darkTeam);fewerDark.team[3]=E.slot();near(E.calculate(fewerDark).heroes[1].e.damageMultiplier,1.2);
const soloWrestler=structuredClone(darkTeam);soloWrestler.team=[E.slot(),E.slot(20641),E.slot(),E.slot()];near(E.calculate(soloWrestler).heroes[0].e.damageMultiplier,1);
const baseWrestler=E.db.heroes.find(h=>h.OriginId===641&&h.Rank!==6&&(h.Options||[]).some(r=>r.OptionId===320641));assert.ok(baseWrestler);
const baseDark=structuredClone(darkTeam);baseDark.team[1]=E.slot(baseWrestler.Id);near(E.calculate(baseDark).heroes[1].e.damageMultiplier,1.15);
for(const [name,ticks] of [['First',[.5]],['Second',[.5]],['Thrid',[.35,.35]],['Fourth',[.4,.4]]]){
 const a=darkOut.heroes[2].results.find(a=>a.name==='ManualDemonCeo:'+name);assert.deepEqual(a.ticks,ticks);assert.ok(a.validation);
}
const wChain=darkOut.heroes[1].results.find(a=>a.name==='GraphSupport:Wrestler');near(wChain.coefficient,3.3);assert.ok(wChain.note.includes('static Myth description says 3.5'));
near(darkOut.heroes[3].results.find(a=>a.name==='GraphRole:BridgeDriver').coefficient,.6);
const bethChain=darkOut.heroes[0].results.find(a=>a.name==='BasicSupport:InvaderKnight');assert.deepEqual(bethChain.ticks,[.4,.4,.4,3]);assert.equal(bethChain.timings.length,4);
const wrestlerHit=st=>E.calculate(st).heroes.find(h=>h.h.OriginId===641).results.find(a=>a.name==='GraphCombo:WrestlerFirst').hits[0];
const freshW=wrestlerHit(darkTeam);assert.equal(freshW.activeEffects.length,0);assert.ok(freshW.appliedAfter.some(x=>x.includes('1/5')));
const stacked=structuredClone(darkTeam),stack=E.availableBuffs(stacked).find(b=>b.source==='WrestlerEX-stacks');stacked.activeBuffs=[{id:stack.id,stacks:4,scope:'Self'}];
const fifth=wrestlerHit(stacked);assert.ok(fifth.appliedAfter.some(x=>x.includes('5/5')));assert.ok(fifth.appliedAfter.some(x=>x.includes('critical damage')));
near(fifth.critical/fifth.noncrit,freshW.critical/freshW.noncrit); // Newly earned critical buff cannot boost this hit.
const preW=structuredClone(darkTeam);preW.debuffs=['data-641-3206414'];assert.ok(wrestlerHit(preW).noncrit>freshW.noncrit);
const unarmedW=structuredClone(darkTeam);unarmedW.team[1].weapon=0;assert.ok(!E.availableBuffs(unarmedW).some(b=>b.source.startsWith('WrestlerEX')));
console.log('Passed: Wrestler own-only elemental passive and Myth gate, post-hit EX stack/crit windows, fresh-boss debuff timing, Demon CEO sequences, Beth chain, and graph-over-description coefficients.');
