"""Snapshot-based estimate, not a bit-exact replay of the live client."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
DATA = ROOT.parent / 'guardian-explorer/dist/data'

def row(filename, identifier):
    return next(r['fields'] for r in json.loads((DATA / filename).read_text(encoding='utf-8')) if r['id'] == identifier)

hero = row('heroes.json', 20596)
weapon = row('static-items.json', 9030535)
# ConstantsData.Expand defaults: thresholds 83,100; rates 1.026,1.006.
# Alternate growth activation at runtime remains an explicit model assumption.
level_index = 149
growth = hero['StatGrowthRate'] ** 82 * 1.026 ** 17 * 1.006 ** (level_index - 99)
hero_attack_factor = hero['Atk'] * growth
weapon_attack = weapon['EarthDamage'] * growth * 1.12
# Account collection bonuses verified against the user's eight screenshots.
ordinary_bonuses = dict(awakening=.710, blessing=.250, limit_break=.150,
                       engraving=.150, hero_collection=.710, item_collection=1.027,
                       rifle_book=.100, equipment_costume_book=.100,
                       super_costume_book=.022, jewel_book=.020, heavenhold=.100)
ordinary_factor = 1 + sum(ordinary_bonuses.values())
mastery_level = 49  # User corrected the test build from 51 to 49.
guardian_data = json.loads((ROOT/'decoded-static/guardianlevel.json').read_text(encoding='utf-8'))
mastery_option_level = next(r['OptionLevel'] for r in guardian_data['GuardianSkillLevel'] if r['SkillLevel'] == mastery_level)
mastery_bonus = mastery_option_level * .001
account_factor = 1 + .398 + mastery_bonus
skill_mastery_level = 41
skill_mastery_option_level = next(r['OptionLevel'] for r in guardian_data['GuardianSkillLevel'] if r['SkillLevel'] == skill_mastery_level)
skill_mastery_spec = row('static-options.json', 1500008)
skill_mastery_bonus = skill_mastery_spec['AttackScaleBase'] + skill_mastery_spec['AttackScaleAdd'] * skill_mastery_option_level
# GetSuperSkillScale adds account skill bonuses to character/equipment skill bonuses.
skill_factor = 1 + .75 + skill_mastery_bonus
combat_attack = hero_attack_factor * weapon_attack * 1.10 * ordinary_factor * account_factor * 1.50
projectile = next(r['fields'] for r in json.loads((DATA/'static-projectiles.json').read_text(encoding='utf-8')) if r['fields'].get('Name') == weapon['Projectile'])
# WeaponSpec.CalcAtk2Dps uses projectile/magazine timing for projectile weapons.
atk_to_dps = projectile['AtkModifier'] * weapon['MagazineSize'] / ((weapon['MagazineSize']-1)*weapon['ShootTerm'] + weapon['ReloadTime'])
boss = row('monsters.json', 790035)
protection_option = next(o for o in boss['Options'] if o['OptionId'] == 400005)
protection_spec = row('static-options.json', 400005)
protection = 1 - protection_spec['ProtectionBase'] - protection_spec['ProtectionAdd'] * protection_option['Level']
result = {
    'status': 'Normal hit agrees with user observation within one damage point; skill remains a prediction',
    'assumptions': [
        'Dabin leader, supplied 3.54.0 snapshot, requested maxed weapon-only build',
        'Alternate growth curve active for hero and weapon; internal level 149',
        'Actual account collection/book bonuses verified from user screenshots; Illustration Costume ATK +2.2%',
        'Ordinary mode scale one; explicit Garam Protection option applies a further .25 factor',
        'No temporary self ATK stacks, role-hit buff or target ailment',
        'Each clean-target example begins independently; all skill hits land',
        'Floating-point and intermediate integer rounding approximated'
    ],
    'hero_id': 20596, 'weapon_id': 9030535, 'growth_factor': growth,
    'hero_attack_factor': hero_attack_factor, 'weapon_attack_before_matching_bonus': weapon_attack,
    'ordinary_bonuses': ordinary_bonuses, 'ordinary_factor': ordinary_factor,
    'final_account_factor': account_factor, 'matching_weapon_factor': 1.10,
    'mastery_level': mastery_level, 'mastery_option_level': mastery_option_level, 'mastery_attack_bonus': mastery_bonus,
    'skill_mastery_level': skill_mastery_level, 'skill_mastery_bonus': skill_mastery_bonus, 'skill_factor': skill_factor,
    'ameris_earth_party_factor': 1.50, 'combat_earth_attack': combat_attack,
    'ranged_factor': 2.10, 'critical_chance': .60, 'critical_multiplier': 2.20,
    'atk_to_dps': atk_to_dps, 'raid_protection_multiplier': protection,
    'target_states': {}
}
for name, mitigation in [('clean', .13), ('earth_resistance_only', .156), ('both_defense_debuffs', .203125), ('both_defense_and_earth_resistance_debuffs', .24375)]:
    normal = combat_attack * 2.05 * atk_to_dps * 2.10 * mitigation * protection
    hits = [combat_attack * c * atk_to_dps * skill_factor * 2.10 * mitigation * protection for c in [1.28, .96, .96]]
    result['target_states'][name] = dict(normal_noncritical=normal, normal_critical=normal*2.20,
        normal_expected=normal*1.72, skill_noncritical_hits=hits, skill_noncritical_total=sum(hits),
        skill_all_critical_total=sum(hits)*2.20, skill_expected_total=sum(hits)*1.72)
display_dps = 973000  # Screenshot abbreviates the actual value to 973K.
ui_crit_factor = 1 + weapon['Critical']/100
attack_from_ui = display_dps/(atk_to_dps*ui_crit_factor)*1.50
damage_per_combat_attack = 2.05*atk_to_dps*2.10*2.20*.156*protection
prediction = attack_from_ui * damage_per_combat_attack
result['screenshot_check'] = dict(display_dps_approx=display_dps, displayed_weapon_earth_attack=6235,
    reconstructed_weapon_earth_attack=weapon_attack*1.10, displayed_weapon_dps=9352,
    reconstructed_weapon_dps=weapon_attack*1.10*atk_to_dps*ui_crit_factor,
    ui_conversion='Prepared ATK times weapon ATK-to-DPS factor times baseline 5% weapon crit expectation; battlefield party factors applied separately',
    combat_attack_inferred_from_rounded_ui=attack_from_ui,
    predicted_earth_debuff_only_critical=prediction, measured_earth_debuff_only_critical=513669,
    prediction_error_percent=(prediction/513669-1)*100,
    exact_ui_dps_needed_for_measured_hit=display_dps*513669/prediction,
    caveat='Agreement within abbreviated UI precision; exact underlying UI value and engine integer rounding not captured')
(ROOT/'audit/dabin-damage-estimate.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps(result,indent=2))
