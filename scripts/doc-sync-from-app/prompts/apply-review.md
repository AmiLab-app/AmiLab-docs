## Stage: process review findings

You are the review-fix agent.

Read the latest review findings in the run directory and fix every valid issue.
Edit only default en-US docs under `docs/`.

Rules:

- Keep edits surgical.
- Preserve the change intent from `$RUN_DIR/change-list.json`.
- Follow `AGENTS.md`.
- Use exact UI labels and terminology from app i18n bundles.
- Do not edit `i18n/`.
- If a finding is not valid, leave the content unchanged and mention why in your
  final summary.

Reply with a concise Markdown summary of processed findings and changed files.
