"""Publish the current action-resolution queue and the complete resolved audit."""
import csv,json
from collections import Counter,defaultdict
from pathlib import Path

BASE=Path(__file__).resolve().parent
OUT=BASE/'dist/data'
report=json.loads((OUT/'raid-roster-validation.json').read_text(encoding='utf-8'))
rows=defaultdict(lambda:{'heroes':set(),'statuses':Counter(),'validations':set()})
for hero in report['heroes']:
 for loadout in hero['loadouts']:
  for action in loadout['actions']:
   row=rows[action['name']]
   row['heroes'].add(hero['name'])
   row['statuses'][action['status']]+=1
   if action.get('validation'):row['validations'].add(action['validation'])

queue=[name for name,row in rows.items() if row['statuses']['unresolved'] or row['statuses']['estimate']]
assert not queue,queue[:10]
retired=rows.get('No direct normal action')
if retired:
 rows['Normal attack (unresolved)']={
  'heroes':set(retired['heroes']),
  'statuses':Counter({'retired':sum(retired['statuses'].values())}),
  'validations':{'Retired placeholder: the compatible style exposes no direct normal-damage action'},
 }

with (OUT/'raid-resolved-actions.csv').open('w',encoding='utf-8',newline='') as f:
 w=csv.writer(f);w.writerow(['Status','Action','Heroes','Loadouts','Code-traced loadouts','Resolved data-model loadouts','Validation'])
 for name,row in sorted(rows.items()):
  total=sum(row['statuses'].values());verified=row['statuses']['verified'];resolved=row['statuses']['resolved']
  status='Retired placeholder' if row['statuses']['retired'] else ('Code-traced' if verified==total else 'Resolved')
  w.writerow([status,name,'; '.join(sorted(row['heroes'])),total,verified,resolved,'; '.join(sorted(row['validations']))])

queue_header='"Status","Action","Heroes","Unresolved loadouts","Estimated loadouts","Code-traced loadouts"\n'
(OUT/'raid-unresolved-estimated-actions.csv').write_text(queue_header,encoding='utf-8')
(OUT/'raid-unresolved-action-names.txt').write_text('',encoding='utf-8')
(OUT/'raid-estimated-action-names.txt').write_text('',encoding='utf-8')
(OUT/'raid-unresolved-estimated-actions.md').write_text(
 '# Unresolved and estimated hero actions\n\n'
 f"Snapshot: {report['snapshot']}. Recomputed from the current calculator for all {report['counts']['uniqueHeroes']} unique and {report['counts']['rareHeroes']} rare heroes across {report['counts']['loadouts']} listed evolution/weapon loadouts.\n\n"
 '**0 unresolved action names; 0 estimated action names.**\n\n'
 f"All {report['counts']['actions']} action names now have either a code-traced formula or a deterministic recovered-data model. The old `Normal attack (unresolved)` row was a generated placeholder and has been retired as `No direct normal action`. See `raid-resolved-actions.csv` for the per-action provenance. Resolved data models preserve stored totals, hit arrays, level scaling, native fixed modifiers and shared stamina formulas; their notes identify default attack-window reconstructions where the record omits an explicit coefficient.\n",
 encoding='utf-8')
print(json.dumps({'actions':report['counts']['actions'],'retiredPlaceholders':1 if retired else 0,'unresolved':0,'estimated':0,'csv':'dist/data/raid-resolved-actions.csv'}))
