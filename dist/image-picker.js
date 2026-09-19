/* Searchable image suggestions, shared by all raid entity selectors. */
window.ImagePicker=(()=>{
 const configs=new Map();let current=null,active=-1,visible=[];
 const panel=document.createElement('div');panel.className='image-picker-menu';panel.hidden=true;panel.id='image-picker-menu';panel.setAttribute('role','listbox');document.body.append(panel);
 const escape=s=>String(s??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
 function register(key,rows){configs.set(key,rows);}
 function position(){if(!current)return;const r=current.getBoundingClientRect(),below=innerHeight-r.bottom-12,above=r.top-12,up=below<220&&above>below;const height=Math.max(100,Math.min(360,up?above:below));panel.style.width=Math.min(Math.max(r.width,320),innerWidth-24)+'px';panel.style.left=Math.max(12,Math.min(r.left,innerWidth-parseFloat(panel.style.width)-12))+'px';panel.style.maxHeight=height+'px';panel.style.top=(up?Math.max(12,r.top-Math.min(panel.scrollHeight,height)):r.bottom+4)+'px';}
 function close(restore=true){if(current){if(restore)current.value=current.dataset.committed||'';current.setAttribute('aria-expanded','false');current.removeAttribute('aria-activedescendant');}current=null;panel.hidden=true;}
 function render(query=''){
  const q=query.trim().toLocaleLowerCase();visible=(configs.get(current.dataset.imagePicker)||[]).filter(r=>(r.label+' '+(r.detail||'')).toLocaleLowerCase().includes(q));active=-1;
  panel.innerHTML=visible.length?visible.map((r,i)=>`<div id="image-choice-${i}" role="option" aria-selected="false" data-choice="${i}" class="image-picker-option">${r.image?`<img loading="lazy" src="${escape(r.image)}" alt="">`:'<span class="image-picker-empty" aria-hidden="true">—</span>'}<span><strong>${escape(r.label)}</strong>${r.detail?`<small>${escape(r.detail)}</small>`:''}</span></div>`).join(''):'<p class="image-picker-no-results" role="status">No matches. Try another name or ID.</p>';
  panel.hidden=false;panel.scrollTop=0;current.setAttribute('aria-expanded','true');current.removeAttribute('aria-activedescendant');position();
 }
 function choose(i){const row=visible[i],input=current;if(!row||!input)return;input.value=row.value;input.dataset.committed=row.value;close(false);input.dispatchEvent(new Event('change',{bubbles:true}));}
 document.addEventListener('focusin',e=>{if(e.target.dataset.imagePicker){if(current!==e.target)close();current=e.target;render();current.select();}else if(!panel.contains(e.target))close();});
 document.addEventListener('click',e=>{if(e.target.dataset.imagePicker&&!current){current=e.target;render();current.select();}});
 document.addEventListener('input',e=>{if(e.target.dataset.imagePicker){current=e.target;render(current.value);}});
 document.addEventListener('pointerdown',e=>{const row=e.target.closest('[data-choice]');if(row&&panel.contains(row))e.preventDefault();else if(current&&!panel.contains(e.target)&&e.target!==current)close();});
 panel.addEventListener('click',e=>{const row=e.target.closest('[data-choice]');if(row)choose(Number(row.dataset.choice));});
 document.addEventListener('keydown',e=>{if(e.target!==current)return;if(e.key==='Escape'){e.preventDefault();close();return;}if(e.key==='Tab'){close();return;}if(e.key==='Enter'&&!panel.hidden){e.preventDefault();if(active>=0)choose(active);else if(visible.length===1)choose(0);return;}if(['ArrowDown','ArrowUp'].includes(e.key)){e.preventDefault();if(panel.hidden)render();if(!visible.length)return;active=Math.max(0,Math.min(visible.length-1,active+(e.key==='ArrowDown'?1:-1)));panel.querySelectorAll('[role=option]').forEach((n,i)=>n.setAttribute('aria-selected',String(i===active)));const row=panel.querySelector('#image-choice-'+active);current.setAttribute('aria-activedescendant',row.id);row.scrollIntoView({block:'nearest'});}});
 window.addEventListener('resize',()=>close());window.addEventListener('scroll',()=>{if(current&&!panel.contains(document.activeElement))position();},true);
 return {register,close};
})();
