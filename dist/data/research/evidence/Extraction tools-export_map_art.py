"""Export only meshes/materials used by the one-map experiment."""
from pathlib import Path
import sys,json,math
import numpy as np
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE/'tool-libs'))
import UnityPy
from UnityPy.helpers.MeshHelper import MeshHandler
OUT=BASE.parent/'guardian-explorer/dist/data/research/map-art'
OUT.mkdir(exist_ok=True)
src=BASE.parent.parent/'com.kakaogames.gdtskr/files/AssetBundles/Android/tilesets/ancient_red'
env=UnityPy.load(str(src)); objects={o.path_id:o for o in env.objects}
trees={o.path_id:o.read_typetree() for o in env.objects if o.type.name in ['GameObject','Transform','MeshFilter','MeshRenderer','Material']}
def deref(p):
    assert p['m_FileID']==0,p
    return trees[p['m_PathID']]
def xyz(v):return [v[k] for k in 'xyz']
def matrix(t,root=False):
    x,y,z,w=[t['m_LocalRotation'][k] for k in 'xyzw']
    r=np.array([[1-2*y*y-2*z*z,2*x*y-2*z*w,2*x*z+2*y*w],[2*x*y+2*z*w,1-2*x*x-2*z*z,2*y*z-2*x*w],[2*x*z-2*y*w,2*y*z+2*x*w,1-2*x*x-2*y*y]])
    m=np.eye(4);m[:3,:3]=(np.eye(3) if root else r)@np.diag(xyz(t['m_LocalScale']))
    if not root:m[:3,3]=xyz(t['m_LocalPosition'])
    return m
materials={};meshes={};textures={};skipped=[]
def material(pid):
    if str(pid) in materials:return str(pid)
    t=trees[pid];props=t['m_SavedProperties'];tex=dict(props['m_TexEnvs']).get('_MainTex');col=dict(props['m_Colors']).get('_Color',dict(r=1,g=1,b=1,a=1))
    if not tex or not tex['m_Texture']['m_PathID']:raise ValueError(('No main texture',t['m_Name']))
    ptr=tex['m_Texture']
    if ptr['m_FileID']:
        skipped.append(dict(material=t['m_Name'],reason='External texture',reference=ptr));return None
    tid=ptr['m_PathID'];o=objects[tid].read()
    if str(tid) not in textures:
        filename=f'{o.m_Name}.png';o.image.save(OUT/filename);textures[str(tid)]=filename
    materials[str(pid)]=dict(name=t['m_Name'],texture=textures[str(tid)],color=[col[k] for k in 'rgba'],scale=list(tex['m_Scale'].values()),offset=list(tex['m_Offset'].values()))
    return str(pid)
def parts(go,mat,root=False):
    comps={objects[c['component']['m_PathID']].type.name: c['component']['m_PathID'] for c in go['m_Component']}
    t=trees[comps['Transform']];mat=mat@matrix(t,root);result=[]
    if 'MeshFilter' in comps and 'MeshRenderer' in comps:
        renderer=trees[comps['MeshRenderer']]
        if renderer['m_Enabled']:
            ptr=trees[comps['MeshFilter']]['m_Mesh']
            if ptr['m_FileID'] or not ptr['m_PathID']:
                skipped.append(dict(object=go['m_Name'],reason='External or runtime-generated mesh',reference=ptr));return result
            mesh=objects[ptr['m_PathID']].read();h=MeshHandler(mesh);h.process()
            vs=(mat@np.column_stack([np.array(h.m_Vertices),np.ones(len(h.m_Vertices))]).T).T[:,:3]
            for i,triangles in enumerate(h.get_triangles()):
                if not triangles:continue
                mp=renderer['m_Materials'][min(i,len(renderer['m_Materials'])-1)];assert mp['m_FileID']==0
                mid=material(mp['m_PathID'])
                if mid:result.append(dict(vertices=np.round(vs,6).tolist(),uv=h.m_UV0,triangles=triangles,material=mid))
    for child in t['m_Children']:
        tr=deref(child);childgo=deref(tr['m_GameObject'])
        if childgo['m_IsActive']:result+=parts(childgo,mat)
    return result
data=json.loads((OUT.parent/'map-preview.json').read_text())
names=sorted({t['name'] for l in data['layers'] for t in l['tiles']})
gos={}
for pid,t in trees.items():
    if objects[pid].type.name=='GameObject':gos.setdefault(t['m_Name'],[]).append(t)
for name in names:
    candidates=gos.get(name,[])
    if len(candidates)>1:candidates=[g for g in gos.get(name,[]) if any(objects[c['component']['m_PathID']].type.name=='MonoBehaviour' and 'tilesetId' in objects[c['component']['m_PathID']].read_typetree() for c in g['m_Component'])]
    assert len(candidates)==1,(name,len(candidates))
    meshes[name]=parts(candidates[0],np.eye(4),True)
    print(name,len(meshes[name]),sum(len(p['triangles']) for p in meshes[name]),'triangles')
result=dict(meshes=meshes,materials=materials,skipped=skipped,source='files/AssetBundles/Android/tilesets/ancient_red',rotationDegreesPerCode=90,
    limitations='Static MeshRenderer geometry and main textures. Unlit materials; particles, animations and runtime script changes are omitted. Camera is an approximation.')
(OUT/'scene.json').write_text(json.dumps(result,separators=(',',':')),encoding='utf-8')
print('Exported',len(meshes),'tile prefabs;',len(materials),'materials;',len(textures),'textures')
