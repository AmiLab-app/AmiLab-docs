---
sidebar_position: 5
---

# Contributing to the Docs

These docs are open source. Everyone is welcome to improve them — fix a typo, clarify a step, or translate a page into a new language.

## How to contribute

1. **Fork** the [AmiLab-docs repository](https://github.com/AmiLab-app/AmiLab-docs)
2. Create a branch: `git checkout -b docs/my-improvement`
3. Make your changes (see the guides below)
4. Open a **Pull Request** against `main`

A maintainer will review and merge it.

## Editing existing docs

All docs live in the `docs/` folder as Markdown (`.md`) files. You can edit them directly on GitHub using the **Edit this page** link at the bottom of every docs page.

## Translating a page

Translations live under `i18n/<locale>/docusaurus-plugin-content-docs/current/`. The locale codes are:

| Locale code | Language |
|-------------|---------|
| `en` | English (US) — default, edit in `docs/` |
| `en-GB` | English (UK) |
| `de` | German |
| `nl` | Dutch |
| `ja` | Japanese |
| `pt` | Portuguese |
| `zh-Hans` | Chinese (Simplified) |

To translate a page:
1. Copy the English source from `docs/<page>.md`
2. Place it at `i18n/<locale>/docusaurus-plugin-content-docs/current/<page>.md`
3. Translate the content (keep the frontmatter keys in English)

To scaffold all translatable strings for a locale:
```bash
npm run write-translations -- --locale de
```

This generates JSON files under `i18n/de/` for navbar, footer, and theme strings.

## Running the docs locally

```bash
npm install
npm run start              # English (default)
npm run start -- --locale de   # German
npm run build              # Full multi-locale build
```

## What makes a good docs PR?

- One logical change per PR (translation, clarification, new page)
- Keep the same heading structure as the English source when translating
- Screenshots are welcome but not required
- Use the pull request template — it only takes a minute
