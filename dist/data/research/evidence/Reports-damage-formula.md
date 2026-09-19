# Guardian Tales: recovered damage calculation

## Latest validation: eight account screenshots explain the remaining gap

**The remaining normal-hit discrepancy is explained by the Illustration Costume ATK bonus.** The earlier theoretical book estimate used +3.3%; screenshot 5215.jpg explicitly shows **+2.2%**. This is precisely the 1.1-percentage-point difference suggested by the damage comparison, now independently observed rather than fitted.

| Screenshot | Observed account value | Previous calculation |
| --- | --- | --- |
| 5209.jpg, Item Collection | ATK +102.7% | +102.7%, matches |
| 5211.jpg, Rifle Knowledge | ATK +10.0% | +10.0%, matches |
| 5213.jpg, Equipment Costume | ATK +10.0% | +10.0%, matches |
| 5215.jpg, Illustration Costume | ATK +2.2% | +3.3%, corrected |
| 5217.jpg, Jewel | ATK +2.0% | +2.0%, matches |
| 5219.jpg, Hero Knowledge | ATK +71.0% | +71.0%, matches |
| 5221.jpg, Guardian Info | ATK +39.8%; ranged ATK +8.9%; ranged skill damage +16.2% | First two match; skill mastery was previously omitted |
| 5223.jpg, Mastery | Ranged ATK level 49, +8.9%; skill-damage level 41 | ATK matches; skill level newly confirmed |

Guardian account level is 340 in the screenshot; its displayed general ATK bonus is still +39.8%, so the prior numeric ATK contribution remains valid. The previous assumption of no additional mastery allocation is superseded.

    ordinary ATK group = 4.339 (previously 4.350)
    Guardian/mastery ATK group = 1.487
    independently reconstructed prepared ATK = 648976.6918
    normal critical shot, Earth debuff only = 513668.2964
    user-measured hit = 513669
    difference = 0.7036 damage, approximately 0.000137%

This calculation uses the screenshot-confirmed bonuses and recovered base stats, not an ATK value back-solved from the hit. The remaining sub-one-point residual is compatible with unreplicated floating-point/intermediate rounding; the exact rounding cause has not been established. This is strong validation of this ordinary-hit setup, not proof of all attacks and combat states. No further screenshots are needed to explain this discrepancy.

### Additional correction for the user's weapon skill

The Guardian Info screenshot reveals ranged skill damage +16.2%, separate from the +75% shown on Dabin's own stats screen. GuardianSkill 204 uses option 1500008; mastery level 41 maps to OptionLevel 81, multiplied by AttackScaleAdd .002 = .162. GetSuperSkillScale (108914) adds the account contributions returned by GetAccountSuperSkillScale (108915) to the equipment/character contributions. CharacterStatsBehaviour.get_SuperSkillDamageMultiplier (28812) combines that sum with the buff multiplier. Therefore, absent additional skill buffs:

    skill multiplier = 1 + .75 + .162 = 1.912

This does not change ordinary normal-attack damage. It supersedes all previous weapon-skill predictions using only 1.75 for this actual account. With only Earth-resistance debuff active and no changing ailments/buffs, the corrected skill prediction is approximately 696858 with no critical hits, or 1533087 if all three hits crit. These skill results have not yet been checked against an observed cast.

The user's images remain local; only their relevant stat values are recorded in the public-facing report.


## Current finding: the measured Dabin hit matches after two corrections

**Mastery correction from the user:** the tested ranged ATK mastery is level **49**, not 51. GuardianSkillLevel maps 49 to OptionLevel 89, hence **+8.9%**, versus level 51 / OptionLevel 101 / +10.1%. With Guardian Level +39.8%, the final account group becomes **1.487**, not 1.499. Earlier level-51 figures below describe the original assumption. The updated script uses level 49. This adjustment changes theoretical prepared ATK from 655872 to approximately 650622 and the debuffed critical hit from 519126 to approximately 514971. It explains most, but not all, of the remaining gap; the remaining predicted damage is about 0.25% above 513669. It does not alter the screenshot-based hit check, which already uses the actual displayed stats.

**The earlier numerical estimates and measurement inversions below are superseded.** Two independently recovered code/data factors were missed: Garam's innate raid Protection and the weapon-specific ATK-to-DPS conversion. The corrected model predicts **513,423** from the screenshot's abbreviated **973K DPS**, versus the user's measured **513,669** critical ordinary hit after Dabin's Earth debuff. Difference: **0.0479%**, compatible with the abbreviated display. This is strong agreement for this setup, not a claim that every damage mechanic or exact engine rounding is now verified.

### Screenshot evidence

**Additional stats screenshot (5207.jpg):** Dabin explicitly displays Earth ATK **648K**, DPS **973K**, baseline Crit Hit Chance **5.0%**, Skill Damage **+75.0%**, party Crit Hit Chance **+40.0%**, party Crit Hit Multiplier **+20.0%**, and Weapon Skill Regen Speed **+13.0%**. These independently support the prepared-ATK interpretation, weapon-only baseline crit term, and assumed skill-damage total. The UI still abbreviates ATK/DPS; an exact value is not directly shown.

For the corrected ordinary critical hit, damage/prepared-ATK = .791505. The observed 513669 implies prepared ATK approximately **648977.58**, compatible with a truncated 648K display and DPS approximately **973466.37**, compatible with 973K. This is a consistency check, not independent recovery of those hidden decimals. Using ATK 648000 literally gives 512895.24; values from 648000 to 649000 give damage from 512895.24 to 513686.745 before engine rounding. UI abbreviation rules have not been independently traced.

