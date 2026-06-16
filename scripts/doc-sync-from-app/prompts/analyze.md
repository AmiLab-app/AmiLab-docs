## Stage: determine documentation changes

You are the change-analysis agent. Do not edit files in this stage.

Compare the app history with the docs history and current docs. Decide which app
changes require documentation updates.

Use the app translation bundles in `app-i18n/` as the source of truth for UI
labels, button text, terminology, and locale-specific crochet notation. Prefer
exact app labels over guessed wording.

Look for user-facing changes such as:

- New or renamed buttons, dialogs, tabs, fields, panels, menu items, or flows.
- Changed behavior in pattern creation, shape/profile editing, sharing,
  projects, sign-in, saved files, generated pattern output, gauge, colors, or
  profile pages.
- User-visible validation, error states, permissions, availability, or export
  behavior.
- App concepts that need explanation, reference coverage, or a how-to recipe.

Usually ignore:

- Tests, analytics, refactors, storage helpers, build changes, and styling-only
  changes unless the current docs describe the changed behavior or visual state.
- Internal APIs that have no user-visible effect.

For each needed documentation update, identify the smallest useful doc target in
the Diataxis structure:

- `docs/tutorials/` for learning paths.
- `docs/how-to/` for task recipes.
- `docs/explanations/` for concepts.
- `docs/reference/` for concise UI, terminology, or shortcut lookups.

Return only JSON that matches the schema. Keep the change list focused enough
for surgical edits.
