# Roster-wide effect audit — snapshot 3.54.0

This audit inventories every simulator hero stage and equipment record. It is **not a claim that every script has been converted into a verified formula**. The website now labels each selected loadout as a partial damage model and exposes its option coverage, including previously silent `BattleActionParameter` records. Each attack keeps its own coefficient / sequence limitations.

Rebuild the downloadable inventory with `node audit_raid_effects.cjs`. It includes all 653 hero stages, 1,998 equipment records, linked option records and candidate references across 1,272 recovered Battle Lua files. All 2,670 action records are also covered by the separate hit-sequence evidence audit. Hero action lists use their default EX; the equipment list includes other weapon-skill references. Textual source matches are candidates, not proof of a correct model or a complete call graph.

## New damage models

These factors apply to damage, independently of prepared ATK and the displayed DPS estimate. Local native evidence is in `passive-evidence/`.

| Option class | Implemented behavior | Conditions / remaining limits |
|---|---|---|
| WeaponTypeDamageBoost | Multiply by `1 + Modifier` when either equipped weapon slot matches | Garam’s bow bonus and the shield-weapon condition; owner eligibility still applies |
| AfterSkillDamageBoost | Selectable `1 + Modifier` window | Duration from ApplyTime; skill trigger / timing not replayed |
| NoHitDamageBoost | Selectable `1 + Modifier` window | Native timer must reach RequireTime; activation remains manual |
| HalfVampireSpecial | Selectable `1 + DamageModifier` while the named buff is active | Source hero only; additional script fields such as role/manual/stack modifiers are not implied to be implemented |
| LowHpDamageBoost | If HP ratio ≤ HpRatio: `1 + clamp(1 − HP ratio, MinModifier, MaxModifier)`; otherwise 1 | Uses current source-hero HP; default 100% |
| GourrySpecial | `1 + HP ratio × DamageModifier` | Source hero’s HP; defensive component is outside direct damage |
| MerchDamageBoost with BossAlwaysApply | Boss damage modifier remains applied | Native boss branch substitutes for the ordinary HP-conditioned modifier; it is not an additional HP bonus |

Examples: Garam’s bow bonus is ×1.20. Gourry is ×1.30 at full HP and ×1.15 at half HP. Summer Loraine’s LowHpDamageBoost record has identical minimum and maximum values, so its base factor is ×1.10 even at full HP. Her conditional shield-related factor is a separate selectable window, not enabled by default.

Buff discovery now scans ordinary equipment options, static options, selected engraving options, relic rolls, hero awakening and blessing references. Positive supported buff records still require valid values; unknown recipients require the existing explicit recipient selection. Option-level live conditions that are not implemented remain marked unresolved.

## Verification and limits

- Existing Dabin critical-hit result remains 513,668.296 versus the observed 513,669.
- Beth’s measured first wave remains 39,871.794 / 23,560.605 / 51,833.332 for inferred critical / ordinary / critical hits, within one damage point of each observation.
- Offline regressions cover damage-factor separation from ATK/UI DPS, weapon eligibility, secondary shield matching, conditional-window selection, duplicate suppression, HP boundaries and save migration.
- Every hero-stage calculation is smoke-tested. This checks engine integrity, not live-game accuracy for every hero.

Remaining work includes unresolved Lua and graph attack branches, evolution overrides not explicitly traced, conditional EX procs, summons, dual-wield logic, recipient/stack interactions and before-hit/after-hit buff timing. Recovered native methods for other custom classes are saved as investigation evidence only; their presence does not mean those classes are implemented. Do not treat an available numeric estimate as a validated full rotation.