The +13% weapon-skill regeneration affects cooldown, not this normal hit's damage. The displayed Fire/Water resistances describe Dabin's incoming damage resistance, not Garam's mitigation.

The two user-supplied screenshots show Myth Dabin level 150, Heavenly Cannon level 150, weapon Earth ATK **6235**, weapon DPS **9352**, weapon critical chance **5%**, skill-damage option **22%**, and hero DPS **973K**. Ameris, Kamael and Eunha have empty weapon slots. The screenshots do not expose exact account collection totals or the unabridged hero DPS. Screenshot inventory: Downloads/5203.jpg and Downloads/5205.jpg; no private screenshots are copied into the public site.

The reconstructed weapon matches both displayed stats:

    5667.853309 * 1.10 matching bonus = 6234.638640 -> 6235 displayed
    6234.638640 * (1/0.7) * (1+0.05) = 9351.957961 -> 9352 displayed

### Correction 1: innate raid protection

Monster 790035, boss_nine_tailed_fox_guild_v2_ice, has option **400005 at level 750**. Option 400005 is guild_raid_monster_protection, Class Protection, ProtectionBase 0, ProtectionAdd .001. The ProtectionAppliedOption constructor (71789) computes base + level*add. Its GetDefenceModifier (71793) returns 1 minus that value:

    protection = 750 * .001 = .75
    remaining damage multiplier = 1 - .75 = .25

This is separate from Garam's 900 DEF, and applies even when the boss starts with no player-applied buffs/debuffs. The earlier statement that a missing positive bonus could not explain an overprediction remains true, but it overlooked this existing target-side reduction.

### Correction 2: weapon-specific DPS conversion

WeaponSpec.CalcAtk2Dps (59059) uses projectile timing for projectile weapons instead of the generic rifle type's Atk2Dps=1. Heavenly Cannon uses projectile super_energy_earth (AtkModifier=1), magazine size 1, ShootTerm .8 and ReloadTime .7:

    Atk2Dps = 1 * 1 / ((1-1)*.8 + .7) = 1.4285714286
    normal shot coefficient = 2.05 * Atk2Dps = 2.9285714286

CalculateAttackModifierFromDps (57370) uses StatCalculator.GetAtk2Dps (108913), which calls the weapon specification getter (59058), so the generic weapon-type constant was the wrong value to use. Weapon skills described in DPS also receive this conversion.

### Reconstructing this hit from the UI

The baseline UI DPS path uses prepared ATK, weapon Atk2Dps and baseline weapon critical expectation. Battlefield party effects are applied separately in this reconstruction. Weapon DPS independently confirms the 1.428571 conversion and 1.05 critical expectation.

    prepared ATK ~= 973000 / (1.4285714286 * 1.05) = 648666.667
    combat Earth ATK ~= prepared ATK * 1.50 Ameris = 973000

The equality between 973000 combat ATK and the displayed DPS number is coincidental: the UI conversion and Ameris factor are both 1.50 here. Do not generalize DPS = ATK.

    critical normal damage ~= 648666.667
                            * 1.50       [Ameris Earth ATK]
                            * 2.10       [Kamael + Eunha ranged damage]
                            * (2.05/.7)  [normal shot, weapon DPS conversion]
                            * 2.20       [critical multiplier]
                            * .10        [900 DEF]
                            * 1.30       [Earth versus Water]
                            * 1.20       [Dabin Earth-resistance debuff]
                            * .25        [Garam innate raid protection]
                            = 513422.91

The measured hit is 513669. Ignoring intermediate rounding, an unabridged UI DPS of approximately 973466.37 would reproduce it and is compatible with the displayed 973K. That underlying DPS is inferred, not directly observed. No arbitrary correction constant was introduced.

The original theoretical max account, with the two corrections, predicts about **519126** for this debuffed critical hit, only **1.06% above** the measurement. Its collection/awakening eligibility totals remain provisional. The huge previous discrepancy was primarily omitted Protection plus incorrect weapon DPS conversion, not evidence that the max-level weapon growth was wrong.

**Reproduction:** estimate_dabin_damage.py and audit/dabin-damage-estimate.json contain the corrected factors, all target-state results, and screenshot comparison. Earlier inferred ATK 347667 and the old damage tables are historical and invalidated by these corrections. Skill/rotation predictions still require checking actual skill bonuses and effects changing during the cast.


Scope: static ARM64 analysis of the supplied APK (3.54.0). These are the built-in client paths. IFix patch checks can replace the methods; this is not verification of the live server or every game mode.

## Confirmed core

`Oak.DamageCalculator.GetDefenseModifier(defense)` at 0x62a742c returns:

    100 / (100 + defense)

Instructions 0x62a746c–0x62a7484 load 100.0, add defense, and divide. GetDamage obtains effective defense from virtual slot 9, `CharacterStatsBehaviour.DefenseForDamageType`, so this input is not necessarily the DEF displayed on the hero screen.

`CalculateDamageOnly` sets the critical multiplier to 1 for a noncritical hit. On the critical path, 0x62a8b8c–0x62a8b90 add 2.0 to the additional critical multiplier. At 0x62a99a0 it multiplies the per-element integer damage by this critical multiplier before calling GetDamage.

## Ordinary character-target path

For each elemental damage component, an explanatory reconstruction is:

    damage = max(0, truncate_toward_zero(
        (incoming * 100/(100+effectiveDefense)
                  * (1-elementalResistance/100)
                  * applicableAilmentBoost
         - flatDamageReduction)
        * elementalDefenseDamageScale
        * defenseDamageMultiplier
        * targetOptionModifier
        * damageModifier
    ))

