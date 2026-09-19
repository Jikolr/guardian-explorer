'use strict';
(async () => {
 const $=s=>document.querySelector(s), esc=s=>String(s??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
 const num=n=>Number(n||0).toLocaleString(), link=(t,id)=>`index.html?table=${t}&record=${id}#${t}`;
 const picture=(path,name)=>path?`<img src="data/visual/${esc(path)}" alt="${esc(name)}">`:`<span class="image-fallback">${esc(name)}</span>`;
 let db,current,filtered=[];
 function show(f){
  current=f;$('#floor-view').hidden=false;$('#floor-number').value=$('#floor-list').value=f.Floor;
  $('#floor-title').textContent='Floor '+num(f.Floor);$('#floor-meta').textContent=`${f.FloorType} · Standard level ${f.StandardLevel} · ${f.Monsters.length} enemies`;
  document.title=`Orbital Lift · Floor ${f.Floor} · Guardian Atlas`;history.replaceState(null,'','?floor='+f.Floor);
  $('#previous').disabled=filtered.indexOf(f)<=0;$('#next').disabled=filtered.indexOf(f)>=filtered.length-1;
  const slots=new Map(Array.from({length:20},(_,i)=>[i+1,[]]));
  f.Monsters.forEach((m,i)=>{if(!slots.has(m.Position))slots.set(m.Position,[]);slots.get(m.Position).push({m,i});});
  $('#formation').innerHTML=[...slots].sort((a,b)=>a[0]-b[0]).map(([p,entries])=>`<div class="position-cell"><span class="slot-label">P${p}</span>${entries.length?`<div class="slot-enemies" style="--occupants:${entries.length}">${entries.map(({m,i})=>{const e=db.enemies[m.MonsterId];return `<button class="tile ${m.Options?.length?'option':''}" data-enemy="${i}" aria-label="Position ${p}: ${esc(e.name)}" title="${esc(e.name)}">${picture(e.image,e.name)}${m.Options?.length?'<span class="option-marker">★</span>':''}</button>`;}).join('')}</div>`:'<span class="empty-marker">◇</span>'}</div>`).join('');
  $('#formation-count').textContent=`${f.Monsters.length} of ${f.Monsters.length} enemies shown · select a portrait for details`;
  $('#enemies').innerHTML=f.Monsters.map((m,i)=>{const e=db.enemies[m.MonsterId],s=e.spec;return `<article class="enemy" id="enemy-${i}" data-enemy="${i}">${picture(e.image,e.name)}<div><h3>${esc(e.name)}</h3><p class="position">Position ${m.Position} · ${esc(s.ElementalType||'Unknown')} · ${esc(e.tower.Class)} / ${esc(e.tower.CoopClass)}</p><p class="fine">${esc(s.Name)} · Spec ${e.tower.SpecId}</p><p>Base HP ${num(s.Hp)} · ATK ${num(s.Atk)} · DEF ${num(s.Def)} · Mass ${num(s.Mass)}</p>${(m.Options||[]).map(o=>{const op=db.options[o.OptionId]||{};return `<details><summary class="tag">Stage option: ${esc(String(op.Name||o.OptionId).replaceAll('_',' '))} · Lv ${o.Level}</summary><pre>${esc(JSON.stringify(op,null,2))}</pre><a href="${link('static-options',o.OptionId)}">Option source →</a></details>`;}).join('')}<a href="${link('monsters',e.tower.SpecId)}">Enemy record →</a></div></article>`;}).join('')||`<p class="floor-data">No enemies are assigned in the source record for this ${esc(f.FloorType)} floor.</p>`;
  $('#rewards').innerHTML=(f.Rewards||[]).map(r=>{const it=db.items[r.ItemId],name=it?.media?.name||it?.record?.Name||'Item '+r.ItemId;return `<a class="reward" href="${link('static-items',r.ItemId)}">${it?.media?.image?picture(it.media.image,''):''}${num(r.Amount)} × ${esc(name)}</a>`;}).join('')||'No reward stored.';
  $('#raw-floor').textContent=JSON.stringify(f,null,2);$('#source-floor').href=link('static-infinitytowerfloors',f.Id);
  $('#floor-view').querySelectorAll('img').forEach(img=>img.onerror=()=>{const fallback=document.createElement('span');fallback.className='image-fallback';fallback.textContent=img.alt||'Image unavailable';img.replaceWith(fallback);});
 }
 function filter(){const q=$('#enemy-search').value.trim().toLowerCase(),type=$('#floor-type').value;filtered=db.floors.filter(f=>(!type||f.FloorType===type)&&(!q||f.Monsters.some(m=>{const e=db.enemies[m.MonsterId];return `${e.name} ${e.spec.Name}`.toLowerCase().includes(q);})));$('#status').textContent=`${num(filtered.length)} matching floors · ${num(db.floors.length)} stored floors`;$('#floor-list').innerHTML=filtered.map(f=>`<option value="${f.Floor}">Floor ${f.Floor} · ${esc(f.FloorType)}</option>`).join('');$('#floor-view').hidden=!filtered.length;$('#previous').disabled=$('#next').disabled=!filtered.length;if(filtered.length)show(filtered.includes(current)?current:filtered[0]);}
 try{
  const response=await fetch('data/orbital-lift.json');if(!response.ok)throw Error('Floor data unavailable');db=await response.json();
  $('#floor-number').max=Math.max(...db.floors.map(f=>f.Floor));$('#floor-type').innerHTML+=[...new Set(db.floors.map(f=>f.FloorType))].map(t=>`<option>${esc(t)}</option>`).join('');
  current=db.floors.find(f=>f.Floor===Number(new URLSearchParams(location.search).get('floor')||1325))||db.floors[0];filter();
  $('#floor-type').onchange=$('#enemy-search').oninput=filter;
  $('#floor-controls').onsubmit=e=>{e.preventDefault();const f=db.floors.find(f=>f.Floor===Number($('#floor-number').value));if(!f){$('#status').textContent='This floor is not present in the data.';return;}current=f;$('#floor-type').value=$('#enemy-search').value='';filter();};
  $('#floor-list').onchange=()=>show(filtered.find(f=>f.Floor===Number($('#floor-list').value)));
  $('#previous').onclick=()=>show(filtered[filtered.indexOf(current)-1]);$('#next').onclick=()=>show(filtered[filtered.indexOf(current)+1]);
  $('#floor-view').onclick=e=>{const t=e.target.closest('button[data-enemy]');if(!t)return;document.querySelectorAll('[data-enemy]').forEach(el=>el.classList.toggle('selected',el.dataset.enemy===t.dataset.enemy));$('#enemy-'+t.dataset.enemy)?.scrollIntoView({behavior:'smooth',block:'nearest'});};
  $('#download').onclick=()=>{const url=URL.createObjectURL(new Blob([JSON.stringify({floor:current,enemies:current.Monsters.map(m=>({...m,...db.enemies[m.MonsterId]}))},null,2)],{type:'application/json'})),a=document.createElement('a');a.href=url;a.download=`orbital-lift-floor-${current.Floor}.json`;a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);};
  window.addEventListener('popstate',()=>{const f=db.floors.find(f=>f.Floor===Number(new URLSearchParams(location.search).get('floor')));if(f){current=f;$('#floor-type').value=$('#enemy-search').value='';filter();}});
 }catch(e){$('#status').textContent='Could not load Orbital Lift: '+e.message;}
})();
