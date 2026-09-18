# Guardian Tales — revue hors ligne du 18 septembre 2026

L'analyse a permis d'ouvrir les tables de progression et les scripts téléchargés, sans lancer le jeu. Les originaux ont été conservés. Les sorties restent locales dans `guardian-analysis`.

## Périmètre et résultats

Les **15 278 fichiers téléchargés**, représentant **4 369 756 961 octets**, ont tous été lus, classés et identifiés par SHA-256. Les **2 716 entrées des deux APK** du XAPK ont également été inventoriées et lues avec contrôle CRC. Cela constitue une couverture de tous les fichiers fournis, pas une lecture humaine de chaque ligne de code ni une décompilation complète.

| Ensemble | Résultat |
|---|---|
| 6 344 fichiers `.encrypted` | Tous déchiffrés, décompressés et exportés en Lua |
| 130 fichiers `static_data` | Tous déchiffrés : 125 documents JSON, plus 5 conteneurs binaires identiques aux caches déjà décodés |
| 5 caches `k1ng` | 187 988 enregistrements déjà décodés ; correspondance exacte avec les nouvelles extractions |
| 2 051 cartes | 2 050 déchiffrées et décompressées ; une carte de test reste non résolue |
| 4 267 archives UnityFS | Toutes ouvertes et inventoriées sans erreur de lecture |
| 114 fichiers d'événements | Tous analysés ; deux nécessitent d'enlever des virgules finales dans une copie |
| Programme ARM64 | Métadonnées retrouvées et décodées ; index des classes, champs, méthodes et adresses produit |

Le statut précis de chaque fichier est dans `audit/file-review-status.csv`. Les empreintes d'origine sont dans `audit/all-files.csv` et `audit/apk-inventory.json`.

## Ce qui répond directement à la question sur l'XP

`decoded-static/exps2.json` contient les tables `LevelExps`, `LevelExps.Kong`, `LevelExps.Switch`, ainsi que `MaxLevels`, `Evolves`, `LimitBreaks`, `MythCosts`, `AscendCosts` et `HeroBlessing`.

Chaque variante de progression contient **220 lignes**, avec un champ `Level` allant de **0 à 219**. Il s'agit des indices internes : leur présence ne signifie pas que le joueur peut atteindre tous ces niveaux, ni que l'affichage utilise le même numéro. Les plafonds et les variantes de plateforme doivent être pris en compte.

| Level interne, table par défaut | Exps | TotalExps |
|---:|---:|---:|
| 0 | 37 | 37 |
| 1 | 74 | 111 |
| 49 | 17 686 | 178 215 |
| 99 | 330 000 | 4 362 579 |
| 100 | 330 000 | 4 692 579 |
| 119 | 330 000 | 10 962 579 |

`Exps` donne le coût du palier. `TotalExps` est son seuil cumulé. Les sommes cumulées ont été recalculées sur les trois variantes de héros et les trois variantes d'armes : aucune divergence sur les 1 320 lignes contrôlées.

Le code compilé confirme notamment, dans sa branche non remplacée par un patch :

- `GetExpToNextLevel` renvoie le seuil `TotalExps` du palier sélectionné moins l'XP courante.
- `GetExpProgress` calcule `1 - (TotalExps - XP courante) / Exps`.
- `GetTotalExpForLevel(0)` renvoie zéro ; pour un niveau interne positif `L`, la fonction lit le seuil de la ligne `L - 1`.
- `GetLevelExpSpecByLevel` utilise l'indice demandé et le plafonne au dernier élément si l'indice dépasse la table.

Preuves : `audit/disassembly/Oak.ExpsDataLevelExpExtensions.asm` et les accesseurs de `Oak.LevelExpSpec.asm`. La sélection exacte d'une variante régionale et l'affichage du niveau n'ont pas été validés en jeu.

Les trois exports `decoded-static/LevelExps*.csv` permettent de consulter les valeurs dans un tableur sans lire le JSON.

