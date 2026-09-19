const assert=require('node:assert/strict'),fs=require('node:fs'),crypto=require('node:crypto');
const db=require('./dist/data/raid-simulator.json'),E=require('./dist/raid-engine.js').create(db);
const near=(a,b)=>assert.ok(Math.abs(a-b)<1e-8,`${a} != ${b}`);
const seq=db.attackSequences;
for(const [name,count,total] of [['GraphMyth:SuccubusNoble',3,4],['GraphMyth:LegendaryHero',4,4.5],['GraphMyth:BattleballPitcher',1,4.5],['GraphMyth:SquirrelGirl',3,4.3],['GraphMyth:MagicalGirl',6,4]]){
 assert.equal(seq[name].ticks.length,count);near(seq[name].ticks.reduce((a,b)=>a+b,0),total);
 const raw=fs.readFileSync(__dirname+'/../guardian-analysis/'+seq[name].source);assert.equal(crypto.createHash('sha256').update(raw).digest('hex'),seq[name].sha256);
 const elements=JSON.parse(JSON.parse(raw)._data._json).graph.elements;
 for(const p of seq[name].paths){assert.ok(elements.some(e=>e.$id===p.damageNode&&e.$type==='CharacterTool.ApplyDamage'));assert.ok(elements.some(e=>e.$id===p.timerNode&&e.defaultValues.Timer.$content===p.time));}
}
function setup(id){const s=E.defaultState();s.team=[E.slot(id),E.slot(),E.slot(),E.slot()];s.debuffs=[];s.activeBuffs=[];return s;}
for(const [id,extra] of [[661,.3],[20659,.45]]){
 const s=setup(id),get=n=>E.calculate(s).heroes[0].results.find(a=>a.name===n);
 assert.equal(get('GraphCombo:BattleballPitcherFirst').hits.length,1);
 assert.ok(!E.attackList(s.team[0]).some(a=>a.eventOnly&&a.name.includes('BattleballPitcher')));
 const third=get('GraphCombo:BattleballPitcherThird');assert.deepEqual(third.ticks,[.8,extra]);assert.equal(third.hits.length,2);
 assert.ok(third.hits[0].appliedAfter.some(x=>x.includes('DEF')));assert.ok(!third.hits[0].activeEffects.some(x=>x.includes('Pitcher')));assert.ok(third.hits[1].activeEffects.some(x=>x.includes('Pitcher')));
 const def0=third.hits[0].breakdown[0].defense,def1=third.hits[1].breakdown[0].defense;near(def1,def0*.8);
 const chain=get('GraphSupport:BattleballPitcher');assert.equal(chain.hits.length,3);near(chain.hits[0].breakdown[0].skillFactor,E.calculate(s).heroes[0].skill+.4);
 const buff=E.availableBuffs(s).find(b=>b.source==='BattleballPitcherChain');s.activeBuffs=[{id:buff.id,stacks:1}];near(get('GraphSupport:BattleballPitcher').total.noncrit,chain.total.noncrit);
 const ws=get('GraphTrigger:CwpBattleballPitcher');assert.equal(ws.hits.length,2);assert.ok(ws.hits.every(h=>!h.activeEffects.some(x=>x.includes('Pitcher'))));
 s.activeBuffs=[];s.debuffs=['pitcher-def'];const debuffed=get('GraphCombo:BattleballPitcherThird');near(debuffed.hits[0].breakdown[0].defense,debuffed.hits[1].breakdown[0].defense);
 s.debuffs=[];s.team[0].weapon=db.items.find(w=>w.Type==='weapon'&&w.WeaponType==='gauntlet'&&!w.ExclusiveCharacterId).Id;
 const ordinary=get('GraphCombo:BattleballPitcherThird');assert.deepEqual(ordinary.ticks,[.8]);assert.equal(ordinary.hitEffects[0].value,.1);assert.equal(get('GraphSupport:BattleballPitcher').startSkillBonus,0);
}
const r=setup(373);const attacks=E.attackList(r.team[0]);for(const a of attacks.filter(a=>a.name.startsWith('ManualRudolph:')&&!a.name.includes(' · '))){const close=attacks.find(x=>x.name.startsWith(a.name+' · EX'));assert.ok(close);assert.equal(close.ticks.length,a.ticks.length);a.ticks.forEach((v,i)=>near(close.ticks[i],v+.1));}
console.log('Passed source-linked leader sequences, Pitcher single/multi-hit paths, EX/evolution gates, within-cast debuff order, chain buff deduplication and Rudolph range alternatives.');

const rarityCases=[['ManualTankerAscent',.5],['RoleMaiden',2],['RoleChinaHeroAscent',.5]];
const roster=require('./dist/data/raid-roster-validation.json');
for(const [name,expected] of rarityCases){const l=roster.heroes.flatMap(h=>h.loadouts).find(l=>l.actions.some(a=>a.name===name)&&E.attackList({...E.slot(l.heroId),weapon:l.weapon}).find(a=>a.name===name)?.coefficient===expected);assert.ok(l,name);const slot={...E.slot(l.heroId),weapon:l.weapon};assert.equal(E.attackList(slot).find(a=>a.name===name).ticks.length,1);}
const maiden=setup(82);maiden.team[0].weapon=db.items.find(w=>w.Type==='weapon'&&w.WeaponType===E.items[maiden.team[0].weapon].WeaponType&&!w.ExclusiveCharacterId).Id;assert.equal(E.attackList(maiden.team[0]).find(a=>a.name==='RoleMaiden').noDamage,true);
console.log('Passed rare-hero direct-hit models and Loraine non-EX heal-only branch.');
