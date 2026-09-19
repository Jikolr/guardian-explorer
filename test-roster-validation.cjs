const assert=require('node:assert/strict'),fs=require('node:fs'),path=require('node:path'),crypto=require('node:crypto');
const engine=require('./dist/raid-engine.js'),db=require('./dist/data/raid-simulator.json'),report=require('./dist/data/raid-roster-validation.json'),E=engine.create(db);
const near=(a,b)=>assert.ok(Math.abs(a-b)<1e-8,`${a} != ${b}`);
assert.equal(report.counts.uniqueHeroes,121);assert.equal(report.counts.rareHeroes,32);
assert.equal(new Set(report.heroes.map(h=>h.origin)).size,153);
for(const [name,s] of Object.entries(report.sources)){
 const bytes=fs.readFileSync(path.join(__dirname,'../guardian-analysis',name));
 assert.equal(crypto.createHash('sha256').update(bytes).digest('hex'),s.sha256,'Changed source: '+name);
}
let cases=0,events=0;
for(const hero of report.heroes)for(const loadout of hero.loadouts){
 const s=E.defaultState();s.team=[E.slot(loadout.heroId),E.slot(),E.slot(),E.slot()];s.team[0].weapon=loadout.weapon;s.debuffs=[];
 const out=E.calculate(s).heroes[0];assert.ok(Number.isFinite(out.atk));
 for(const a of out.results){
  if(a.total)for(const v of Object.values(a.total))assert.ok(Number.isFinite(v)&&v>=0,hero.name+' '+a.name);
  if(a.eventOnly){events++;assert.equal(a.hits.length,1);assert.ok(a.validation.includes('cast total unresolved'));assert.ok(a.note.includes('not a full attack'));}
 }
 cases++;
}
assert.equal(cases,858);assert.ok(events>0);
for(const [hero,expected] of [[502,1.1],[517,1.15]]){
 const s=E.defaultState();s.team=[E.slot(hero),E.slot(),E.slot(),E.slot()];near(E.calculate(s).heroes[0].e.damageMultiplier,expected);
}
const myth=E.defaultState();myth.team=[E.slot(20515),E.slot(),E.slot(),E.slot()];
const mythSpec=E.options[E.options[320515].MythOptionId];near(E.calculate(myth).heroes[0].e.damageMultiplier,1+mythSpec.DamageModifier);
const yoon=E.defaultState();yoon.team[0]=E.slot(589);near(E.calculate(yoon).heroes[0].e.damageMultiplier,1.3);
yoon.team=yoon.team.map((s,i)=>i?E.slot():s);near(E.calculate(yoon).heroes[0].e.damageMultiplier,1.1);
const forest=E.defaultState();forest.team[0]=E.slot(583);const partyBuffs=E.availableBuffs(forest).filter(b=>b.source==='ForestElfSpecialOption');assert.equal(partyBuffs.length,2);assert.ok(partyBuffs.every(b=>b.scope==='Party'));
const normalBuff=partyBuffs.find(b=>b.key==='normal');assert.equal(normalBuff.value,0.15);assert.equal(normalBuff.maxStacks,2);
forest.activeBuffs=[{id:normalBuff.id,stacks:2}];near(E.activeBuffEffects(forest,1).find(b=>b.key==='normal').value,0.3);
forest.team[0].weapon=E.db.items.find(i=>i.Type==='weapon'&&E.compatible(E.heroes[583],i)&&!i.ExclusiveCharacterId).Id;
const selfBuffs=E.availableBuffs(forest).filter(b=>b.source==='ForestElfSpecialOption');assert.equal(selfBuffs.length,2);assert.ok(selfBuffs.every(b=>b.scope==='Self'));
forest.activeBuffs=[{id:selfBuffs.find(b=>b.key==='normal').id,stacks:2}];assert.equal(E.activeBuffEffects(forest,1).length,0);
const targetDb=structuredClone(db);targetDb.bosses.find(b=>b.Id===790035).CoopClass='tanker';
const targetE=engine.create(targetDb),crocell=targetE.defaultState();crocell.team=[targetE.slot(487),targetE.slot(),targetE.slot(),targetE.slot()];
assert.ok(targetE.calculate(crocell).heroes[0].e.damageMultiplier>1);assert.ok(E.calculate(crocell).heroes[0].warnings.some(w=>w.includes('combat class is absent')));
console.log(`Passed ${cases} loadouts, ${events} event previews, ${Object.keys(report.sources).length} source fingerprints, passive evolution/party/EX conditions and unresolved target-class handling.`);
