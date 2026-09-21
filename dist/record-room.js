'use strict';
(async()=>{
 const $=s=>document.querySelector(s);
 try{
  const response=await fetch('data/record-room-texts.json');
  if(!response.ok)throw Error('Records unavailable');
  const data=await response.json(),floors=[...new Set(data.entries.map(e=>e.floor))].sort((a,b)=>a-b);
  for(const floor of floors){const option=document.createElement('option');option.value=floor;option.textContent='Floor '+floor;$('#floor').append(option);}
  const requested=Number(new URLSearchParams(location.search).get('floor'));
  $('#floor').value=floors.includes(requested)?requested:floors[0];
  function selectRecord(letter){
   const floor=Number($('#floor').value),entries=data.entries.filter(e=>e.floor===floor&&e.record===letter).sort((a,b)=>a.order-b.order);
   $('#record-label').textContent='FLOOR '+floor+' · ARCHIVE '+letter;
   $('#record-title').textContent='Record '+letter;
   $('#dialogue').replaceChildren();
   for(const entry of entries){const p=document.createElement('p');p.textContent=entry.text;$('#dialogue').append(p);}
   $('#keys').textContent=entries.map(e=>e.key+'\n'+e.raw).join('\n\n');
   $('#provenance').textContent='Suggested event: console_'+letter.toLowerCase()+' (not verified).';
   document.querySelectorAll('#records button').forEach(b=>b.setAttribute('aria-pressed',String(b.dataset.record===letter)));
   history.replaceState(null,'','?floor='+floor+'&record='+letter);
  }
  function showFloor(){
   const floor=Number($('#floor').value),letters=[...new Set(data.entries.filter(e=>e.floor===floor).map(e=>e.record))].sort();
   $('#records').replaceChildren();
   for(const letter of letters){const b=document.createElement('button');b.textContent='Record '+letter;b.dataset.record=letter;b.onclick=()=>selectRecord(letter);$('#records').append(b);}
   $('#status').textContent=letters.length+' records · '+floors.length+' available floors';
   const requestedLetter=new URLSearchParams(location.search).get('record');
   selectRecord(letters.includes(requestedLetter)?requestedLetter:letters[0]);
  }
  $('#floor').onchange=showFloor;showFloor();
  try{
   const response=await fetch('data/visual/maps/tower_recordroom.json.gz');
   if(!response.ok)throw Error('Map unavailable');
   const map=await new Response(response.body.pipeThrough(new DecompressionStream('gzip'))).json();
   for(const layer of map.layers)for(const marker of layer.events||[])if(marker.name.startsWith('console_position')){
    const p=document.createElement('p');p.textContent=marker.name+' · ['+marker.position.map(n=>Number(n.toFixed(2))).join(', ')+']';$('#positions').append(p);
   }
  }catch(e){$('#positions').textContent='Position data unavailable: '+e.message;}
 }catch(e){$('#status').textContent=e.message;}
})();
