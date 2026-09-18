"""One-map offline prototype. Format traced from ARM64 ReadFromStream/CreateTileLayer."""
from pathlib import Path
import struct, json, hashlib

BASE = Path(__file__).resolve().parent
SOURCE = BASE / 'decoded-maps/ancientdungeon_red_1_1.bytes'
b = SOURCE.read_bytes()
p = 0
def read(fmt):
    global p
    fmt = '<' + fmt
    size = struct.calcsize(fmt)
    assert p + size <= len(b), (p, size)
    v = struct.unpack_from(fmt, b, p); p += size
    return v[0] if len(v) == 1 else list(v)
def count():
    v = read('i'); assert 0 <= v <= 100000, (p, v)
    return v
def string():
    global p
    n = 0
    for shift in range(0, 35, 7):
        v = read('B'); n |= (v & 127) << shift
        if v < 128: break
    else: raise ValueError('Invalid string length')
    assert p+n <= len(b)
    s = b[p:p+n].decode('utf-8'); p += n
    return s
def props():
    global p
    result = []
    for _ in range(count()):
        idx, name, size = read('h'), string(), count()
        assert p+size <= len(b)
        raw = b[p:p+size]; p += size
        result.append(dict(index=idx, component=name, bytes=size, hex=raw.hex()))
    return result

assert b[:4] == b'KONG'; p = 4
version, partition = read('i'), read('i')
assert version == 12, 'This prototype deliberately supports this one version-12 map only.'
unit = read('fff')
tilesets = [dict(name=string(), tiles=[string() for _ in range(count())]) for _ in range(count())]
difficulty = bool(read('B'))
handles = []
for _ in range(count()):
    kind = read('B'); handles.append(dict(kind=kind, names=[string() for _ in range(count())]))
layers = []
for _ in range(count()):
    layer = dict(name=string(), type=read('i'), options=read('i'), tiles=[], events=[], partitions=[])
    n = count()
    if layer['type']:
        layer['events'] = [dict(name=string(), position=read('fff')) for _ in range(n)]
        layer['properties'] = props()
    else:
        for _ in range(n):
            px, pz = read('hh'); records = []
            for _ in range(count()):
                offset = p
                ts, ti, x, y, z, rot = read('hhBbBB')
                assert ts == 0 or (0 < ts <= len(tilesets) and 0 <= ti < len(tilesets[ts-1]['tiles'])), (offset,ts,ti)
                name = tilesets[ts-1]['tiles'][ti] if ts else f'Built-in tile {ti}'
                tile = dict(name=name, tileset=tilesets[ts-1]['name'] if ts else 'Built-in',
                    position=[round(px*partition+x*unit[0],4), round(y*unit[1],4),round(pz*partition+z*unit[2],4)],
                    rotation=rot, raw=[ts,ti,x,y,z,rot], offset=offset, partition=[px,pz])
                records.append(tile); layer['tiles'].append(tile)
            layer['partitions'].append(dict(position=[px,pz], tileCount=len(records), properties=props()))
    layers.append(layer)
print('Parsed layers through', p, 'of', len(b))
for layer in layers: print(layer['name'],layer['type'],len(layer['tiles']),len(layer['events']))
# Explicit-layout physics structs: x/z overlap xz, and y/types/dir overlap value.
physics = {}
for key, fmt in [('floors','hhHBB'), ('walls','hhHBBhh'), ('nonUnitWalls','ffHBBff')]:
    n = count(); physics[key] = [read(fmt) for _ in range(n)]
    print(key,n,'end',p)
assert p == len(b), (p, len(b), 'Unconsumed map bytes')
from collections import Counter
floor_tiles = Counter((t['position'][0], t['position'][2]) for l in layers if l['name']=='floor' for t in l['tiles'])
floor_records = Counter((r[0],r[1]) for r in physics['floors'])
assert floor_tiles == floor_records, 'Independent floor geometry disagrees with tile positions'
result = dict(name=SOURCE.stem, source=SOURCE.name, version=version, bytes=len(b),
    sha256=hashlib.sha256(b).hexdigest(), parsedBytes=p, partitionSize=partition, unitSize=unit,
    hasDifficultyLevels=difficulty, tilesets=tilesets, handles=handles, layers=layers, physics=physics,
    evidence={'reader':'Tilemaps.TilemapBinary.ReadFromStream @ 0x7c8a530',
    'placement':'<CreateTileLayer>d__57.MoveNext @ 0x7d50800',
    'coordinates':'x = signed low16(partition) * partitionSize + tile.x * unitSize.x; z = signed high16(partition) * partitionSize + tile.z * unitSize.z; y = signed tile.y * unitSize.y',
    'limitations':'Structural top-down preview; marker symbols are schematic. Artwork, prefab dimensions and live scripted changes are not reconstructed.'})
target = BASE.parent/'guardian-explorer/dist/data/research/map-preview.json'
target.write_text(json.dumps(result,ensure_ascii=False),encoding='utf-8')
print('Saved',target)
