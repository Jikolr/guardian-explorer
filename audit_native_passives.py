"""Export native passive evidence without changing game files."""
from pathlib import Path
import sys,csv,re
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'guardian-analysis'))
import native_probe as n
rows=list(csv.DictReader((BASE.parent/'guardian-analysis/audit/game-method-addresses.csv').open(encoding='utf-8')))
names={int(r['va'],16):r['type']+'.'+r['name'] for r in rows}
out=BASE/'docs/passive-evidence';out.mkdir(exist_ok=True)
types=['WeaponTypeDamageBoostAppliedOption','AfterSkillDamageBoostAppliedOption','NoHitDamageBoostAppliedOption','HalfVampireSpecialAppliedStageOption','MerchDamageBoostAppliedStageOption','MerchDamageBoostHpRatioAppliedStageOption','LowHpDamageBoostAppliedOption','CoopClassDamageBoostAppliedStageOption','AlpacaGirlSpecialAppliedStageOption','DemonPowerGirlSpecialAppliedStageOption','GourrySpecialAppliedStageOption','FireBishop2SpecialAppliedStageOption','EugeneCwpAppliedStageOption']
for r in rows:
    selected='GetAttackModifier' in r['name'] or r['name']=='GetDamageModifier' or ('OnEvent' in r['name'] and ('NoHit' in r['type'] or 'AfterSkill' in r['type']))
    if r['type'].split('.')[-1] not in types or not selected:continue
    va=int(r['va'],16);end=min(x for x in names if x>va)
    body=n.disasm(va,min(end-va,5000))
    body=re.sub(r'bl\s+#0x([0-9a-f]+)',lambda m:m[0]+' ; '+names.get(int(m[1],16),'unmapped'),body)
    dest=out/(r['method_index']+'.asm') if 'method_index'in r else out/(r['type'].split('.')[-1]+'-'+r['name'].split('.')[-1]+'.asm')
    dest.write_text(r['type']+'.'+r['name']+'\n'+body,encoding='utf-8')
    print(dest.name+'\n'+body[-5000:])
