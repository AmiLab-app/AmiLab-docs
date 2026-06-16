## Stage: translate reviewed docs

You are a new translation agent. Translate only after the en-US review has
passed.

Read:

- `$RUN_DIR/changed-en-us-docs.txt`
- `$RUN_DIR/change-list.json`
- The app locale bundles under `$RUN_DIR/app-i18n/locales/`
- `i18n/<locale>/...` files for the supported locales listed in
  `$RUN_DIR/supported-locales.txt`

Translate the changed default docs into every supported non-default locale.

Rules:

- Edit only `i18n/`. Do not edit `docs/`.
- Use conceptual and intent translation. Do not translate sentence-by-sentence
  when a more natural target-language structure gives the same guidance.
- Preserve Markdown structure, frontmatter keys, code fences, admonitions,
  relative links, and placeholder syntax.
- For each app UI label, use the exact label from that locale's app translation
  bundle when it exists.
- Preserve the brand name `AmiLab`.
- For `en-GB`, adapt spelling and crochet terminology to the app's UK English
  bundle, including UK crochet notation where relevant.
- For `de`, `nl`, and `ja`, prefer natural product documentation phrasing over
  literal English structure.
- If an en-US doc is new and a locale file does not exist, create it at the
  matching Docusaurus locale path:
  `i18n/<locale>/docusaurus-plugin-content-docs/current/<path-from-docs>`.
- Keep translations aligned with the reviewed en-US meaning. Do not add new
  facts that are absent from the en-US source.

Reply with a concise Markdown summary listing the locale files changed.