## Autres données de gameplay accessibles

| Fichier dans `decoded-static` | Contenu utile |
|---|---|
| `weaponenhance.json` | XP des armes, évolution, composition, gravure et probabilités associées |
| `guardianlevel.json` | 300 lignes de niveaux de gardien, compétences, slots et avantages |
| `items.json` | 5 656 entrées d'objets |
| `buffs.json` | 836 entrées de buffs |
| `battleais.json` | 810 configurations d'IA |
| `battleactions.json` | 2 670 actions de combat |
| `projectiles.json` | 1 002 projectiles |
| `monsters.json` | 10 157 entrées de monstres |
| `stages.json` | 2 716 entrées de stages |
| `quests.json` | 641 entrées de quêtes |
| `itemlevelscalefactor.json` | Coefficients d'évolution des statistiques d'objets |
| `elementalmatrix*.json` | Matrices de relations élémentaires |
| `constants.json` | Paramètres globaux, coûts, limites et réglages |

L'inventaire des sections et de leurs champs est dans `audit/table-catalog.csv`. Les données peuvent inclure des variantes, du contenu de test ou des fonctionnalités inactives. Leur présence ne prouve pas leur activation sur un serveur.

## Du véritable code Lua récupéré

`decoded-scripts` contient **6 344 fichiers**, soit **3 024 470 lignes**. Le repérage textuel a trouvé environ **110 355 déclarations de fonctions** ; ce compte est un index de navigation, pas une validation syntaxique par un compilateur Lua.

On y trouve notamment 1 272 fichiers sous `Battle`, 1 672 sous `Quest`, 1 151 sections de scénarios, 336 contrôleurs d'événements, 245 mini-jeux et 80 fichiers de base. Les fichiers peuvent mêler code, tables et commentaires.

Le premier échantillon `DemonWorldDataStore.encrypted` est maintenant disponible sous `decoded-scripts/DemonWorldDataStore.lua`. Il référence un contrôleur et une section. Le contrôleur correspondant expose notamment `save_data(key, value)`, qui appelle `quest_util.set_custom_state` sur la progression de quête.

Les scripts de combat et de scénario contiennent des conditions, temporisations, transitions et appels aux fonctions C# du jeu. Certaines règles sont entièrement en Lua ; d'autres délèguent le calcul au programme compilé.

Navigation : `audit/lua-catalog.csv` et `audit/lua-functions.csv` indiquent les fichiers, noms de fonctions et numéros de ligne. Aucun script du jeu n'a été exécuté.

## Programme compilé et métadonnées

Le fichier de métadonnées habituel n'apparaissait pas dans l'APK. La fonction native située à l'adresse virtuelle `0x39cf804` charge en réalité `mscorlib.dll-resources.dat` et décode une zone ajoutée après ses ressources habituelles.

La reproduction de cette fonction a extrait **39 087 964 octets** depuis l'offset **337 564**. Le codage est un XOR sur les mots de 32 bits avec une clé répétée de 52 octets. Les champs de signature et de version sont nuls dans le résultat original ; les structures correspondent au format IL2CPP 31. La copie décodée n'a pas été artificiellement modifiée pour inventer une signature.

Le contrôle des limites de sections et des liens méthode/type est valide sur tout le fichier : **36 384 types**, **293 384 méthodes**, **253 660 champs**, **51 120 chaînes littérales**, bibliothèques comprises. L'assemblage `Scripts.dll` regroupe 22 132 types. Ses 192 140 méthodes sont indexées avec leur adresse, lorsque celle-ci existe ; il y a 189 915 adresses distinctes non nulles.

Ces résultats donnent des noms et des points d'entrée fiables pour poursuivre la lecture du code natif. Ils ne reconstituent pas automatiquement le code source C# original ni les variables locales des développeurs.

