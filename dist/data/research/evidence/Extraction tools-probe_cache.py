from pathlib import Path
src=Path(__file__).with_name('decode_cache.py').read_text()
ns={'__file__':__file__}
exec(src[:src.index('summaries=[]')],ns)
b=(ns['ROOT']/'cache/heroes-bin').read_bytes()
print('boundary',repr(b[17170:17250]))
for delta in range(-32,65):
    try:
        out=ns['lz4'](b[11256:11256+5942+delta])
        print(delta,len(out),repr(out[-40:]))
    except ValueError: pass
