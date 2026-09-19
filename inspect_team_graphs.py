import json
import sys
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path
root=Path(__file__).resolve().parent.parent/'guardian-analysis/audit/attack-graphs'
for name in ['wrestler-ManualWrestlerFirst','wrestler-SupportWrestler','bridge_driver-ManualBridgeDriver','bridge_driver-RoleBridgeDriver','bridge_driver-BridgeDriverSpecialOption']:
 es=json.loads(json.loads((root/(name+'.json')).read_text())['_data']['_json'])['graph']['elements']
 nodes={e['$id']:e for e in es if '$id' in e}
 print('\nGRAPH',name)
 for e in es:
  t=e.get('$type','').split('.')[-1]
  if t.endswith('Connection'):continue
  print(e.get('$id'),t,json.dumps({k:v for k,v in e.items() if k not in ['$id','$type','position','guid','defaultValues']},ensure_ascii=False)[:250],json.dumps(e.get('defaultValues',{}),ensure_ascii=False))
 for e in es:
  if e.get('$type','').endswith(('ValueConnection','ControlConnection')): print(e['$type'].split('.')[-1],e.get('sourceUnit'),e.get('sourceKey'),'->',e.get('destinationUnit'),e.get('destinationKey'))
