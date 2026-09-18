# Guardian Atlas

A static browser for five decoded Guardian Tales data tables, with 187,988 records.

## Features

- Heroes, battle actions, monsters, NPCs, and English text.
- Search across all fields, including nested content.
- Field filters with text matching, equality, numeric ranges, and presence checks.
- Sortable tables, configurable columns, and pagination.
- Complete nested record details and original JSON.
- Links between hero evolution and origin records.
- Responsive mobile layout and keyboard-accessible controls.

## Run locally

Serve the `dist` directory with a static HTTP server. For example, with Python installed:

```sh
python -m http.server 8765 --directory dist
```

Open http://localhost:8765. Opening `index.html` directly will not work because browsers restrict local JSON requests.

## Publish with GitHub Pages

1. Publish this repository to GitHub.
2. In the repository, open **Settings → Pages**.
3. Set the publishing source to **GitHub Actions**.
4. Open **Actions → Publish Guardian Atlas → Run workflow**.

The included workflow publishes only `dist`, with no build or dependency installation. Relative asset paths work at a GitHub Pages repository URL. The Pages website exposes all included records to visitors.

## Data and limitations

| Table | Records |
|---|---:|
| Heroes | 701 |
| Battle actions | 2,670 |
| Monsters | 10,157 |
| NPCs | 4,073 |
| English text | 170,387 |

Records were decoded from supplied game caches. Variants count separately. Values are displayed as stored and are not necessarily final in-game stats. Cache date/client version and some field semantics are unverified. The XP table and encrypted scripts have not been decoded and are not included. This is an unofficial explorer, not an official game service.

`prepare_data.py` regenerates public JSON from the sibling `guardian-analysis/decoded` folder when those original exports are available. The committed `dist/data` files are sufficient to run and publish the site.
