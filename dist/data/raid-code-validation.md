# Code validation — Darkness team, snapshot 3.54.0

This pass traces specific components for Myth Beth, Myth Wrestler, Demon CEO and Myth Bridge Driver. A code-traced coefficient is not a claim that every passive, runtime hotfix, collision or complete rotation is validated. No new in-game measurements were used to fit these changes.

## Corrections and confirmed behavior

### Wrestler: missing elemental-team passive

`Battle/Option/WrestlerSpecialOption.lua` counts party members whose hero element matches the owner, excluding the owner. The equipped weapon’s element does not determine this count. The script applies an owned Myth option before calculating the bonus.

- Base: +5% per matching teammate, capped at +15%.
- Myth: +10% per matching teammate, capped at +30%.
- Your all-Darkness team therefore gives Myth Wrestler a ×1.30 damage multiplier. This is her own multiplier, not a team-wide ATK buff, and does not change prepared ATK or UI DPS.

### Wrestler: graph timing differs from older Lua

The normal attacks used by the extracted hero battle style are graphs. Their direct coefficients are 0.3 / 0.5 / 0.4 / 0.8, each with one damage collision.

In the First graph, node 264 (`WhileCollisionCalculate`) sends `Each` to damage node 192, which then applies the melee-DEF debuff through node 110. Its `True` path grants the EX stacks and conditional critical-damage window. The native runtime confirms that `Each` executes before `True`: `get_Each` uses field 0xa0, `get_True` uses 0xa8; `TriggerAction` invokes 0xa0 at 0x3baa200–20c, then invokes 0xa8 at 0x3baa25c–268 after iterating targets.

Consequently the fresh hit does not benefit from its own newly earned EX stack or debuff. At four existing Myth stacks, the next hit grants the fifth stack and +30% critical damage for subsequent attacks. The older `ManualWrestlerBattleAction.lua` orders its buffs differently and must not be substituted for the graph.

The calculator now exposes pre-existing EX stacks and critical windows under Active team buffs, and lists what the hit grants afterward. These are independent cast snapshots, not an automatically advancing rotation. The role melee-damage buff targets Wrestler herself; the role event must hit a character and, without the special option, must be critical.

### Wrestler: chain data mismatch

The extracted `SupportWrestler` graph connects literal 3.3 (node 154) to GetModifier (148), then ApplyDamage (102). Its Myth selector changes radius. A separate Myth option record describes 3.5, but that value is not connected into this graph’s damage path. The calculator retains 3.3 and explicitly reports this discrepancy. An in-game hotfix could supersede this snapshot.

### Demon CEO: normal attacks

`ManualDemonCeoBattleAction.lua` constructs the collision state from ModifierBase and HitTiming, then divides by the timing count for each damage call. The four combo steps are:

| Step | Damage coefficients per hit |
|---|---|
| First | 0.5 |
| Second | 0.5 |
| Third (`Thrid` in the files) | 0.35 + 0.35 |
| Fourth | 0.4 + 0.4 |

The projectile only triggers the synchronized collision state; its travel time is not an extra damage event. Displayed hit times are relative to collision-state activation. Role attack marks, follow-up damage and reapplication behavior remain separate unresolved components.

### Beth: chain skill

`InvaderKnightSupportBattleAction.lua` reads HitAreaTimings and the per-hit coefficient array; the owned Myth option replaces that array. Myth coefficients are 0.4 / 0.4 / 0.4 / 3.0. The final hit applies the chain ailment. This action does not call the normal-attack EX debuff path.

### Bridge Driver: role direct hit

`RoleBridgeDriver` connects GetStatic ModifierBase (223) through GetModifier (397) to ApplyDamage (129). The snapshot value is 0.6, for one collision against a target. Dash/contact timing depends on position. This validates the direct coefficient only; its party-buff, EX and charge-state interactions remain incomplete.

## Evidence and remaining work

`raid-code-validation.json` contains source fingerprints and validated claims. `validate_team_sources.py` checks the relevant graph wiring, source statements and native callback order; `test-raid.cjs` checks the resulting calculator behavior and unchanged Dabin/Beth measured examples.

The team is **not yet fully code-validated**. Remaining components include Beth’s mixed ranged/melee Myth role proc, Demon CEO’s role and mark-reapplication proc, Wrestler’s role movement/collision model, Bridge Driver’s repeating normal attack and full buff state machine, and shared critical/skill eligibility for passive damage events. These must not be presented as zero effects or fully validated attacks. Other heroes retain their existing partial coverage labels.
