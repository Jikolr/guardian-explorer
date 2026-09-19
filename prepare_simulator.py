"""Build the offline raid calculator catalogue from the supplied snapshot."""
import json
from pathlib import Path
from collections import Counter

BASE = Path(__file__).resolve().parent
SRC = BASE.parent / 'guardian-analysis/decoded-static'
OUT = BASE / 'dist/data'
def read(name):
    return json.loads((SRC / (name + '.json')).read_text(encoding='utf-8'))

nodes = read('awakeningnodedata')
trees = read('awakeningtreenodes')
configs = {r['OriginId']: r for r in read('charactertreeconfig')}
aliases = json.loads((OUT / 'character-aliases.json').read_text(encoding='utf-8'))
media = json.loads((OUT / 'visual/record-media.json').read_text(encoding='utf-8'))
heroes = []
for h in read('heroes'):
    if not h.get('Playable'): continue
    h = dict(h)
    origin = h.get('OriginId', h['Id'])
    c = configs.get(origin)
    totals = Counter()
    if c:
        generic = {n['Id']: n for n in nodes['NodeOptions'] if 'OriginId' not in n}
        specific = {n['Id']: n for n in nodes['NodeOptions'] if n.get('OriginId') == origin}
        if h.get('Rank') == 5:
            specific.update({n['Id']: n for n in nodes['OverrideOptions'] if n.get('OriginId') == origin})
        special = iter(c['SpecialNodes'])
        for encoded in trees.get(c['AwakeningTreeName'], []):
            is_special = encoded // 1000000000 == 2
            key = next(special) if is_special else encoded // 10000 % 10000
            # Native AwakeningTreeUtil.Rank: (node / 10000) % 10.
            if encoded // 10000 % 10 > h['Rank']: continue
            node = specific.get(key, generic.get(key)) if is_special else generic.get(key)
            if node:
                totals[node['OptionId']] += node['OptionLevel']
    h['awakening'] = [{'OptionId': k, 'Level': v} for k, v in totals.items()]
    h['displayName'] = aliases.get(str(h['Id']), {}).get('name') or h['Class'].replace('_', ' ').title()
    h['image'] = media.get('heroes:' + str(h['Id']), {}).get('image')
    h['treeKnown'] = bool(c)
    heroes.append(h)
items = []
for i in read('items'):
    if i['Type'] not in ['weapon', 'orb', 'merch', 'relic', 'jewel']: continue
    i = dict(i)
    i['image'] = media.get('static-items:' + str(i['Id']), {}).get('image')
    items.append(i)
bosses = [b for b in read('monsters') if 790000 <= b['Id'] < 791000 and any(o.get('OptionId') == 400005 for o in b.get('Options', []))]
for b in bosses:
    b['image'] = media.get('monsters:' + str(b['Id']), {}).get('image')
guardian = read('guardianlevel')
data = dict(snapshot='3.54.0', heroes=heroes, items=items, bosses=bosses,
            options=read('options'), buffs=read('buffs'), actions=read('battleactions'),
            styles=read('battlestyles')['BattleStyles'], projectiles=read('projectiles'),
            weaponTypes=read('weapontypespecs'), elements=read('elementalmatrix')['ElementalMatrix'],
            mastery=guardian['GuardianSkillLevel'], masterySkills=guardian['GuardianSkill'])
if (OUT/'raid-source-models.json').exists():
    data['sourceModels']=json.loads((OUT/'raid-source-models.json').read_text(encoding='utf-8'))
if (OUT/'raid-attack-sequences.json').exists():
    data['attackSequences']=json.loads((OUT/'raid-attack-sequences.json').read_text(encoding='utf-8'))['models']
(OUT / 'raid-simulator.json').write_text(json.dumps(data, ensure_ascii=False, separators=(',', ':')), encoding='utf-8')
assert next(h for h in heroes if h['Id'] == 20596)['awakening']
print(f'Exported {len(heroes)} hero stages, {len(items)} equipment records, {len(bosses)} raid variants')