Here `incoming` already includes the critical multiplier and upstream attack/action modifiers. This expression describes the ordinary character-target branch, not every branch of GetDamage. Actual arithmetic uses single-precision floats, and earlier stages also convert damage to integers, so combining all stages into one expression can differ at rounding boundaries.

Order evidence in GetDamage:

- 0x62a7190–0x62a71a4: DefenseForDamageType → GetDefenseModifier → multiply.
- 0x62a72c0–0x62a72e8: GetElementalResistance → (100 − resistance) × 0.01 → multiply. Read-only inspection of the literal at 0x176bb00 confirms 0.01f.
- 0x62a72ec–0x62a73cc: conditional ailment/useHighestBoost branches, followed by multiplier application. Exact ailment boost values were not resolved in this investigation.
- 0x62a73d0–0x62a73ec: get_DamageReduction is subtracted, then GetElementalDefenseDamageScale is multiplied.
- 0x62a73f0–0x62a7424: get_DefenseDamageMultiplier, targetOptionModifier and damageModifier are multiplied.
- 0x62a7250–0x62a7260: float-to-int truncation and clamp negative results to zero (with a separate infinity handling detail).

## Upstream calculation

CalculateDamageOnly processes elemental damage separately. The ordinary attack path reads GetElementalAttack (virtual slot 22), DamageInfo.modifier, attacker option multipliers and MeleeAttackMultiplier / ProjectileAttackMultiplier. It stores intermediate integer components, then applies critical scaling and calls GetDamage per component. Attack coefficients are action-specific; a screen DPS value is not a substitute for this per-hit input.

The same method also contains critical-chance evaluation, target option processing, immunity-ignore handling, special character options, a global BasicAttackModifier and later ApplyConvertDamagedBehaviour. These are reasons a complete raid/build calculator needs more than one short equation.

## Exceptions

The GetDamage bit mask 0x4a0 bypasses the ordinary defense/reduction path for WallHit (0x20), Trap (0x80) or IgnoreDefense (0x400). CalculateDamageOnly also disables the usual critical scaling for these flags. IgnoreOptions is 0x800. Flags were read from the recovered metadata's field-default table. Other branches check immunity/invincibility, special character state and target type, including returns of zero or one.

The elemental configuration files contain +30 / −30 matchups for the standard elements. Do not treat all nine stored element types as the same simple triangle: Nebula, Debris and Void also exist. Runtime elemental resistance combines default matchup resistance and other resistance sources.

## Simple examples

Assume a noncritical 3,000-damage input with no other modifiers or flat reduction:

| Effective defense | Damage multiplier | Approximate damage |
| --- | --- | --- |
| 0 | 1 | 3,000 |
| 100 | 0.5 | 1,500 |
| 200 | 1/3 | 1,000 |
| 400 | 0.2 | 600 |

At defense 200, a baseline critical hit becomes approximately 2,000. Reducing effective defense from 200 to 140 changes the noncritical result from 1,000 to 1,250: a 25% increase. This example assumes the debuff really reduces this effective-defense input by 30%; stacking rules are not established by this example.

## Evidence files

- disassembly/DamageCalculator.GetDamage.asm
- disassembly/DamageCalculator.GetDefenseModifier.asm
- disassembly/DamageCalculator.CalculateDamageOnly.asm
- disassembly/Oak.CharacterStatsBehaviour.GetElementalResistance.asm
- disassembly/Oak.CharacterStatsBehaviour.GetElementalDefenseDamageScale.asm
- ../decoded-static/elementalmatrix.json and elementalmatrix2.json

The Lua base/damage_util.lua only displays damage numbers; it does not calculate the damage formula.


## Follow-up: hero attack, weapon DPS and account bonuses

The built-in StatCalculator.GetFinalElementalAttack overload (method 108863, 0x759e900) takes characterAttack explicitly. Its ordinary structure is:

    prepared_element_attack = equipment_element_attack * character_attack
                           * (1 + ordinary_attack_bonus_sum)
                           * (1 + final_account_attack_bonus_sum)
                           * mode_balance_modifier

Equipment attack is summed across the supported equipment slots, with WeaponAttackStatFinalScale applied per slot. Ordinary bonuses include applicable equipment option attack scales, CharacterOptionStats elemental attack scales, the first account group, and blessing attack scale. This is preparation of stats, before battlefield buffs and action-specific calculation. Do not multiply displayed hero ATK by collection bonuses again if already included.

Constants..cctor (method 11773) explicitly constructs AccountScaleOptionTypes with HeavenHold=1, HeroCollection=4, ItemCollection=2; it constructs AccountFinalScaleOptionTypes with GuardianLevel=8, GuardianMasteryOptions=16. GetAccountAttackScale applies the selected calculation-mode adjustment before summing contributions. Thus collection ATK and mastery ATK belong to different groups in this built-in path. Guardian Level and Mastery ATK are summed within their shared group, not multiplied individually. Only applicable ATK options are meant here, not all bonuses granted by a collection or mastery node.

Illustrative preparation: equipment attack times hero coefficient = 10,000; ordinary ATK bonus sum = +200%; Guardian Level ATK = +30%; Mastery ATK = +10%; mode scale = 1. Result: 10,000 * 3 * 1.4 = 42,000. Another +10 percentage points of collection ATK changes this to 43,400 (+3.33%). Another +10 percentage points of mastery ATK, instead, changes it to 45,000 (+7.14%). These percentages are examples, not the user's account values.

