from pathlib import Path
import struct,json,hashlib,gzip
BASE=Path(__file__).resolve().parent
def parse_map(SOURCE):
    b = SOURCE.read_bytes()
    p = 0
    def read(fmt):
        nonlocal p
        fmt = '<' + fmt
        size = struct.calcsize(fmt)
        assert p + size <= len(b), (p, size)
        v = struct.unpack_from(fmt, b, p); p += size
        return v[0] if len(v) == 1 else list(v)
    def count():
        v = read('i'); assert 0 <= v <= 100000, (p, v)
        return v
    def string():
        nonlocal p
        n = 0
        for shift in range(0, 35, 7):
            v = read('B'); n |= (v & 127) << shift
            if v < 128: break
        else: raise ValueError('Invalid string length')
        assert p+n <= len(b)
        s = b[p:p+n].decode('utf-8'); p += n
        return s
    def props():
        nonlocal p
        result = []
        for _ in range(count()):
            idx, name, size = read('h'), string(), count()
            assert p+size <= len(b)
            raw = b[p:p+size]; p += size
            result.append(dict(index=idx, component=name, bytes=size, hex=raw.hex()))
        return result
    
    assert b[:4] == b'KONG'; p = 4
    version, partition = read('i'), read('i')
    assert 11 <= version <= 16, f'Unsupported legacy map format {version}'
    unit = read('fff')
    tilesets = [dict(name=string(), tiles=[string() for _ in range(count())]) for _ in range(count())]
    difficulty = bool(read('B')) if version>=12 else False
    water = bool(read('B')) if version>=15 else False
    addons = string() if version>=16 else ''
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
                    assert ts == 0 or ti < 0 or (0 < ts <= len(tilesets) and 0 <= ti < len(tilesets[ts-1]['tiles'])), (offset,ts,ti)
                    name = tilesets[ts-1]['tiles'][ti] if ts>0 and ti>=0 else f'Built-in tile {ti}'
                    tile = dict(name=name, tileset=tilesets[ts-1]['name'] if ts>0 and ti>=0 else 'Built-in',
                        position=[round(px*partition+x*unit[0],4), round(y*unit[1],4),round(pz*partition+z*unit[2],4)],
                        rotation=rot, raw=[ts,ti,x,y,z,rot], offset=offset, partition=[px,pz])
                    records.append(tile); layer['tiles'].append(tile)
                layer['partitions'].append(dict(position=[px,pz], tileCount=len(records), properties=props()))
        layers.append(layer)
    # Explicit-layout physics structs: x/z overlap xz, and y/types/dir overlap value.
    physics = {}
    formats=[('floors','hhHBB')]
    if version>=13:formats.append(('upperFloors','hhHBB'))
    formats += [('walls','hhHBBhh'),('nonUnitWalls','ffHBBff')]
    if version>=14:formats += [('upperWalls','hhHBBhh'),('nonUnitUpperWalls','ffHBBff')]
    for key, fmt in formats:
        n = count(); physics[key] = [read(fmt) for _ in range(n)]
    assert p == len(b), (p, len(b), 'Unconsumed map bytes')
    result = dict(name=SOURCE.stem, source=SOURCE.name, version=version, bytes=len(b),
        sha256=hashlib.sha256(b).hexdigest(), parsedBytes=p, partitionSize=partition, unitSize=unit,
        hasDifficultyLevels=difficulty, tilesets=tilesets, handles=handles, layers=layers, physics=physics,
        evidence={'reader':'Tilemaps.TilemapBinary.ReadFromStream @ 0x7c8a530',
        'placement':'<CreateTileLayer>d__57.MoveNext @ 0x7d50800',
        'coordinates':'x = signed low16(partition) * partitionSize + tile.x * unitSize.x; z = signed high16(partition) * partitionSize + tile.z * unitSize.z; y = signed tile.y * unitSize.y',
        'limitations':'Structural top-down preview; marker symbols are schematic. Artwork, prefab dimensions and live scripted changes are not reconstructed.'})
    return result
if __name__=='__main__':
    out=BASE.parent/'guardian-explorer/dist/data/visual/maps';out.mkdir(parents=True,exist_ok=True)
    index=[]
    for source in sorted((BASE/'decoded-maps').glob('*.bytes')):
        try:
            data=parse_map(source)
            # Retain display data; omit bulky component blobs from web payload.
            for layer in data['layers']:
                layer.pop('partitions',None);layer.pop('properties',None)
                for tile in layer['tiles']:tile.pop('raw',None)
            data.pop('physics',None);data.pop('handles',None)
            (out/(source.stem+'.json.gz')).write_bytes(gzip.compress(json.dumps(data,separators=(',',':')).encode(),mtime=0))
            index.append(dict(name=source.stem,status='ready',version=data['version'],tiles=sum(len(l['tiles']) for l in data['layers']),layers=len(data['layers']),tilesets=[t['name'] for t in data['tilesets']]))
        except Exception as ex:index.append(dict(name=source.stem,status='unavailable',error=str(ex)))
    (out.parent/'maps.json').write_text(json.dumps(index,separators=(',',':')),encoding='utf-8')
    from collections import Counter
    print(Counter(m['status'] for m in index));print([m for m in index if m['status']!='ready'][:8])
