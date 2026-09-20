'use strict';
(async () => {
 const $=s=>document.querySelector(s), esc=s=>String(s??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
 const num=n=>Number(n||0).toLocaleString('es-ES',{useGrouping:'always',maximumFractionDigits:6}), link=(t,id)=>`index.html?table=${t}&record=${id}#${t}`;
 const picture=(path,name)=>path?`<img src="data/visual/${esc(path)}" alt="${esc(name)}">`:`<span class="image-fallback">${esc(name)}</span>`;

 function scaledStats(s, floor, options = []) {
  const f32=Math.fround, level=floor.StandardLevel, growth=Number(s.StatGrowthRate);
  if(!Number.isInteger(level)||level<0||!Number.isFinite(growth)||growth<=0||
     ![s.Hp,s.Atk,s.Def].every(v=>typeof v==='number'&&Number.isFinite(v)))return null;
  const g=f32(growth), hp=f32(f32(s.Hp)*f32(f32(g*g)**level));
  const factor=f32(g**level);
  const verified=options.length===1&&[200022,200010].includes(options[0].OptionId)&&options[0].Level===1;
  const parameters={200001:[1.5,0.25],200021:[1.5,0.25],200022:[1.5,0.25],200010:[2.75,0.375]};
  // Mortar ATK/DEF defaults are a user-requested extrapolation, not source parameters.
  const attackParameters={200001:[0.3,0.05],200021:[0.3,0.05],200022:[0.3,0.05],200010:[0.5,0.05]};
  const quantize=q=>q===0?0:Math.ceil(q*10-1e-9)/10;
  let bonus=0,attackBonus=0,unknown=false,combatUnknown=false;
  for(const option of options){
   const p=parameters[option.OptionId];
   if(!p||!Number.isInteger(option.Level)||option.Level<0){unknown=true;combatUnknown=true;continue;}
   // Shared quantization is a working hypothesis, not recovered runtime constants.
   bonus+=quantize(p[0]+p[1]*option.Level);
   const a=attackParameters[option.OptionId];
   if(a)attackBonus+=quantize(a[0]+a[1]*option.Level);
   else combatUnknown=true;
  }
  const hpMultiplier=1+bonus;
  const atkMultiplier=1+attackBonus,defMultiplier=1;
  return {level:level+1,hp:Math.trunc(f32(hp*f32(hpMultiplier))),hpMultiplier,atkMultiplier,defMultiplier,
   atk:f32(f32(f32(s.Atk)*factor)*f32(atkMultiplier)),def:f32(f32(s.Def)*factor),
   combatElite:combatUnknown?'incomplete':options.length?'estimated':'none',
   mortarParametersAssumed:options.some(o=>o.OptionId===200001),
   elite:verified?'verified':unknown?'unverified':options.length?'estimated':'none'};
 }
 const statNumber=n=>Number(n).toLocaleString('es-ES',{useGrouping:'always',maximumFractionDigits:2});
 function statsMarkup(s,f,m){
  const v=scaledStats(s,f,m.Options||[]);
  if(!v)return '<p class="fine">Level-scaled stats unavailable: missing source values.</p>';
  const hpLabel=v.elite==='unverified'?'HP (unknown modifiers excluded)':'HP';
  return '<p class="position"><strong>Level '+v.level+' · '+hpLabel+' '+statNumber(v.hp)+
   ' · ATK '+statNumber(v.atk)+' · DEF '+statNumber(v.def)+'</strong></p>'+
   '<p class="fine">'+(v.elite==='none'?'':'Elite multipliers: HP ×'+statNumber(v.hpMultiplier)+' / ATK ×'+statNumber(v.atkMultiplier)+' / DEF ×'+statNumber(v.defMultiplier)+'. ')+
   (v.combatElite==='incomplete'?'Unknown option modifiers excluded. ':'')+
   'ATK / DEF include level scaling but exclude equipment and other buffs.</p>';
 }
 window.orbitalStatScaling={calculate:scaledStats};

 function weaponStats(item,level,scales){
  if(!item||!Number.isInteger(level)||level<0)return null;
  const growth=item.StatGrowthRate,scale=item.LevelScale?scales[level]:1;
  if(!Number.isFinite(growth)||!Number.isFinite(scale)||item.UseAlterStats)return null;
  const f=Math.fround,factor=f(f(growth)**level);
  const calc=value=>Number.isFinite(value)?f(f(f(value)*f(scale))*factor):null;
  return {internalLevel:level,level:level+1,growth,scale,growthFactor:factor,attack:calc(item.Damage),defense:calc(item.Defense),assumption:'Weapon internal level = floor StandardLevel; equipment component only, not final damage.'};
 }
 let equipment={items:{},scales:{}},equipmentError=false;
 function weaponMarkup(s,f){
  const slots=['DefaultWeapon1'].filter(k=>s[k]>0);
  if(!slots.length)return '<p class="fine">No default weapon assigned.</p>';
  return slots.map(slot=>{
   const id=s[slot],item=equipment.items[id],v=weaponStats(item,f.StandardLevel,equipment.scales);
   if(!item)return `<p class="fine">Weapon: <a href="${link('static-items',id)}">Item ${id} →</a> · ${equipmentError?'Weapon data unavailable':'Record unavailable'}</p>`;
   return `<details class="weapon-details"><summary>${equipment.media?.[id]?.image?'<span class="weapon-icon">'+picture(equipment.media[id].image,item.Name)+'</span>':''}<strong>Weapon: ${esc(item.Name)}</strong></summary><p>${v&&v.attack!==null?'Weapon ATK '+statNumber(v.attack):''}${v&&v.defense!==null?'Equipment DEF '+statNumber(v.defense):''}${!v?'Scaled stats unavailable':''} · <a href="${link('static-items',id)}">Item ${id} →</a></p><p class="fine">${Number.isFinite(item.Damage)?'Base Damage '+num(item.Damage):'Base DEF '+num(item.Defense)} · Growth ×${num(item.StatGrowthRate)} per level${v?' · Growth factor ×'+num(v.growthFactor)+' · Level-scale factor ×'+num(v.scale):''}</p><details><summary>Calculation & source</summary><p class="fine">Weapon level assumed equal to monster level (${f.StandardLevel+1}); internal exponent ${f.StandardLevel}. Base × growth^${f.StandardLevel} × level-scale factor. Separate equipment component: not added to the displayed monster ATK/DEF; excludes elite bonuses, options and final damage calculations.</p><pre>${esc(JSON.stringify(item,null,2))}</pre><a href="${link('static-itemlevelscalefactor',f.StandardLevel)}">Level-scale source →</a></details></details>`;
  }).join('');
 }
 window.orbitalWeaponScaling={calculate:weaponStats};
 let debuffData={enemies:{}},debuffError=false;
 function debuffMarkup(s){
  const entries=debuffData.enemies[s.Id]||[];
  if(!entries.length)return `<p class="fine">${debuffError?'Debuff data unavailable.':'No directly linked stat debuff found in this scan; other effects may exist.'}</p>`;
  const labels={SymbolDefenseScale:'DEF reduction',DefenseScale:'DEF reduction',MeleeDefenseScale:'Melee DEF reduction',ProjectileDefenseScale:'Ranged DEF reduction',TotalAttackScale:'ATK reduction',SymbolAttackScale:'ATK reduction',DamageResistance:'Resistance reduction'};
  return `<details class="enemy-debuffs"><summary><strong>Enemy debuffs (${entries.length})</strong></summary><p class="fine">Referenced by this tower variant’s actions, not weapon properties. Combat activation and final magnitude are not verified. Script/projectile-only effects may be missing.</p>${entries.map(e=>{const b=e.record;return `<section><p><strong>${esc(b.Elemental?b.Elemental+' resistance reduction':labels[b.ClassName]||b.ClassName)}</strong> · ${Number.isFinite(b.Duration)?num(b.Duration)+' s':'Duration unspecified'}${b.StackCap?' · Stack cap '+num(b.StackCap):''}</p><p class="fine">Source parameters: ${Object.entries(b).filter(([k,v])=>typeof v==='number'&&/^(AttackScale|DefenseScale|Resistance)(Base|Add)$/.test(k)).map(([k,v])=>esc(k)+' = '+num(v)).join(' · ')}</p><details><summary>Action references & source</summary>${e.references.map(r=>`<p class="fine"><a href="${link('static-battlestyles',r.styleId)}">Tower battle style →</a> · <a href="${link('static-battleactions',r.actionId)}">${esc(r.action)} →</a> · ${esc(r.field)}${r.level!==null?' · Buff level '+r.level:' · Buff level not specified in this reference'}</p>`).join('')}<a href="${link('static-buffs',e.id)}">${esc(b.Name)} · Buff ${e.id} →</a><pre>${esc(JSON.stringify(b,null,2))}</pre></details></section>`;}).join('')}</details>`;
 }
 let db,current,filtered=[];
 function show(f){
  current=f;$('#floor-view').hidden=false;$('#floor-number').value=$('#floor-list').value=f.Floor;
  $('#floor-title').textContent='Floor '+num(f.Floor);$('#floor-meta').textContent=`${f.FloorType} · Monster level ${f.StandardLevel+1} · JSON level ${f.StandardLevel} · ${f.Monsters.length} enemies`;
  document.title=`Orbital Lift · Floor ${f.Floor} · Guardian Atlas`;history.replaceState(null,'',location.pathname+'?floor='+f.Floor);
  $('#previous').disabled=filtered.indexOf(f)<=0;$('#next').disabled=filtered.indexOf(f)>=filtered.length-1;
  const slots=new Map(Array.from({length:20},(_,i)=>[i+1,[]]));
  f.Monsters.forEach((m,i)=>{if(!slots.has(m.Position))slots.set(m.Position,[]);slots.get(m.Position).push({m,i});});
  $('#formation').innerHTML=[...slots].sort((a,b)=>a[0]-b[0]).map(([p,entries])=>`<div class="position-cell"><span class="slot-label">P${p}</span>${entries.length?`<div class="slot-enemies" style="--occupants:${entries.length}">${entries.map(({m,i})=>{const e=db.enemies[m.MonsterId];return `<button class="tile ${m.Options?.length?'option':''}" data-enemy="${i}" aria-label="Position ${p}: ${esc(e.name)}" title="${esc(e.name)}">${picture(e.image,e.name)}${m.Options?.length?'<span class="option-marker">★</span>':''}</button>`;}).join('')}</div>`:'<span class="empty-marker">◇</span>'}</div>`).join('');
  $('#formation-count').textContent=`${f.Monsters.length} of ${f.Monsters.length} enemies shown · select a portrait for details`;
  $('#enemies').innerHTML=f.Monsters.map((m,i)=>{const e=db.enemies[m.MonsterId],s=e.spec;return `<article class="enemy" id="enemy-${i}" data-enemy="${i}">${picture(e.image,e.name)}<div><h3>${esc(e.name)}</h3><p class="position">Position ${m.Position} · ${esc(s.ElementalType||'Unknown')} · ${esc(e.tower.Class)} / ${esc(e.tower.CoopClass)}</p><p class="fine">${esc(s.Name)} · Spec ${e.tower.SpecId}</p>${statsMarkup(s,f,m)}${weaponMarkup(s,f)}${debuffMarkup(s)}<p>Source base HP ${num(s.Hp)} · ATK ${num(s.Atk)} · DEF ${num(s.Def)} · Mass ${num(s.Mass)}</p>${(m.Options||[]).map(o=>{const op=db.options[o.OptionId]||{};return `<details><summary class="tag">Stage option: ${esc(String(op.Name||o.OptionId).replaceAll('_',' '))} · Lv ${o.Level}</summary><pre>${esc(JSON.stringify(op,null,2))}</pre><a href="${link('static-options',o.OptionId)}">Option source →</a></details>`;}).join('')}<a href="${link('monsters',e.tower.SpecId)}">Enemy record →</a></div></article>`;}).join('')||`<p class="floor-data">No enemies are assigned in the source record for this ${esc(f.FloorType)} floor.</p>`;
  $('#rewards').innerHTML=(f.Rewards||[]).map(r=>{const it=db.items[r.ItemId],name=it?.media?.name||it?.record?.Name||'Item '+r.ItemId;return `<a class="reward" href="${link('static-items',r.ItemId)}">${it?.media?.image?picture(it.media.image,''):''}${num(r.Amount)} × ${esc(name)}</a>`;}).join('')||'No reward stored.';
  $('#raw-floor').textContent=JSON.stringify(f,null,2);$('#source-floor').href=link('static-infinitytowerfloors',f.Id);
  $('#floor-view').querySelectorAll('img').forEach(img=>img.onerror=()=>{const fallback=document.createElement('span');fallback.className='image-fallback';fallback.textContent=img.alt||'Image unavailable';img.replaceWith(fallback);});
 }
 function filter(){const q=$('#enemy-search').value.trim().toLowerCase(),type=$('#floor-type').value;filtered=db.floors.filter(f=>(!type||f.FloorType===type)&&(!q||f.Monsters.some(m=>{const e=db.enemies[m.MonsterId];return `${e.name} ${e.spec.Name}`.toLowerCase().includes(q);})));$('#status').textContent=`${num(filtered.length)} matching floors · ${num(db.floors.length)} stored floors`;$('#floor-list').innerHTML=filtered.map(f=>`<option value="${f.Floor}">Floor ${f.Floor} · ${esc(f.FloorType)}</option>`).join('');$('#floor-view').hidden=!filtered.length;$('#previous').disabled=$('#next').disabled=!filtered.length;if(filtered.length)show(filtered.includes(current)?current:filtered[0]);}
 try{
  const response=await fetch('data/orbital-lift.json');if(!response.ok)throw Error('Floor data unavailable');db=await response.json();
  try{const response=await fetch('data/orbital-weapons.json');if(!response.ok)throw Error('Weapon data unavailable');equipment=await response.json();}catch(e){equipmentError=true;}
  try{const response=await fetch('data/orbital-debuffs.json');if(!response.ok)throw Error('Debuff data unavailable');debuffData=await response.json();}catch(e){debuffError=true;}
  $('#floor-number').max=Math.max(...db.floors.map(f=>f.Floor));$('#floor-type').innerHTML+=[...new Set(db.floors.map(f=>f.FloorType))].map(t=>`<option>${esc(t)}</option>`).join('');
  current=db.floors.find(f=>f.Floor===Number(new URLSearchParams(location.search).get('floor')||1325))||db.floors[0];filter();
  $('#floor-type').onchange=$('#enemy-search').oninput=filter;
  $('#floor-controls').onsubmit=e=>{e.preventDefault();const f=db.floors.find(f=>f.Floor===Number($('#floor-number').value));if(!f){$('#status').textContent='This floor is not present in the data.';return;}current=f;$('#floor-type').value=$('#enemy-search').value='';filter();};
  $('#floor-list').onchange=()=>show(filtered.find(f=>f.Floor===Number($('#floor-list').value)));
  $('#previous').onclick=()=>show(filtered[filtered.indexOf(current)-1]);$('#next').onclick=()=>show(filtered[filtered.indexOf(current)+1]);
  $('#floor-view').onclick=e=>{const t=e.target.closest('button[data-enemy]');if(!t)return;document.querySelectorAll('[data-enemy]').forEach(el=>el.classList.toggle('selected',el.dataset.enemy===t.dataset.enemy));$('#enemy-'+t.dataset.enemy)?.scrollIntoView({behavior:'smooth',block:'nearest'});};
  $('#download').onclick=()=>{const url=URL.createObjectURL(new Blob([JSON.stringify({floor:current,enemies:current.Monsters.map(m=>({...m,...db.enemies[m.MonsterId],scaledStats:scaledStats(db.enemies[m.MonsterId].spec,current,m.Options||[])}))},null,2)],{type:'application/json'})),a=document.createElement('a');a.href=url;a.download=`orbital-lift-floor-${current.Floor}.json`;a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);};
  window.addEventListener('popstate',()=>{const f=db.floors.find(f=>f.Floor===Number(new URLSearchParams(location.search).get('floor')));if(f){current=f;$('#floor-type').value=$('#enemy-search').value='';filter();}});
 }catch(e){$('#status').textContent='Could not load Orbital Lift: '+e.message;}
})();