Weapon.CalcElementalAttack (115057, 0x773224c) compares the requested attack element with characterElemental, and multiplies by 1 + the matching-element constant / 100 when equal. ElementalTypeExtensions..cctor sets this constant to 10. Thus the built-in matching-element weapon attack bonus is 10%; it is distinct from enemy elemental matchup resistance. Runtime patches remain unverified.

StatCalculator.GetDpsFactor (108909) returns atk2dps * (1 + clamp(criticalChance / 100, 0, 1)). The simple GetDps overload (108908) multiplies this by attack. DPS is therefore derived from attack, weapon attack-to-DPS conversion and baseline expected critical damage; it is not a per-hit damage input. This specific helper is not proof that every UI DPS display includes every special critical-damage modifier. IBattleActionExtensions.CalculateAttackModifierFromDps (57370) uses GetAtk2Dps to turn DPS-described action coefficients into attack coefficients; it does not multiply a displayed crit-averaged DPS number by another full crit roll.

CharacterStatsBehaviour.GetElementalAttack (28798) subsequently applies battlefield attack buffs, AI attack modifiers, final attack scale and attack damage multipliers. CalculateDamageOnly then handles action coefficients, attack-type multipliers and critical damage. Some attack/skill scripts have extra attacks and conditional branches.

## Follow-up: Dabin, Ameris, Kamael, Eunha with Noel's exclusive weapon

The user's setup is each hero's own exclusive weapon except Eunha, who equips Noel's exclusive weapon. The recovered item is cwp_gnomedoctor_epic (9050564), or its evolved variant cwp_gnomedoctor_myth (9050565). Both have EarthDamage and ExclusiveCharacterId=677. Noel-specific option 310677 and skill-level option 340677 require character origin 677, so Eunha does not acquire Noel's character-exclusive effects merely by equipping the basket. Eunha is intrinsically Basic (None), although her weapon damage here is Earth.

Dabin/sunyeo, Ameris/dragon_daughter and Kamael are intrinsically Earth. Their Earth attacks qualify for matching-element weapon attack bonus; Eunha's Earth attack does not. All Earth components can still exploit the water boss's elemental weakness.

Party effects are recovered as separate categories: Ameris option 10500 is Earth attack; Kamael and Eunha option 10820 is ranged attack; Dabin option 10900 is critical chance. Do not multiply each hero's party ATK percentage as an independent multiplier. The hero records alone are not fully awakened totals: awakening and Myth options must also be included. For example, if Kamael and Eunha each supply +50% ranged attack in the selected build, those two contributions form +100% ranged attack (a 2x factor with no other ranged modifiers), not 1.5 * 1.5.

Dabin's SunyeoSpecialOption.lua filters recipients by character element. Its CriticalPerMatchElemental buff counts matching character elements through CharacterSpec. Changing Eunha's weapon does not make her a fourth Earth character for this passive. The supplied buff contains both legacy EachCritical/MaxCritical and EachCriticalScale/MaxCriticalScale keys; no final numerical critical contribution from this passive is asserted here without completing the dictionary-key/patch audit.

Kamael's ManualKamael action applies buff_kameal_manual (330225): ranged defense scale -0.20, duration 3 seconds, group buff_orb_group, ApplyLowerLimit=true. Eunha's special option supplies buff_dokkaebi_special_option_0 (3205420): general defense scale -0.20, duration 3 seconds, group defense_down_group, ApplyLowerLimit=true. Her ordinary special option also supplies a 3-second, 10-stack ATK buff at +0.02 per stack; its Myth replacement is +0.03 per stack. These are character effects, separate from her own exclusive-weapon effects.

Ameris's exclusive option 310533 adds a DPS-based normal-attack effect and references buff_dragon_daughter_weapon_1: a 3-second critical-multiplier buff with 0.20 per stack and a 3-stack cap. Action timing and active stacks matter. The normal attack is tagged Projectile despite her weapon classification.

Water Garam's current-style raid record is monster 790035, boss_nine_tailed_fox_guild_v2_ice: StaticDef=900, StaticAtk=3000, alongside legacy Def=30. CharacterSpec.Defense (34289) returns positive static defense before the level-growth path. This supports fixed base DEF for this supplied raid variant; it is not a statement about every historical mode or boss. The level-growth Def field is not the value to plug into this example.

CharacterStatsBehaviour.DefenseForDamageType (28818) adds applicable general and ranged limited defense contributions, then applies the configured lower bound. It combines these with other defense terms and final/mode scales. With only the two -20% debuffs above, no intervening cap and no other DEF modifiers:

    effective_DEF = 900 * (1 - 0.20 - 0.20) = 540
    defense_multiplier = 100 / (100 + 540) = 0.15625

Without these debuffs the multiplier is 100 / 1000 = 0.1. Therefore these two active debuffs increase otherwise identical ranged hits by 56.25%, under those assumptions. Their distinct groups matter; this does not prove that arbitrary same-group debuffs can stack.

## Worked hit, with explicitly illustrative attack input

Assume all personal/account/party/action/attack-type effects have already produced 100,000 incoming damage BEFORE critical, defense and elemental matchup. This is an illustrative intermediate value, not a computed stat for the user's unprovided account. Assume ordinary damage, both debuffs active, no extra elemental resistance, no ailment boost, no flat reduction and no further target or mode damage modifiers.

    noncritical Earth hit = 100,000 * 100/(100+540) * 1.30 = 20,312.5
    ordinary 2x critical = 40,625

