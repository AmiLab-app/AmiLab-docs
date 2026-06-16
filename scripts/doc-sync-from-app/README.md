# App-to-docs sync workflow

Run this workflow from the docs repository when changes in `../crochet-design`
may require documentation updates.

```bash
npm run docs:sync-from-app
```

By default, the workflow compares app commits since the latest docs commit
timestamp, gathers the app translation bundles, asks Codex to identify needed
documentation changes, edits only the default en-US docs under `docs/`, reviews
those edits against `AGENTS.md`, and then translates the changed docs into the
supported locales under `i18n/`.

Useful options:

```bash
npm run docs:sync-from-app -- --analyze-only
npm run docs:sync-from-app -- --prepare-only
npm run docs:sync-from-app -- --app-range abc123..HEAD
npm run docs:sync-from-app -- --docs-range origin/master..HEAD
npm run docs:sync-from-app -- --skip-translations
npm run docs:sync-from-app -- --skip-validate
npm run docs:sync-from-app -- --allow-dirty
```

Set `CODEX_MODEL` if you want to force a model for this workflow:

```bash
CODEX_MODEL=gpt-5.5 npm run docs:sync-from-app
```

Run artifacts are written to `.doc-sync-runs/<timestamp>/` and are ignored by
git. They include the gathered git history, app diffs, copied app i18n bundles,
Codex JSONL logs, review findings, and stage summaries.
