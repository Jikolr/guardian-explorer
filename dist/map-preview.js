'use strict';
(async()=>{
 const $=s=>document.querySelector(s), canvas=$('#map'),ctx=canvas.getContext('2d');
 const esc=s=>String(s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
 try{
 const initial=new URLSearchParams(location.search);const mapName=initial.get('map')||'ancientdungeon_red_1_1';
 const response=await fetch('data/visual/maps/'+encodeURIComponent(mapName)+'.json.gz');if(!response.ok)throw Error('Map data could not be loaded.');const data=await new Response(response.body.pipeThrough(new DecompressionStream('gzip'))).json();$('h1').textContent=data.name;document.title=data.name+' · Map viewer';$('.intro').textContent='Explore stored tile positions, original static artwork and map layers. Unresolved meshes remain available in structural mode.';
 const colors={gimmick:'#efc665',breakale:'#f29978',obj_wall:'#a998d9',wall2:'#9b8fd2',wall:'#718bad',obj1:'#79c6b6',floor2:'#466a80',floor:'#345570'};
 const tiles=data.layers.flatMap((l,layer)=>l.tiles.map((t,i)=>({...t,layer,index:i,id:`${layer}:${i}`})));
 const markers=data.layers.flatMap((l,layer)=>(l.events||[]).map((t,i)=>({...t,layer,index:i,id:`m:${layer}:${i}`,marker:true})));const objects=[...tiles,...markers];
 const art=await window.createMapArt(tiles).catch(e=>{$('.badge').textContent='Layout only · artwork unresolved';$('#render-mode').value='layout';$('#render-mode').options[0].disabled=true;$('#render-mode').options[1].disabled=true;return null});
 if(art&&art.matched<tiles.length*.5)$('#render-mode').value='layout';
 if(art)$('.badge').textContent=`Artwork: ${art.matched.toLocaleString()} / ${tiles.length.toLocaleString()} placements`;
 if(['art','top','layout'].includes(initial.get('mode'))&&art)$('#render-mode').value=initial.get('mode');$('#show-markers').checked=initial.get('markers')!=='0';
 const artwork=()=>art&&$('#render-mode').value!=='layout', tilted=()=>artwork()&&$('#render-mode').value==='art';
 const visible=new Set(initial.has('layers')?initial.get('layers').split(',').filter(x=>/^\d+$/.test(x)).map(Number):data.layers.map((_,i)=>i));let selected=null,width=0,height=0,scale=20,fitScale=20,ox=0,oy=0,drag=null;
 const floorTiles=tiles.filter(t=>data.layers[t.layer].name==='floor');
 const ordered=[...tiles].sort((a,b)=>b.layer-a.layer),bounds=(floorTiles.length?floorTiles:tiles).reduce((b,t)=>({minX:Math.min(b.minX,t.position[0]-1.5),maxX:Math.max(b.maxX,t.position[0]+1.5),minZ:Math.min(b.minZ,t.position[2]-1.5),maxZ:Math.max(b.maxZ,t.position[2]+1.5)}),{minX:Infinity,maxX:-Infinity,minZ:Infinity,maxZ:-Infinity});
 if(!tiles.length)Object.assign(bounds,{minX:0,maxX:1,minZ:0,maxZ:1});
 $('#stats').innerHTML=`<span><strong>${tiles.length}</strong> placed tiles</span><span><strong>${data.layers.length}</strong> layers</span><span><strong>${data.layers.reduce((n,l)=>n+l.events.length,0)}</strong> event markers</span><span><strong>${data.parsedBytes.toLocaleString()} / ${data.bytes.toLocaleString()}</strong> bytes parsed</span>`;
 $('#layers').innerHTML=data.layers.map((l,i)=>`<label><input type="checkbox" data-layer="${i}" ${visible.has(i)?'checked':''} ${l.tiles.length||l.events.length?'':'disabled'}><span class="swatch" style="background:${colors[l.name]||'#aaa'}"></span>${esc(l.name)}<small>${l.tiles.length+l.events.length}${l.events.length?' markers':''}</small></label>`).join('');
 $('#objects').innerHTML+=[...objects].sort((a,b)=>a.layer-b.layer).map(t=>`<option value="${t.id}">${t.marker?'Marker · ':''}${esc(data.layers[t.layer].name)} / ${esc(t.name)} (${t.position[0]}, ${t.position[2]})</option>`).join('');
 $('.evidence a').href='data/visual/maps/'+encodeURIComponent(mapName)+'.json.gz';$('#evidence').textContent=`KONG version ${data.version}; SHA-256 ${data.sha256}. Reader: ${data.evidence.reader}. Placement: ${data.evidence.placement}.`;
 function point(t){return [ox+t.position[0]*scale,oy-(t.position[2]*(tilted()?.8:1)+t.position[1]*(tilted()?.6:0))*scale]}
 function draw(){
  ctx.clearRect(0,0,width,height);
  if($('#grid').checked&&scale>=9){ctx.strokeStyle='#193044';ctx.lineWidth=.5;ctx.beginPath();for(let x=Math.floor(-ox/scale);x<(width-ox)/scale;x++){ctx.moveTo(ox+x*scale,0);ctx.lineTo(ox+x*scale,height)}const zs=scale*(tilted()?.8:1);for(let z=Math.floor((oy-height)/zs);z<oy/zs;z++){ctx.moveTo(0,oy-z*zs);ctx.lineTo(width,oy-z*zs)}ctx.stroke()}
  if(artwork()){ctx.drawImage(art.render({width,height,scale,ox,oy,visible,tilted:tilted()}),0,0,width,height)}
  else for(const t of ordered){if(!visible.has(t.layer))continue;const [x,y]=point(t);if(x< -scale||x>width+scale||y< -scale||y>height+scale)continue;
   const name=data.layers[t.layer].name,s=scale*.91;ctx.fillStyle=colors[name]||'#bbb';ctx.strokeStyle='#0a1420';ctx.lineWidth=Math.max(.6,scale*.025);
   if(name.startsWith('floor')||name.includes('wall')){ctx.fillRect(x-s/2,y-s/2,s,s);ctx.strokeRect(x-s/2,y-s/2,s,s)}
   else{ctx.beginPath();if(name==='gimmick'){ctx.moveTo(x,y-s*.45);ctx.lineTo(x+s*.4,y);ctx.lineTo(x,y+s*.45);ctx.lineTo(x-s*.4,y);ctx.closePath()}else ctx.arc(x,y,s*.3,0,Math.PI*2);ctx.fill();ctx.stroke()}
   if(scale>28&&name==='gimmick'){ctx.fillStyle='#322609';ctx.font=`bold ${Math.min(13,scale*.35)}px system-ui`;ctx.textAlign='center';ctx.textBaseline='middle';ctx.fillText('K',x,y)}
  }
  if($('#show-markers').checked)for(const t of markers){if(!visible.has(t.layer))continue;const [x,y]=point(t);if(x<0||x>width||y<0||y>height)continue;const l=data.layers[t.layer].name;ctx.fillStyle=l==='npcs'?'#65dccf':l==='monsters'?'#ff8799':l==='events'?'#ffd470':'#b59bff';ctx.strokeStyle='#07111e';ctx.lineWidth=1.5;ctx.beginPath();ctx.arc(x,y,5,0,Math.PI*2);ctx.fill();ctx.stroke();}
  if(selected&&visible.has(selected.layer)&&(!selected.marker||$('#show-markers').checked)){const [x,y]=point(selected);ctx.strokeStyle='#ffe5a0';ctx.lineWidth=2;ctx.strokeRect(x-scale*.55,y-scale*.55,scale*1.1,scale*1.1)}
  $('#zoom').textContent=Math.round(scale/fitScale*100)+'%';
 }
 function fit(){scale=Math.min((width-50)/(bounds.maxX-bounds.minX),(height-70)/((bounds.maxZ-bounds.minZ)*(tilted()?.8:1)+2));fitScale=scale;ox=width/2-(bounds.minX+bounds.maxX)/2*scale;oy=height/2+(bounds.minZ+bounds.maxZ)/2*scale*(tilted()?.8:1);draw()}
 function resize(){const rect=canvas.getBoundingClientRect();width=rect.width;height=rect.height;const dpr=window.devicePixelRatio||1;canvas.width=Math.round(width*dpr);canvas.height=Math.round(height*dpr);ctx.setTransform(dpr,0,0,dpr,0,0);fit()}
 function zoom(f,x=width/2,y=height/2){const next=Math.min(180,Math.max(5,scale*f));const k=next/scale;ox=x-(x-ox)*k;oy=y-(y-oy)*k;scale=next;draw()}
 function select(t){selected=t;$('#objects').value=t?t.id:'';if(t){const l=data.layers[t.layer];$('#inspector').innerHTML=`<h3>${esc(t.name)}</h3><dl><dt>Layer</dt><dd>${esc(l.name)}</dd><dt>Tileset</dt><dd>${esc(t.marker?'Stored '+l.name+' placement':t.tileset)}</dd><dt>X / Y / Z</dt><dd>${t.position.join(' / ')}</dd><dt>Rotation code</dt><dd>${t.rotation??'Not applicable'}</dd><dt>Partition</dt><dd>${t.partition?.join(', ')||'Not applicable'}</dd><dt>Byte offset</dt><dd>${t.offset===undefined?'Marker position from decoded layer':t.offset+' (0x'+t.offset.toString(16)+')'}</dd></dl>`}else{$('#inspector').innerHTML='<p class="empty">Select a tile to see its name, position and source record.</p>'}draw();saveView()}
 $('#download-map').onclick=()=>{const u=URL.createObjectURL(new Blob([JSON.stringify(data,null,2)],{type:'application/json'}));const a=document.createElement('a');a.href=u;a.download=mapName+'.json';a.click();setTimeout(()=>URL.revokeObjectURL(u),30000)};
 $('#layers').addEventListener('change',e=>{const n=Number(e.target.dataset.layer);e.target.checked?visible.add(n):visible.delete(n);draw();saveView()});
 $('#objects').addEventListener('change',e=>{const t=objects.find(t=>t.id===e.target.value);if(t){visible.add(t.layer);$(`[data-layer="${t.layer}"]`).checked=true;ox=width/2-t.position[0]*scale;oy=height/2+(t.position[2]*(tilted()?.8:1)+t.position[1]*(tilted()?.6:0))*scale}select(t)});
 $('#render-mode').onchange=()=>{fit();saveView()};$('#show-markers').onchange=()=>{draw();saveView()};$('#grid').onchange=draw;$('#fit').onclick=fit;$('#zoom-in').onclick=()=>zoom(1.3);$('#zoom-out').onclick=()=>zoom(1/1.3);
 const pos=e=>{const r=canvas.getBoundingClientRect();return [e.clientX-r.left,e.clientY-r.top]};
 canvas.addEventListener('wheel',e=>{e.preventDefault();zoom(Math.exp(-e.deltaY*.0015),...pos(e))},{passive:false});
 canvas.addEventListener('pointerdown',e=>{const [x,y]=pos(e);drag={x,y,sx:x,sy:y,moved:false};canvas.setPointerCapture(e.pointerId)});
 canvas.addEventListener('pointermove',e=>{const [x,y]=pos(e);$('#coords').textContent=`X ${((x-ox)/scale).toFixed(1)} · Z ${((oy-y)/scale/(tilted()?.8:1)).toFixed(1)}`;if(drag){ox+=x-drag.x;oy+=y-drag.y;drag.moved||=Math.hypot(x-drag.sx,y-drag.sy)>4;drag.x=x;drag.y=y;draw()}});
 canvas.addEventListener('pointerup',e=>{if(drag&&!drag.moved){const [x,y]=pos(e);const hits=ordered.filter(t=>{const [a,b]=point(t);return visible.has(t.layer)&&Math.abs(x-a)<scale*.5&&Math.abs(y-b)<scale*.5});const markerHits=$('#show-markers').checked?markers.filter(t=>{const [a,b]=point(t);return visible.has(t.layer)&&Math.hypot(x-a,y-b)<9}):[];select(markerHits.at(-1)||hits.at(-1)||null)}drag=null});
 canvas.addEventListener('pointercancel',()=>drag=null);
 canvas.addEventListener('keydown',e=>{if(['ArrowLeft','ArrowRight','ArrowUp','ArrowDown','+','=','-','0'].includes(e.key)){e.preventDefault();if(e.key==='0')return fit();if(e.key==='+'||e.key==='=')return zoom(1.3);if(e.key==='-')return zoom(1/1.3);ox+=e.key==='ArrowLeft'?30:e.key==='ArrowRight'?-30:0;oy+=e.key==='ArrowUp'?30:e.key==='ArrowDown'?-30:0;draw()}});
 function saveView(){const p=new URLSearchParams({map:mapName,mode:$('#render-mode').value,markers:$('#show-markers').checked?'1':'0',layers:[...visible].join(',')});if(selected)p.set('object',selected.id);history.replaceState(null,'','?'+p)}
 new ResizeObserver(resize).observe(canvas);resize();if(initial.has('object')){const t=objects.find(t=>t.id===initial.get('object'));if(t){visible.add(t.layer);$(`[data-layer="${t.layer}"]`).checked=true;select(t)}}saveView();
 }catch(e){$('#stats').textContent=`Unable to display the map: ${e.message}`;console.error(e)}
})();