Fichiers principaux : `audit/global-metadata.dat`, `managed-types.csv`, `managed-methods.csv`, `managed-fields.csv`, `game-method-addresses.csv` et `gameplay-methods.csv`.

Le schéma de métadonnées a été vérifié contre la définition publique d'[Il2CppDumper](https://github.com/Perfare/Il2CppDumper/blob/master/Il2CppDumper/Il2Cpp/MetadataClass.cs).

## Méthodes de décodage reproductibles

| Script d'analyse | Traitement |
|---|---|
| `offline_audit.py` | Inventaire, signatures, SHA-256 et lecture des archives APK |
| `decode_metadata.py` | Extraction et validation des métadonnées cachées |
| `map_native.py` | Association des méthodes aux adresses ARM64 et désassemblages ciblés |
| `decode_scripts.py` | AES-256-CBC, PKCS7, puis LZ4 avec longueur finale contrôlée |
| `decode_static.py` | IV dans l'en-tête, graine récupérée par XOR, clé SHA-256, AES-CBC, puis DEFLATE |
| `decode_maps.py` | Clé dérivée du nom de carte, IV constant, AES-CBC et DEFLATE |
| `scan_bundles.py` | Inventaire des objets Unity et export des textes et descriptions de scripts |
| `build_audit_catalog.py` | Index de navigation et vérifications des tables d'XP |

Les clés ont été retrouvées en suivant les routines de chargement, sans recherche exhaustive et sans carte graphique. Les rapports de validation détaillés sont dans `audit/*summary.json`.

## Ressources Unity et limites restantes

Les 4 267 archives contiennent notamment 411 302 objets `MonoBehaviour`, 11 198 `TextAsset` et 25 160 `MonoScript`. Les deux dernières catégories ont été exportées, soit 36 358 objets. Un `MonoScript` décrit l'association à une classe et n'est pas nécessairement du code source. La majorité des `TextAsset` concerne les animations Spine (`.skel`, `.atlas`). Les configurations de composants peuvent néanmoins être utiles à la logique : il ne faut pas supprimer tous les bundles pour retirer les images.

Les 2 050 cartes décodées sont conservées dans `decoded-maps`. Leur en-tête `KONG` et la compression sont validés ; le schéma interne de tous les objets n'est pas encore entièrement traduit en JSON. `audit/map-decode-summary.json` répertorie leurs références textuelles.

Points non résolus ou non couverts sémantiquement :

- `short_story_clevatess_test.bytes` : échec du contrôle de padding avec la méthode dérivée du nom. Aucun résultat supposé correct n'a été exporté pour cette carte.
- Dix petits fichiers de minimap semblent contenir des coordonnées binaires ; leur schéma reste à confirmer.
- Les images, vidéos, sons et caches de shaders ont été identifiés ; aucune revue visuelle ou sonore exhaustive n'a été effectuée.
- Les fichiers de préférences, état local et analytics ne sont pas présentés comme des règles de gameplay.
- L'APK porte le package `com.kakaogames.gdts`, alors que le dossier fourni porte `com.kakaogames.gdtskr`. Les décodeurs fonctionnent sur ces données, mais cela ne prouve pas une correspondance parfaite de région et de version.
- Les méthodes comportent des branches de remplacement `IFix` et des scripts correctifs sont présents. Une règle issue de l'APK peut donc être remplacée au lancement. Le manifeste de patches est décodé, mais aucun binaire `.patch` correspondant n'a été identifié dans le dossier téléchargé fourni.
- Le code exécuté uniquement par les serveurs n'est pas récupérable à partir de ces fichiers clients.

La suite la plus utile est de relier une mécanique précise à ses tables et à ses fonctions, puis de vérifier sa variante et ses éventuels correctifs. Pour commencer, le parcours XP est désormais documenté et les valeurs sont accessibles ; les prochains sujets naturels sont les statistiques d'armes, les buffs et les calculs de dégâts.
