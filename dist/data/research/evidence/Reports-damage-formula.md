# Guardian Tales: recovered damage calculation

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