The actual implementation truncates at intermediate stages. With +0.60 additional critical multiplier active on the attacker, this conditional example becomes 100,000 * 2.60 * 0.15625 * 1.30 = 52,812.5 before truncation. Do not apply that additional critical multiplier to every team member indiscriminately.

For critical chance c (0 to 1) and extra critical multiplier k, average critical factor is 1 + c * (1 + k); an individual hit instead uses either 1 or 2 + k. Total raid damage is the sum over actual landed hits, proc hits and skills with their time-varying buff/debuff state. Weapon max level alone does not specify awakening, Myth/evolution, blessing, rolls, engraving, accessories/cards/relic/merch, account bonuses or leader/rotation. Exact personal damage cannot be produced from these four names and weapon levels alone.


## Fixed theoretical build requested by the user

Assumptions: highest available hero and weapon forms in the supplied 3.54.0 snapshot; maximum level, awakening, limit breaks, blessing, weapon rolls and engraving; full valid account collections and Heavenhold/Guardian Level bonuses; ranged ATK mastery level 51; no other mastery allocation assumed; only the specified weapons equipped (Dabin/Kamael/Ameris own EX, Eunha uses Noel EX). No accessory, cards, merchandise or relic. Regular water Garam begins without active debuffs, ailments or temporary target buffs. Permanent hero party effects still apply at battle start. This is an idealized build, not a measured account.

Snapshot limitation: Ameris hero 535 and weapon 9100364 have no Myth successor in the supplied data. Use these highest available forms rather than assigning fictional Myth growth. Dabin hero 20596/weapon 9030535, Kamael hero 20425/weapon 9060535, and Eunha hero 20542/Noel weapon 9050565 are present.

### Mastery level 51

GuardianSkillLevel row SkillLevel=51 gives OptionLevel=101. Ranged ATK option 1500005 has AttackScaleBase=0 and AttackScaleAdd=0.001, giving +0.101 ATK, or +10.1 percentage points. This is not +51% and is not itself a hit multiplier of 1.101 after Guardian Level.

The option uses CoopClassType=Projectile. CoopClassTypeConditionForCharacter.CanApplyToCharacter (70462, 0x69dec50) compares the character specification's class with the option's required class. The chosen Dabin, Ameris and Eunha rows are projectile; Kamael remains supporter. Thus this single mastery choice does not add ATK to Kamael. Ranged damage type and ranged hero class are different concepts.

GuardianLevel=300 carries option 63 at level 398; option 63 has AttackScaleAdd=0.001. Therefore, under the previously recovered account grouping and ordinary unadjusted mode path:

    Dabin/Ameris/Eunha final account ATK factor = 1 + 0.398 + 0.101 = 1.499
    Kamael final account ATK factor = 1 + 0.398 = 1.398

The mastery allocation's relative gain for eligible heroes is 1.499/1.398 - 1 = approximately 7.2246%, with all other stats fixed.

### Fully awakened party contributions

Reconstruction of the selected awakening trees, using generic NodeOptions plus OriginId-specific special nodes, yields option 10820 level 300 for both Kamael and Eunha. Each chosen hero has an additional base level 250 of the same party option. Buff 10820 gives 0.001 ranged attack per level: each contributes +55%, combining to a ranged factor of 2.10 before other ranged modifiers.

Ameris has base option 10500 level 250 plus awakening level 250, giving +50% Earth attack. Dabin has base critical-party option 10900 level 200 plus awakening level 200: +40 percentage points critical chance. Myth awakening also adds option 10910 level 200, with CriticalScaleAdd=0.001, giving +0.20 critical multiplier. Dabin's element-count passive is resolved below for the built-in code: it adds 15 percentage points with three Earth heroes. Live hotfix equivalence is not established.

### Additional target debuff found

Dabin EX option 310596 references buff_sunyeo_cwp_option_0 (3105960): ClassName=DamageResistance, Elemental=Earth, ResistanceBase=-20, Duration=5 seconds. ManualSunyeoBattleAction.lua parses this Debuff and applies it on its relevant hit path (around line 487). This is distinct from the team's two defense debuffs. The prior worked 20,312.5 example deliberately assumed no extra elemental resistance, and is therefore not a fully debuffed maximum-build prediction.

GetElementalResistance combines default matchup resistance and active resistance multiplicatively. With the base Earth-vs-Water multiplier 1.30 and this -20 resistance effect alone, the elemental damage factor becomes 1.30*1.20=1.56, not 1.50.

Let X be the actual hero/action damage after all attacker-side stats, party effects and action modifiers, before critical and target mitigation. With ordinary Earth ranged damage and no ailments, flat reduction, extra target scales or other DEF modifiers:

| Target state | Defense | Element factor | Noncritical damage before truncation |
| --- | --- | --- | --- |
| No debuffs | 900 | 1.30 | X * 0.13 |
| Only the two -20% DEF categories active | 540 | 1.30 | X * 0.203125 |
| Both DEF debuffs plus Dabin Earth-resistance debuff active | 540 | 1.56 | X * 0.24375 |

This comparison holds X fixed. In a real fight X changes with team/self stacks and skills, so the last row is not a complete maximum-damage state by itself. The order in which the first hits apply debuffs also matters.

### What remains unresolved for an absolute per-hero prediction

The user has supplied sufficient assumptions; no additional account screenshots are required to define this theoretical build. A validated absolute result still requires completing the offline stat reconstruction: region/version-valid full collection totals (not a blind sum of all alternate and future records), full awakening/weapon-option application including exclusivity, the passive dictionary-key/patch audit, and the chosen action's coefficient and hit sequencing. The confirmed factors above are not an absolute attack or raid-DPS result. No specific maximum hero damage number is asserted by this report.


