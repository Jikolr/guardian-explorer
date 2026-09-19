/* Rebuild the complete catalogue audit. Source discovery is not formula verification. */
const fs=require('node:fs'),path=require('node:path');
const root=__dirname,db=require('./dist/data/raid-simulator.json');
const E=require('./dist/raid-engine.js').create(db);
const hitAudit=require('./dist/data/raid-hit-audit.json');
const byAction=new Map(hitAudit.actions.map(a=>[a.name,a]));
function walk(dir){return fs.existsSync(dir)?fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]):[];}
const scripts=walk(path.join(root,'../guardian-analysis/decoded-scripts/Battle')).filter(p=>p.endsWith('.lua')).map(p=>({path:path.relative(path.join(root,'../guardian-analysis'),p).replaceAll('\\','/'),text:fs.readFileSync(p,'utf8')}));
const optionIds=new Set();
function refs(rows){for(const r of rows||[])if(r.OptionId)optionIds.add(r.OptionId);}
const heroes=db.heroes.map(h=>{
 const slot=E.slot(h.Id);refs(E.effectRefs(slot));
 const actions=E.attackList(slot).map(a=>{
  const evidence=byAction.get(a.name);
  return {name:a.name,kind:a.kind,status:a.status,coefficient:a.coefficient,ticks:a.ticks?.length||null,note:a.note,lua:evidence?.lua,graph:evidence?.graph,missingGraph:evidence?.missingGraph};
 });
 return {id:h.Id,name:h.displayName,internalName:h.Name,stage:E.stage(h),defaultWeapon:slot.weapon,coverage:E.effectCoverage(slot),actions};
});
const equipment=db.items.map(i=>{
 const optionRefs=[...i.Options||[],...i.StaticOptions||[],...i.EngraveStaticOptions||[],...i.EngraveRandomOptions||[],...i.SetOption||[],...(i.RandomOptions||[]).flat()];refs(optionRefs);
 return {id:i.Id,name:i.Name,type:i.Type,exclusiveHero:i.ExclusiveCharacterId,weaponSkill:i.SuperBattleAction,options:optionRefs};
});
// Include referenced evolution overrides even when no default loadout selects them.
for(const a of db.actions)for(const k of ['MythOptionId','AscentOptionId'])if(a[k])optionIds.add(a[k]);
for(const id of optionIds){const o=E.options[id];if(o)for(const k of ['MythOptionId','AscentOptionId'])if(o[k])optionIds.add(o[k]);}
const options=[...optionIds].sort((a,b)=>a-b).map(id=>{
 const o=E.options[id];if(!o)return {id,status:'missing record'};
 const candidates=scripts.filter(s=>s.text.includes(String(id))||s.text.includes(o.Name)).map(s=>({path:s.path,lines:s.text.split(/\r?\n/).flatMap((l,n)=>l.includes(String(id))||l.includes(o.Name)?[{line:n+1,text:l.trim()}]:[])}));
 return {id,name:o.Name,class:o.Class,record:o,scriptCandidates:candidates};
});
const result={snapshot:db.snapshot,scope:'All simulator hero stages, all equipment records, option references, default-EX actions and candidate Lua/graph sources. Inventory only: source matches do not prove a complete executable model.',counts:{heroStages:heroes.length,equipment:equipment.length,options:options.length,luaFilesScanned:scripts.length,actionRecords:db.actions.length},heroes,equipment,options};
fs.writeFileSync(path.join(root,'dist/data/raid-effects-audit.json'),JSON.stringify(result));
console.log(JSON.stringify(result.counts));
