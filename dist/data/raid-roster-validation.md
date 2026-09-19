# Unique and rare hero source analysis — 3.54.0

The roster pass covers 121 unique and 32 rare hero origins, 525 available evolution records and 858 stage/weapon loadouts. It includes all compatible own-EX variants in the supplied catalogue. When no EX is available, representative compatible ordinary weapons expose that hero’s weapon-specific attack styles. Normal heroes and three story-only placeholders are excluded.

809 action names and 943 option/dependency records were inspected. 618 recovered source files are fingerprinted. All 151 referenced graph assets were available; absence of a graph file is not the remaining obstacle for this roster.

## What is established

- Thirty graph damage inputs resolve through explicit numeric dependencies into a `GetModifier` call and ordinary Melee/Projectile damage. These are **single node invocations**, not necessarily full attacks. The calculator adds event previews only where the parent action does not already have a code-traced model.
- Runtime values, `GetStatic` contexts, selectors, ambiguous flags, unknown levels and cycles are deliberately rejected by the generic resolver. Their expressions remain unresolved rather than bound to guessed action parameters.
- Each hero’s action sources, option dependencies, referenced buffs and relevant source lines are accessible in the Hero source validation page. “Source located” means exactly that; it does not mean its logic has been fully validated.
- Existing manually traced attacks and passives retain their narrower validation scopes. The new resolver does not replace known multi-hit models with single-event estimates.

## Lua damage corrections

| Script | Implemented direct behavior | Limits |
|---|---|---|
| DaiSpecial | In battle, damage × (1 + DamageModifier) | Other event-driven buffs are separate |
| FallenQueenSpecial | Same battle factor, with owned Myth override | Other debuffs and events remain separate |
| BlueDragonSpecial | Count living stage members including self; clamp to at least 1 and MaxCount, then × (1 + count × DamageModifier) | Current raid snapshots assume all selected party members are alive; not a death/rotation simulator |
| DemonOperatorAwakening | Target Tanker class grants base + per-level damage bonus | If the boss record omits its combat class, the engine explicitly reports the unresolved condition and adds no guessed bonus |
| ForestElfSpecial | Timed normal-attack/critical-damage windows affect self without the EX option, party with it | User selects already-active windows; timer accumulation, damage resets and expiry are not replayed |

These factors do not change prepared ATK or the UI DPS estimate. Existing Dabin and Beth measured-hit regressions remain required.

## Verification and remaining scope

`validate_roster_sources.py` records source hashes, resolves bounded graph expressions, checks the Lua statements underlying the new models and exports the website report. `test-roster-validation.cjs` exercises every loadout, checks finite nonnegative outputs, source fingerprints, event-preview scope, Myth overrides and EX/party gating. `test-raid.cjs` retains the earlier numerical and timing regressions.

**This is a complete roster analysis pass, not complete semantic validation of all 153 heroes.** Many Lua state machines, graph conditions, summon behavior, target movement, buff timing and passive damage flags still need individual tracing. A source fingerprint only proves which file was analyzed; it does not prove that every branch is modelled. The website keeps this distinction visible instead of labelling the whole roster accurate.
