# Contributing to AmiLab Docs

Thank you for helping improve the AmiLab documentation! This guide covers the two most common contributions: editing existing docs and adding translations.

## Quick start

1. [Fork](https://github.com/AmiLab-app/AmiLab-docs/fork) the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/AmiLab-docs.git`
3. Install dependencies: `npm install`
4. Create a branch: `git checkout -b docs/my-change`
5. Make your changes (see below)
6. Preview locally: `npm run start`
7. Push and open a Pull Request against `main`

## Editing existing docs

All English docs live in the `docs/` folder as Markdown files. You can also click the **Edit this page** link at the bottom of any page on the live site.

Please keep PRs focused — one logical change per PR makes review faster.

## Adding or updating a translation

Translations live under `i18n/<locale>/docusaurus-plugin-content-docs/current/`.

### Locale codes

| Code | Language |
|------|---------|
| `en` | English (US) — edit directly in `docs/` |
| `en-GB` | English (UK) |
| `de` | German (Deutsch) |
| `nl` | Dutch (Nederlands) |
| `ja` | Japanese (日本語) |
| `pt` | Portuguese (Português) |
| `zh-Hans` | Chinese Simplified (中文) |

### Translating a doc page

1. Copy the English source file from `docs/<page>.md`
2. Place it at `i18n/<locale>/docusaurus-plugin-content-docs/current/<page>.md`
3. Translate the body content
4. Keep all frontmatter keys in English (only translate the values if they are user-visible strings like `label`)

### Translating UI strings (navbar, footer, etc.)

Run the scaffold command to generate the JSON files for a locale:

```bash
npm run write-translations -- --locale de
```

This creates files like `i18n/de/docusaurus-theme-classic/navbar.json`. Edit the `message` field of each entry.

### Previewing your translation

```bash
npm run start -- --locale de
```

Replace `de` with your locale code.

## Style guide

- Use sentence case for headings (not title case)
- Use code blocks for stitch notation examples
- Keep tables aligned with the English source structure
- Avoid machine-translated text — human review appreciated

## Questions?

Open an [issue](https://github.com/AmiLab-app/AmiLab-docs/issues) if you're unsure about anything before investing time in a large translation.