## Historical, superseded numerical analysis: Dabin normal shot and weapon skill: recovered action calculation

Scope: the fixed theoretical build above; Dabin leads for the weapon skill. Each fresh-target example starts independently against water Garam, without ailments or temporary stacks. These are verified action factors, not a completed absolute maximum-ATK reconstruction.

### Ordinary normal shot

ManualSunyeo has ActionDuration 0.8, StaminaPerAction 100 and StaminaBreakModifier 1. The native discrete-stamina helper (116108), GetTotalDuration (58517), and built-in stamina constants (refill 80 per second, break time 0.5) give:

    shots = 100 / 100 = 1
    full cycle = (1 - 1)*0.8 + max(0.5, 0.8) + 100/80 = 2.05
    ordinary shot coefficient = 2.05 * Atk2Dps = 2.05

The rifle's Atk2Dps is 1. The Lua explosion calls damage once per target; do not count the zero-modifier visual projectile as an additional damaging hit. This excludes Dabin's separate enhanced/role attack. The normal-shot path gains another factor 1.30 only while its role-hit buff is active; this is absent in the fresh-state example.

The Lua path creates/publishes damage BEFORE applying buff 3105960. DamageCommand.Create (35198) invokes DamageCalculator.Calculate synchronously, so the shot does not benefit from its own newly applied Earth-resistance debuff. Subsequent attacks can benefit. Teammates may apply their debuffs earlier in an actual opening; the isolated example intentionally fixes that ordering.

### Myth EX weapon skill

CwpSunyeo's Myth override is 3.2, divided 40%, 30%, 30% across three hits. The field-state hit timings are 0.30, 0.45 and 0.60 seconds; these are not measured from the player's button press.

    base hit coefficients = 1.28, 0.96, 0.96
    skill damage bonus = 22% weapon roll + 45% engraving + 8% awakening = 75%
    adjusted hit coefficients = 2.24, 1.68, 1.68
    adjusted total coefficient = 5.60

The weapon-skill handler itself does not apply the ordinary shot's Earth-resistance debuff. A cast on a clean boss and a cast after a normal shot are therefore different scenarios.

### Critical chance resolved

CriticalPerMatchElementalBuff.Create (25110) references managed literal keys EachCritical and MaxCritical. The GOT entries 0x9c43948 and 0x9c43950 resolve to literal indices 10013 and 16496 respectively. This establishes the built-in reader uses 5 percentage points per matching hero, capped at 20, rather than the other similarly named JSON fields.

Three Earth heroes give Dabin +15 percentage points. With the weapon's 5% and her fully awakened 40% party effect, critical chance is 60%. Her Myth party critical-damage contribution makes the critical multiplier 2.20. Expected critical factor is 1 + 0.60*(2.20-1) = 1.72. Expected damage is a statistical average, not an additional possible individual hit.

### Numerical factors

Define A as Dabin's combat Earth ATK after personal/account/weapon and Earth-ATK effects, but BEFORE ranged-damage, action, skill-damage, critical and target modifiers. This is not the weapon's displayed DPS. Kamael plus Eunha give the ranged factor 2.10.

| Attack | Clean Garam, noncritical | Clean Garam, critical | Both DEF debuffs and Earth-resistance debuff, noncritical |
| --- | --- | --- | --- |
| Ordinary normal shot | 0.55965*A | 1.23123*A | 1.04934375*A |
| Weapon skill hit 1 | 0.61152*A | 1.345344*A | 1.1466*A |
| Weapon skill hit 2 | 0.45864*A | 1.009008*A | 0.85995*A |
| Weapon skill hit 3 | 0.45864*A | 1.009008*A | 0.85995*A |
| Weapon skill total | 1.5288*A | 3.36336*A (all three critical) | 2.8665*A |

Example ONLY, using A=100,000: the clean normal shot is approximately 55,965 noncritical or 123,123 critical. The clean weapon skill is approximately 61,152 + 45,864 + 45,864 = 152,880 if none crit. This 100,000 is a normalization input, NOT the reconstructed maximum build ATK. Engine intermediate rounding can alter final integers. The weapon-skill critical total is conditional on all hits critting; it does not establish how the random draws are shared between hits.

### Remaining absolute-stat blocker

No further user build details are needed. The incomplete part is offline validation of A, particularly max-level stat scaling and the full collection/book option application. Character and weapon max-level functions add coefficient levels for progression; simply applying the level-100 growth formula is insufficient. CharacterSpec.Attack (34288), WeaponEnhanceExtension.GetElementalAttack (58973), and StatCalculator.AlterStatCalculate (108846) contain an alternate piecewise-growth path whose activation and defaults still need reconciliation with this snapshot. Do not label a number as the exact maxed build until these paths and intermediate rounding are reproduced.


## Historical, superseded numerical analysis: Practical Dabin damage estimate from actual snapshot stats

> **Measurement warning:** The user measured 513,669 on a critical ordinary shot after Dabin's first shot applied her Earth-resistance debuff, with teammates unequipped to isolate Dabin. The estimate below predicts 1,453,554 for the corresponding Earth-debuff-only state (not the clean or fully debuffed columns). It is 2.83 times the observation and must not be treated as a validated practical prediction. Actual account equivalence to the theoretical max build and absence of other effects have not been independently verified. Do not fit a hidden correction factor to this single hit.

