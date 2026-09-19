const fs=require('node:fs'),path=require('node:path');
const db=require('./dist/data/raid-simulator.json'),E=require('./dist/raid-engine.js').create(db);
const groups=Object.groupBy(db.heroes,h=>h.OriginId),roster=[];
for(const variants of Object.values(groups)){
 const baseRank=Math.min(...variants.map(h=>h.Rank));if(![1,2].includes(baseRank))continue;
 const top=variants.toSorted((a,b)=>b.Rank-a.Rank)[0];
 const hero={origin:top.OriginId,name:({368:"Beth"})[top.OriginId]||top.displayName,internalName:variants.map(h=>h.Class+" "+h.displayName).join(" "),rarity:baseRank===1?'Rare':'Unique',image:top.image,loadouts:[]};
 for(const h of variants){
  let weapons=db.items.filter(i=>i.Type==='weapon'&&i.ExclusiveCharacterId===h.OriginId&&E.compatible(h,i));
  if(!weapons.length)weapons=(h.CompatibleWeapons?.default||[]).map(type=>db.items.find(i=>i.Type==='weapon'&&i.WeaponType===type&&!i.ExclusiveCharacterId)).filter(Boolean);
  for(const w of weapons.length?weapons:[null]){
   const s=E.slot(h.Id);s.weapon=w?.Id||0;
   hero.loadouts.push({heroId:h.Id,stage:E.stage(h),weapon:s.weapon,weaponName:w?.Name||'No compatible weapon',options:E.effectRefs(s),actions:E.attackList(s).filter(a=>!a.name.includes(' · ')).map(a=>({name:a.name,status:a.status,validation:a.validation||null}))});
  }
 }
 roster.push(hero);
}
fs.writeFileSync(path.join(__dirname,'docs/roster-loadouts.json'),JSON.stringify(roster));
console.log('Roster:',roster.length,'heroes;',roster.reduce((n,h)=>n+h.loadouts.length,0),'stage/weapon loadouts');
