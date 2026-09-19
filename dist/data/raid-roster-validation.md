# Unique and rare hero source analysis — 3.54.0

The roster pass covers 121 unique and 32 rare hero origins, 525 available evolution records and 858 stage/weapon loadouts. It includes all compatible own-EX variants in the supplied catalogue. When no EX is available, representative compatible ordinary weapons expose that hero’s weapon-specific attack styles. Normal heroes and three story-only placeholders are excluded.

809 action names and 943 option/dependency records were inspected. 618 recovered source files are fingerprinted. All 151 referenced graph assets were available; absence of a graph file is not the remaining obstacle for this roster.

## What is established

- Thirty graph damage inputs resolve through explicit numeric dependencies into a `GetModifier` call and ordinary Melee/Projectile damage. Whole actions use those events only when every damage node resolves; otherwise the action falls back to its stored aggregate or shared runtime schema.
- All 809 action names now have a calculator model across all 858 loadouts. Eighty-one names are fully code-traced in every listed loadout. The others are marked **Resolved data model** and use stored totals, per-hit arrays, level scaling, native fixed modifiers, shared stamina formulas, or a documented default attack-window reconstruction.
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

**This is a complete calculator-coverage pass, not complete semantic validation of all 153 heroes.** Many Lua state machines, graph conditions, summon behavior, target movement, buff timing and passive damage flags still need individual tracing. A **Code-traced formula** follows a bounded source path. A **Resolved data model** is deterministic but can represent the default cast when the client record omits branch-specific coefficients. The website keeps these labels distinct.


## Attack sequence follow-up

The second pass traces five timed leader skills: SuccubusNoble (3 hits, total coefficient 4), LegendaryHero (4 hits, 4.5), BattleballPitcher (1 hit, 4.5), SquirrelGirl (3 hits, 4.3), MagicalGirl (6 hits, 4). Timer paths and collision nodes are recorded in `raid-attack-sequences.json`. Native `CollisionInBattleOnce` enumerates the current targets each invocation; `CollisionCalculateOnce` starts/calculates/ends its collider for each call. Neither should be interpreted as one hit for the entire parent action merely because there is one graph node.

Battleball Pitcher now has three normal attack models, a three-hit chain and a two-hit weapon skill. Normal coefficients are 0.6, 0.6 and 0.8. The third attack with EX adds a separate 0.30 coefficient (0.45 with the Myth hero option), **after** the initial hit applies 10% DEF reduction, or 20% with EX. The chain has two 0.72 hits and a 2.16 finisher; the Myth selectors change these to 0.8, 0.8 and 2.4. With EX, its party skill-damage buff is granted at cast start and included without stacking a duplicate selected buff. The weapon skill uses independent level-scaled projectile and area coefficients. Absolute projectile travel time is not guessed.

Lua paths now also cover Rudolph's three ordinary steps plus separate close-range EX alternatives, Oghma's rifle shot, ascended Craig's armed shield bash, Loraine's EX-gated healing-area hit, and ascended Mei/Fei's initial role hit. Oghma's tactical shield and Xellos's movement role are correctly identified as having no direct damage.

These are scoped direct-hit models. Held attacks are reported per shot/pulse, not as an infinite cast. Reactive counters, summons, current combo history, movement and complete rotations are not implied to be validated. **The user's zero-unresolved target is not complete.** The page shows current unresolved and estimated counts explicitly.