This section supersedes the placeholder A=100,000 example for the requested build. It is an estimate, not a measured or bit-exact live-client result. Reproducible calculation: estimate_dabin_damage.py; output: audit/dabin-damage-estimate.json.

The estimate uses the actual Myth Dabin hero row 20596 (Atk 1.5244) and Myth EX row 9030535 (EarthDamage 478.17), both with base growth 1.02. ConstantsData.Expand (80267) supplies default alternate-growth thresholds [83,100] and attack growth rates [1.026,1.006]. The first threshold is initialized at 0x6c28750; the second at 0x6c28800. Rate float constants are at 0x176ba80 and 0x176b170. StatCalculator.AlterStatCalculate (108846) applies the preceding level's endpoint before switching rates.

Model assumption: that alternate growth path is active for these playable hero/weapon stats at internal level 149 (displayed level 150). Its runtime activation remains unverified. The resulting growth multiplier is:

    1.02^82 * 1.026^17 * 1.006^50 = 10.583230466
    Dabin hero attack factor = 1.5244 * growth = 16.1330765
    EX Earth attack, max +12% roll = 478.17 * growth * 1.12 = 5667.8533

The hero value is an internal multiplier, not a displayed equipped-ATK value. Reconstructed ordinary ATK factor: 1 + .710 awakening + .250 blessing + .150 limit break + .150 engraving + .710 hero collections + 1.027 item collections + .253 applicable equipment-book categories + .100 Heavenhold = 4.35. The .253 book estimate includes .100 rifle, .100 equipment costume, .033 super costume and .020 jewel. Full book eligibility/application remains provisional.

    combat Earth ATK = 16.1330765 * 5667.8533 * 1.10 matching weapon
                    * 4.35 ordinary ATK * 1.499 Guardian/mastery
                    * 1.50 Ameris Earth party buff
                    = approximately 983,809

Dabin leads. Mode scales are assumed one; no temporary self ATK stacks, role-hit buff or boss ailment. All skill hits land. Each clean-boss example starts independently.

| Target state | Normal noncrit | Normal crit | Skill total, no crits | Skill total, all crits | Skill average with 60% crit |
| --- | ---: | ---: | ---: | ---: | ---: |
| Clean Garam | 550,589 | 1,211,295 | 1,504,047 | 3,308,903 | 2,586,960 |
| Both DEF debuffs only | 860,295 | 1,892,648 | 2,350,073 | 5,170,160 | 4,042,125 |
| Both DEF debuffs + Earth-resistance debuff | 1,032,353 | 2,271,178 | 2,820,087 | 6,204,192 | 4,850,550 |

Clean-boss weapon skill hit estimates before crit: 601,619 + 451,214 + 451,214. A skill after Dabin's first ordinary shot can already benefit from her Earth-resistance debuff; the clean column is not a normal-shot-then-skill rotation. Do not interpret the averages as guaranteed damage or the skill totals as damage per second.

Precision limitation: alternate-growth activation, collection/book eligibility, runtime patches and intermediate rounding have not all been validated against the running game. These are therefore rounded practical predictions using real data inputs, not exact observed results. All values scale proportionally with any correction to the reconstructed combat ATK.


## Damage-source coverage audit after the measured critical hit

Checked against estimate_dabin_damage.py and the decoded options/building records.

| Source | Included in earlier estimate? | Application / remaining issue |
| --- | --- | --- |
| Hero and EX base stats, max progression | Yes | Hero 20596 and weapon 9030535; alternate growth activation remains assumed. Both were assigned the same growth curve: this is a priority to verify, not an established live-client result. |
| Hero / item collections and book bonuses | Yes | Ordinary ATK group. Exact eligibility and book contributions remain provisional. |
| Earth against Water | Yes | Target matchup factor 1.30 in the recovered path. |
| Matching Earth weapon and Earth hero | Yes | Separate weapon attack factor 1.10 in the built-in code. |
| Ranged ATK mastery level 51 | Yes | +.101 alongside Guardian Level +.398, for combined factor 1.499; class eligibility matters. |
| Awakening / Myth tree | Yes | +.710 ordinary ATK, +.08 skill damage, party enhancements and action overrides handled separately. Tree effects are not all ATK percentages. |
| Party buffs | Yes | Ameris Earth ATK, Kamael/Eunha ranged damage, Dabin crit chance and multiplier. |
| Hero / EX conditional effects | Partially, by scenario | Permanent effects included; role-hit bonus, enhanced shots, temporary self/team stacks and chain buffs deliberately absent from clean-state model. Their actual activation must be checked in a replay. |
| Boss DEF and Earth resistance debuffs | Yes | Scenario-specific. Measured comparison uses ONLY Dabin Earth-resistance debuff. |
| Heavenhold Strength Tower | Yes | Row 102710 grants option 10 at level 10. AttackScaleAdd .01 gives +.10 ordinary ATK. |
| Guardian Level | Yes | An additional source not explicitly in the user's list. |
| Blessing, weapon MLB and engraving | Yes | Ordinary ATK and/or skill damage according to option class, not universal damage multipliers. |
| Weapon option rolls | Yes | +12% weapon Earth attack and skill roll included. |
| Accessories, cards, merch, relics | No, by requested build | Only EX equipped. |
| Boss ailments / special mode modifiers | Assumed absent / neutral | Could change a real hit; not established by removing teammates' weapons alone. |

Tower example: with all other ordinary bonuses held fixed, the provisional ordinary factor was 4.25 without the tower and 4.35 with it. Its relative damage contribution in that model is 4.35/4.25 - 1 = 2.35294%, not 10% final damage. This numerical example depends on the provisional full-bonus total; the additive grouping is supported by the native stat path.

