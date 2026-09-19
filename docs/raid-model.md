# Raid simulator model and coverage

Entry point: `dist/raid.html`. The model runs entirely in the browser; no service or GitHub credential is required. `prepare_simulator.py` builds the 3.54.0 catalogue from decoded static records. Run `node test-raid.cjs` for the numerical regression suite.

## Inputs and persistence

Four slots select playable hero records and evolution stages. Equipment selectors include weapons, shields, accessories, cards (`orb` records), merch, jewels and relics. Relic base/special rolls use the selected stage's option pools and bounds. Four matching relic groups enable a single set contribution using the weakest equipped set level.

Max awakening nodes are decoded using the native `AwakeningTreeUtil` decimal fields: stat option `(node / 10000) % 10000`, required rank `(node / 10000) % 10`, and sequential special-node substitution from `CharacterTreeConfig`. Ascension overrides are selected for rank 5. This reproduces Dabin's 710 permille awakening ATK, 8% skill damage and Myth critical party option. Evolution eligibility outside the checked heroes still needs in-game cross-checks.

Heroes whose origin has a Myth record cap at 150; origins without a Myth record cap at 130, as do their EX weapons. Saved setups with the previous universal 150 default are clamped on import. Growth uses the reconstructed piecewise 1.02 / 1.026 / 1.006 path. Max blessing and EX rolls/engraving are assumed. The illustration ATK max preset is 2.2%, corrected by the user. Other editable preset totals still require checking against the player's live account.

Browser keys are `guardian-atlas-raid-v1` (current setup) and `guardian-atlas-raid-profiles-v1` (named account profiles). Version 1 JSON exports support complete setup and account-only imports. Import validates IDs, numbers, duplicates, compatibility and relic roll membership. No account information is sent anywhere.

## Numerical pipeline

1. Hero raw coefficient × hero level growth.
2. Weapon elemental ATK × weapon growth × maximum elemental roll × matching-element 1.10.
3. Ordinary additive ATK group: awakening, blessing, applicable equipment, collections, weapon knowledge, tower and manual ordinary ATK.
4. Guardian ATK + applicable mastery ATK in a separate shared multiplier. Mastery levels map through `GuardianSkillLevel.OptionLevel` (not directly to a percent).
5. Battlefield total/element party ATK, selected temporary buffs and optional manual battle bonuses.
6. Attack DPS coefficient × weapon ATK-to-DPS conversion; apply attack-type / skill / normal / boss bonuses as appropriate.
7. Defense mitigation, elemental matchup, active resistance reduction, permanent raid protection, ailments and critical multiplier.

Same modelled debuff groups take the strongest contribution. Generic and attack-type DEF reductions multiply. Ordinary six-element regular raid records carry 75% protection except Basic at 73%; changing element follows this convention. An unsupported boss element should not be interpreted as an independently observed raid variant.

The model returns noncritical, all-critical and critical-expectation values, not a timed rotation or total raid DPS. An injured target's damage-over-time is not simulated. Changing state holds that state constant for every hit in a displayed cast.

## Evidence and confidence

### Expanded attack coverage

The follow-up pass adds coverage for 36 formerly unresolved unique action records. See `dist/data/raid-attack-coverage.json` for the additions and remaining 430 unresolved names (counts are unique names, not hero-stage variants). Most new numerical paths are labelled estimates, not in-game validated results.

- `ManualKnightBattleAction.lua` lines 152/174/446: base coefficient divided among MaxHit collisions.
- `ManualChinaHeroBattleAction.lua` lines 172/452: ordinary/enhanced coefficients divided by hits-per-second, where hits-per-second is 1 / ActionDuration.
- `ManualGolemRider`, `ManualPriestess`, `ManualInvaderKnight`, `ManualViking`: ModifierBase through the DPS conversion into a damage command. Displayed as one base damage event; EX procs and extra collisions are excluded.
- `ManualHeatBladeCombo`: thrust collision uses half the base coefficient; other mapped base collisions use the full value. Repeated collisions are not summed into an invented cast total.
- Chain `DpsMultiplier` values provide aggregate record estimates. Native BasicSupport exposes CollisionDpsMultiplier; subclass hit schedules and proc behavior remain unverified.
- `RoleSunyeo` loads a shot rather than dealing damage. `ManualSunyeo` bonus_state selects direct OR splash damage for each target. The Myth special-option override changes those coefficients; direct and splash are separate outcomes, not additive hits on the boss.

