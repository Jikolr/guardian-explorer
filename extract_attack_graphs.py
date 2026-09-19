"""Read the supplied hero graph bundles for offline hit-sequence research."""
import sys,json
from pathlib import Path
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'guardian-analysis/tool-libs'))
import UnityPy
root=BASE.parent.parent/'com.kakaogames.gdtskr/files/AssetBundles/Android/graph_hero'
out=BASE.parent/'guardian-analysis/audit/attack-graphs'
out.mkdir(exist_ok=True)
for path in root.iterdir():
    if not path.is_file() or path.suffix=='.etag': continue
    env=UnityPy.load(str(path))
    for obj in env.objects:
        if obj.type.name!='MonoBehaviour':continue
        tree=obj.read_typetree()
        name=tree.get('m_Name',str(obj.path_id))
        dest=out/(path.name+'-'+name+'.json')
        dest.write_text(json.dumps(tree,ensure_ascii=True,indent=2),encoding='utf-8')
    print(path.name,flush=True)