A missing positive bonus alone cannot explain an overprediction. Priority checks are growth/progression conversion, whether ATK values already include some bonuses, option eligibility/stacking and the ordinary-shot coefficient. The observation alone does not uniquely identify which assumption is wrong.


## Historical, superseded numerical analysis: Testing the formula against the measured 513,669 critical hit

Observation: ordinary Dabin shot, critical, after a previous normal hit applied her Earth-resistance debuff. Teammates were unequipped. The exact live account stats and runtime effects are not yet independently established.

Under the recovered candidate factors:

    damage ~= combat_Earth_ATK * 2.05 * 2.10 * 2.20 * 100/(100+900) * 1.30 * 1.20
    damage ~= combat_Earth_ATK * 1.477476
    inferred combat_Earth_ATK ~= 347,666.56

This is a measurement-derived constraint, NOT independent confirmation of every factor. Keeping the earlier estimated ATK instead would require an attack coefficient about 0.724446, or alternatively base DEF about 2729.75 if only DEF changed. Neither value has been established in the relevant data path, so neither is adopted as a correction.

Additional native checks: DefaultModifier.BasicAttackModifier (39745) reads its first float field; constructor 39757 initializes that field to 1.0. This rules out a built-in default reduction in that particular field, not every possible stage modifier or hotfix. WeaponElementalUpOption.SetItem (72533) stores Weapon.RawTotalAttack, and GetElementalAttack (72531) multiplies it by the option rate. This supports treating the +12% Earth roll as a percentage of raw attack for this pure-Earth weapon.

Conditional, falsifiable predictions for otherwise identical ordinary attacks:

| Test | Predicted damage |
| --- | ---: |
| Noncritical after the same debuff | approximately 233,486 |
| Critical before the debuff | approximately 428,058 |

Compare the same attack type and keep temporary buffs constant. The ratio of critical to noncritical should be 2.20 and debuffed to clean should be 1.20 if those parts of this model are correct. Multiple unknowns cannot be identified uniquely from one hit.

If the normal coefficient and +75% skill damage are also correct, and target state stays unchanged, all-critical weapon skill total would be approximately 1,403,193 and no-critical total approximately 637,815. These are additional model predictions derived from the measurement, not observed damage, and can fail if an ailment or other effect changes between skill hits.

Requested independent inputs: Dabin's displayed DPS and her weapon's displayed ATK for the exact test build, plus whether the assumed collection/mastery maxima apply. Displayed DPS must itself be interpreted through its critical/party-bonus path; it is not directly substituted as ATK.


## Protection coverage and the complete stat-to-hit sequence

Snapshot scan: all 138 monster variants in IDs 790000..790999 carry option 400005. 115 variants have level 750 (75% protection); the 23 variants with ElementalType=None have level 730 (73% protection). These are variants, not 138 distinct boss designs. Examples include Water Harvester 790055, Water Shadow Beast 790045, Fire Lava Slime King 790153 and Water Garam 790035. Across the entire monster table, 414 rows carry the option, including regional variants: 345 at 75%, 69 at 73%. This is evidence for the supplied snapshot, not a claim that historical, conquest, guild-war or every future boss shares these settings.

At 75% protection, an otherwise calculated 100000 damage becomes 25000. DEF reduction and Earth-resistance reduction affect their own factors; the ProtectionAppliedOption reader returns a separate multiplier. Protection is innate, so 'no starting buffs/debuffs' does not remove it.

Weapon preparation in the recovered model:

    growth = 1.02^82 * 1.026^17 * 1.006^50 = 10.583230466
    EX base 478.17 * growth = 5060.583312
    best Earth attack roll: *1.12 = 5667.853309
    matching Earth weapon/Earth hero: *1.10 = 6234.638640

This matches the screenshot's 6235. It is the weapon contribution, not the whole equipped hero ATK. Enemy element has no role in this +10% matching-weapon bonus.

Theoretical hero preparation:

    hero base factor 1.5244 * growth = 16.13307652
    6234.638640 * 16.13307652 = 100583.902276
    * ordinary ATK group 4.35 [provisional fully-maxed bonuses]
    * Guardian Level/mastery group 1.499
    = 655872.422377 theoretical prepared ATK

The observed account displays 648K prepared ATK. Those account totals must not be presented as exactly reproduced: the theoretical preparation is still about 1.06% higher than the approximately 648978 implied by the measured hit. For the practical hit check use the observed ATK/DPS instead of multiplying these bonuses on top of the displayed ATK again.

After preparation: Ameris Earth ATK *1.50; ranged party bonuses *2.10; normal coefficient 2.05*(1/.7); critical *2.20; Garam DEF factor .10; Earth/Water matchup *1.30; Earth-resistance debuff *1.20; innate Protection *.25. This order is explanatory algebra; engine rounding and internal ordering are not bit-exactly emulated.

The weapon's .7-second reload parameter belongs to its reference DPS conversion; it does not assert Dabin's actual character action fires every .7 seconds. Her stamina/action cycle is separately represented by the 2.05 coefficient. Weapon displayed DPS = weapon ATK * (1/.7) * 1.05, giving 9352. Hero displayed baseline DPS uses the same conversion before battlefield party effects in this reconstruction.

For the Myth weapon skill replace normal coefficient 2.05*(1/.7) with hit coefficients [1.28,.96,.96]*(1/.7)*1.75. The observed +75% Skill Damage applies to weapon-skill hits, not to the ordinary shot. Target state and critical outcomes must be evaluated per hit if they change during the cast.