The remaining gap is script/native behavior interpretation, not an identified missing encryption key. No generic coefficient is substituted merely to fill an unresolved result.

### Temporary team buffs

The Active team buffs section derives eligible effects from the selected heroes, stages, equipment and leader. Selections and stack counts persist in complete setup saves/exports (account-only profiles do not contain battle state). Durations describe source records; the calculator holds the selected state constant and does not simulate activation, rotation or uptime.

Supported positive timed effects include ATK, elemental/melee/ranged damage, normal/skill damage, critical chance and critical damage. The strongest contribution within the same buff group/stat/element applies per recipient. Permanent party options are already handled separately. Unknown recipient scopes require an explicit user assumption before applying. Missing levels and unsupported effect classes are not invented.

Curated Lua mappings include Eunha's normal-hit party ATK stacks, Ameris's EX party critical-damage stacks, and Eunha's own-EX critical-damage bonus restricted to Basic heroes. The latter disappears with Noel's EX. Dabin's chain and raid leader buffs use their action/buff records. Generic record scanning is not complete coverage of every hero's custom script or weapon-skill proc.

Numerical tests cover stack limits, recipient and EX restrictions, leader eligibility, same-group deduplication, save compatibility and the unchanged Dabin measured baseline. These tests validate implementation behavior, not in-game measurement of every temporary effect.

- Dabin normal shot: coefficient 2.05 × weapon ATK-to-DPS, recovered from the discrete stamina helper and Lua damage path. The test profile reconstructs ATK 648976.6918, crit 60%, crit multiplier 2.2, weapon factor 1/0.7 and Earth-debuff-only critical damage **513668.2964**, compared with the user's **513669**. Intermediate rounding is not replayed exactly.
- Dabin Myth weapon skill: base DPS coefficient 3.2 split 40/30/30 at field-state times .30/.45/.60. Full test profile skill multiplier 1.912; noncritical cast total 696857.6729. No measured skill validation is claimed.
- Kamael / Ameris ordinary and break attacks: discrete-stamina and Lua paths used for estimates; conditional effects and speed changes are not fully reproduced.
- Eunha: three-tick interval from `ModifierBase / max_hit`, with own-EX skill conversion where eligible. Additional effects remain incomplete.
- `TotalDpsMult`, `HitDpsMultipliers`, and weapon `ModifierBase` records provide labelled estimates. Their full script hit schedules, critical eligibility, alternate EX overrides and bonus categories are not universally verified.
- Direct constant defense/resistance debuff references are offered as data estimates. Dabin, Kamael and Eunha have curated debuff mappings. Level-scaled or stack-driven unknown debuffs are not guessed.

The data includes 653 playable stage records and 138 regular raid variants. **All selectable records do not imply all effects are implemented.** Unresolved coefficients show no calculated result. Unsupported option classes are reported, and custom coefficients/bonuses stay labelled as manual assumptions. General estimates can omit scripted procs, summons, transformations, alternate weapons, conditional stacks and dual-wield behavior. A near-exact Dabin check does not validate those other paths.

Relevant source evidence is in the website's Damage calculation report, native methods 108846 (growth), 108914/108915 (skill/account scale), 59059 (weapon conversion), 116108 (discrete stamina), 71789/71793 (protection), and recovered `ManualSunyeo`, `CwpSunyeo`, `ManualKamael`, `ManualDragonDaughter`, `ManualDokkaebi` action scripts.
