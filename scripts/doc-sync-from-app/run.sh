#!/usr/bin/env bash
set -euo pipefail

APP_REPO="../crochet-design"
RUN_ROOT=".doc-sync-runs"
APP_RANGE=""
DOCS_RANGE=""
SINCE_DATE=""
HISTORY_LIMIT=40
PREPARE_ONLY=0
ANALYZE_ONLY=0
SKIP_TRANSLATIONS=0
SKIP_VALIDATE=0
ALLOW_DIRTY=0

usage() {
  cat <<'USAGE'
Usage: scripts/doc-sync-from-app/run.sh [options]

Compare AmiLab app history with docs history, update en-US docs, review the
edits, then translate changed pages to supported locales.

Options:
  --app-repo PATH        App repository path. Default: ../crochet-design
  --app-range RANGE      Git range for app changes, for example abc123..HEAD
  --docs-range RANGE     Git range for docs history context
  --since DATE           Use app commits after this date when --app-range is unset
  --history-limit N      Fallback commit count for history context. Default: 40
  --prepare-only         Gather context files and stop before Codex stages
  --analyze-only         Gather context and produce only the change list
  --skip-translations    Stop after reviewed en-US docs are ready
  --skip-validate        Skip npm typecheck and build
  --allow-dirty          Allow pre-existing docs/i18n changes
  -h, --help             Show this help

Environment:
  CODEX_MODEL            Optional model override passed to codex exec
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --app-repo)
      APP_REPO="${2:?Missing value for --app-repo}"
      shift 2
      ;;
    --app-range)
      APP_RANGE="${2:?Missing value for --app-range}"
      shift 2
      ;;
    --docs-range)
      DOCS_RANGE="${2:?Missing value for --docs-range}"
      shift 2
      ;;
    --since)
      SINCE_DATE="${2:?Missing value for --since}"
      shift 2
      ;;
    --history-limit)
      HISTORY_LIMIT="${2:?Missing value for --history-limit}"
      shift 2
      ;;
    --prepare-only)
      PREPARE_ONLY=1
      shift
      ;;
    --analyze-only)
      ANALYZE_ONLY=1
      shift
      ;;
    --skip-translations)
      SKIP_TRANSLATIONS=1
      shift
      ;;
    --skip-validate)
      SKIP_VALIDATE=1
      shift
      ;;
    --allow-dirty)
      ALLOW_DIRTY=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Required command not found: $1" >&2
    exit 1
  fi
}

require_cmd git
require_cmd node
require_cmd codex

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

if [ ! -d "$APP_REPO/.git" ]; then
  echo "App repo is not a git repository: $APP_REPO" >&2
  exit 1
fi

APP_REPO_ABS="$(cd "$APP_REPO" && pwd)"

REQUIRED_APP_I18N_LOCALES=(en-US en-GB de nl ja)

resolve_recent_range() {
  repo="$1"
  limit="$2"

  if git -C "$repo" rev-parse --verify "HEAD~${limit}" >/dev/null 2>&1; then
    printf 'HEAD~%s..HEAD\n' "$limit"
    return
  fi

  first_commit="$(git -C "$repo" rev-list --max-parents=0 HEAD | tail -n 1)"
  printf '%s..HEAD\n' "$first_commit"
}

resolve_since_range() {
  repo="$1"
  since="$2"
  limit="$3"
  since_epoch="$(node -e '
const ms = Date.parse(process.argv[1]);
if (!Number.isFinite(ms)) process.exit(1);
console.log(`@${Math.floor(ms / 1000)}`);
' "$since")" || {
    echo "Invalid --since date: $since" >&2
    exit 1
  }

  after_count="$(git -C "$repo" rev-list --count --after="$since_epoch" HEAD)"
  if [ "$after_count" -eq 0 ]; then
    printf 'HEAD..HEAD\n'
    return
  fi

  base_commit="$(git -C "$repo" rev-list -n 1 --before="$since_epoch" HEAD 2>/dev/null || true)"

  if [ -n "$base_commit" ]; then
    printf '%s..HEAD\n' "$base_commit"
    return
  fi

  resolve_recent_range "$repo" "$limit"
}

ensure_clean_docs_tree() {
  if [ "$ALLOW_DIRTY" -eq 1 ]; then
    return
  fi

  dirty="$(git status --porcelain=v1 -- docs i18n)"
  if [ -n "$dirty" ]; then
    echo "Docs or locale files already have changes. Commit, stash, or rerun with --allow-dirty." >&2
    echo "$dirty" >&2
    exit 1
  fi
}

ensure_app_i18n() {
  i18n_dir="$APP_REPO_ABS/code/src/i18n"
  if [ ! -d "$i18n_dir/locales" ]; then
    echo "App i18n bundles were not found at $i18n_dir/locales." >&2
    exit 1
  fi

  for locale in "${REQUIRED_APP_I18N_LOCALES[@]}"; do
    if [ ! -f "$i18n_dir/locales/$locale.ts" ]; then
      echo "Required app i18n bundle is missing: $i18n_dir/locales/$locale.ts" >&2
      exit 1
    fi
  done

  for required_file in "$i18n_dir/types.ts" "$i18n_dir/index.ts"; do
    if [ ! -f "$required_file" ]; then
      echo "Required app i18n support file is missing: $required_file" >&2
      exit 1
    fi
  done
}

if [ -z "$SINCE_DATE" ]; then
  SINCE_DATE="$(git log -1 --format=%cI)"
fi

if [ -z "$APP_RANGE" ]; then
  APP_RANGE="$(resolve_since_range "$APP_REPO_ABS" "$SINCE_DATE" "$HISTORY_LIMIT")"
fi

if [ -z "$DOCS_RANGE" ]; then
  DOCS_RANGE="$(resolve_recent_range "$REPO_ROOT" "$HISTORY_LIMIT")"
fi

ensure_clean_docs_tree
ensure_app_i18n

RUN_ID="$(date -u +%Y%m%dT%H%M%SZ)"
mkdir -p "$RUN_ROOT"
RUN_DIR="$(mktemp -d "$RUN_ROOT/${RUN_ID}.XXXXXX")"
mkdir -p "$RUN_DIR/app-i18n/locales" "$RUN_DIR/logs" "$RUN_DIR/prompts"

APP_EXCLUDES=(
  ":(exclude)code/node_modules"
  ":(exclude)code/dist"
  ":(exclude)docs/node_modules"
  ":(exclude)deploy-backups"
  ":(exclude).git"
)

APP_RELEVANT_PATHS=(
  "code/src"
  "code/app.html"
  "code/view.html"
  "code/index.html"
  "code/package.json"
  "backend/api"
  "backend/migrations"
)

APP_DIFF_EXCLUDES=(
  "${APP_EXCLUDES[@]}"
  ":(exclude)code/cypress"
  ":(exclude)code/src/__tests__"
  ":(glob,exclude)code/src/**/*.test.ts"
  ":(glob,exclude)code/src/**/*.test.tsx"
  ":(exclude)code/src/app.css"
  ":(exclude)code/src/index.css"
)

write_metadata() {
  {
    echo "repo_root=$REPO_ROOT"
    echo "app_repo=$APP_REPO_ABS"
    echo "since_date=$SINCE_DATE"
    echo "app_range=$APP_RANGE"
    echo "docs_range=$DOCS_RANGE"
    echo "history_limit=$HISTORY_LIMIT"
    echo "run_dir=$RUN_DIR"
    echo "docs_head=$(git rev-parse HEAD)"
    echo "app_head=$(git -C "$APP_REPO_ABS" rev-parse HEAD)"
  } > "$RUN_DIR/metadata.env"
}

collect_context() {
  echo "Collecting workflow context in $RUN_DIR"
  write_metadata

  git status --short > "$RUN_DIR/docs-working-tree-status.txt"
  git -C "$APP_REPO_ABS" status --short > "$RUN_DIR/app-working-tree-status.txt"

  git log --date=iso-strict --name-status --find-renames \
    --format='commit %H%nAuthor: %an <%ae>%nDate: %cI%nSubject: %s%n' \
    "$DOCS_RANGE" -- docs i18n .github AGENTS.md package.json docusaurus.config.ts \
    > "$RUN_DIR/docs-history.txt"

  git diff --stat "$DOCS_RANGE" -- docs i18n .github AGENTS.md package.json docusaurus.config.ts \
    > "$RUN_DIR/docs-history-diff-stat.txt" || true

  git diff --unified=40 "$DOCS_RANGE" -- docs i18n .github AGENTS.md package.json docusaurus.config.ts \
    > "$RUN_DIR/docs-history-diff.patch" || true

  git -C "$APP_REPO_ABS" log --date=iso-strict --name-status --find-renames \
    --format='commit %H%nAuthor: %an <%ae>%nDate: %cI%nSubject: %s%n' \
    "$APP_RANGE" -- . "${APP_EXCLUDES[@]}" \
    > "$RUN_DIR/app-history.txt"

  git -C "$APP_REPO_ABS" diff --name-status --find-renames "$APP_RANGE" -- . "${APP_EXCLUDES[@]}" \
    > "$RUN_DIR/app-changed-files.txt" || true

  git -C "$APP_REPO_ABS" diff --stat "$APP_RANGE" -- . "${APP_EXCLUDES[@]}" \
    > "$RUN_DIR/app-diff-stat.txt" || true

  git -C "$APP_REPO_ABS" diff --find-renames --unified=30 "$APP_RANGE" -- \
    "${APP_RELEVANT_PATHS[@]}" "${APP_DIFF_EXCLUDES[@]}" \
    > "$RUN_DIR/app-relevant-diff.patch" || true

  find docs -type f | sort > "$RUN_DIR/docs-current-files.txt"
  find i18n -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort \
    > "$RUN_DIR/supported-locales.txt"
  find i18n -type f | sort > "$RUN_DIR/i18n-current-files.txt"

  if [ -d "$APP_REPO_ABS/code/src/i18n" ]; then
    cp "$APP_REPO_ABS"/code/src/i18n/locales/*.ts "$RUN_DIR/app-i18n/locales/"
    cp "$APP_REPO_ABS"/code/src/i18n/types.ts "$RUN_DIR/app-i18n/"
    cp "$APP_REPO_ABS"/code/src/i18n/index.ts "$RUN_DIR/app-i18n/"
  fi
}

render_prompt() {
  template="$1"
  output="$2"

  {
    echo "# AmiLab app-to-docs sync"
    echo
    echo "Run directory: $RUN_DIR"
    echo "Docs repo: $REPO_ROOT"
    echo "App repo: $APP_REPO_ABS"
    echo "App range: $APP_RANGE"
    echo "Docs history range: $DOCS_RANGE"
    echo "Supported locale list: $RUN_DIR/supported-locales.txt"
    echo
    echo "Primary context files:"
    echo "- $RUN_DIR/metadata.env"
    echo "- $RUN_DIR/app-history.txt"
    echo "- $RUN_DIR/app-changed-files.txt"
    echo "- $RUN_DIR/app-diff-stat.txt"
    echo "- $RUN_DIR/app-relevant-diff.patch"
    echo "- $RUN_DIR/app-i18n/"
    echo "- $RUN_DIR/docs-history.txt"
    echo "- $RUN_DIR/docs-history-diff-stat.txt"
    echo "- $RUN_DIR/docs-current-files.txt"
    echo "- AGENTS.md"
    echo
    echo "Stage files:"
    echo "- Change list: $RUN_DIR/change-list.json"
    echo "- Changed en-US docs list: $RUN_DIR/changed-en-us-docs.txt"
    echo "- First review findings: $RUN_DIR/review-findings-pass-1.json"
    echo "- Second review findings: $RUN_DIR/review-findings-pass-2.json"
    echo
    cat "scripts/doc-sync-from-app/prompts/$template"
  } > "$output"
}

codex_base_args() {
  args=(
    exec
    --json
    --ephemeral
    --ignore-user-config
    -c
    'web_search="disabled"'
    --disable
    multi_agent
    --disable
    apps
    --disable
    shell_snapshot
  )

  if [ -n "${CODEX_MODEL:-}" ]; then
    args+=(--model "$CODEX_MODEL")
  fi

  printf '%s\n' "${args[@]}"
}

run_codex_stage() {
  stage="$1"
  sandbox="$2"
  prompt_file="$3"
  output_file="$4"
  schema_file="${5:-}"
  shift 5 || true
  log_file="$RUN_DIR/logs/$stage.jsonl"
  before_status="$RUN_DIR/logs/$stage.before-status.txt"
  after_status="$RUN_DIR/logs/$stage.after-status.txt"
  before_disallowed="$RUN_DIR/logs/$stage.before-disallowed-files.txt"
  after_disallowed="$RUN_DIR/logs/$stage.after-disallowed-files.txt"

  echo "Running Codex stage: $stage"
  record_repo_status "$before_status"
  snapshot_disallowed_files "$before_disallowed" "$@"

  base_args=()
  while IFS= read -r item; do
    base_args+=("$item")
  done < <(codex_base_args)

  cmd=(codex "${base_args[@]}" --sandbox "$sandbox" -o "$output_file")
  if [ -n "$schema_file" ]; then
    cmd+=(--output-schema "$schema_file")
  fi
  cmd+=(-)

  "${cmd[@]}" < "$prompt_file" > "$log_file"
  record_repo_status "$after_status"
  snapshot_disallowed_files "$after_disallowed" "$@"
  assert_disallowed_files_unchanged "$stage" "$before_disallowed" "$after_disallowed" "$@"
  assert_stage_paths "$stage" "$before_status" "$after_status" "$@"
}

json_findings_count() {
  node -e 'const fs = require("fs"); const data = JSON.parse(fs.readFileSync(process.argv[1], "utf8")); console.log(Array.isArray(data.findings) ? data.findings.length : 0);' "$1"
}

json_ready_for_translation() {
  node -e 'const fs = require("fs"); const data = JSON.parse(fs.readFileSync(process.argv[1], "utf8")); console.log(data.ready_for_translation === true ? "true" : "false");' "$1"
}

record_repo_status() {
  git status --porcelain=v1 --untracked-files=all | sort > "$1"
}

path_is_allowed() {
  path="$1"
  shift

  for prefix in "$@"; do
    if [[ "$path" == "$prefix"* ]]; then
      return 0
    fi
  done

  return 1
}

snapshot_disallowed_files() {
  output="$1"
  shift
  tmp="$output.tmp"

  {
    git ls-files -z
    git ls-files --others --exclude-standard -z
  } | while IFS= read -r -d '' path; do
    if path_is_allowed "$path" "$@"; then
      continue
    fi

    if [ -f "$path" ]; then
      printf '%s  %s\n' "$(git hash-object "$path")" "$path"
    else
      printf '%s  %s\n' "__missing__" "$path"
    fi
  done > "$tmp"

  sort "$tmp" > "$output"
  rm -f "$tmp"
}

assert_disallowed_files_unchanged() {
  stage="$1"
  before_disallowed="$2"
  after_disallowed="$3"
  shift 3
  diff_file="$RUN_DIR/logs/$stage.disallowed-file-diff.txt"

  if ! diff -u "$before_disallowed" "$after_disallowed" > "$diff_file"; then
    echo "Codex stage '$stage' modified files outside its allowed scope." >&2
    echo "Allowed prefixes: ${*:-"(none)"}" >&2
    cat "$diff_file" >&2
    exit 1
  fi
}

assert_stage_paths() {
  stage="$1"
  before_status="$2"
  after_status="$3"
  shift 3
  changed_lines="$RUN_DIR/logs/$stage.new-status-lines.txt"
  changed_paths="$RUN_DIR/logs/$stage.new-status-paths.txt"
  bad_paths="$RUN_DIR/logs/$stage.disallowed-paths.txt"

  comm -13 "$before_status" "$after_status" > "$changed_lines"
  sed -E 's/^...//' "$changed_lines" | sed '/^$/d' > "$changed_paths"
  : > "$bad_paths"

  while IFS= read -r path; do
    if ! path_is_allowed "$path" "$@"; then
      echo "$path" >> "$bad_paths"
    fi
  done < "$changed_paths"

  if [ -s "$bad_paths" ]; then
    echo "Codex stage '$stage' changed files outside its allowed scope." >&2
    echo "Allowed prefixes: ${*:-"(none)"}" >&2
    cat "$bad_paths" >&2
    exit 1
  fi
}

write_changed_en_us_docs() {
  git status --short -- docs | sed -E 's/^...//' > "$RUN_DIR/changed-en-us-docs.txt"
}

validate_site() {
  echo "Running docs validation"
  npm run typecheck
  npm run build
}

collect_context

if [ "$PREPARE_ONLY" -eq 1 ]; then
  echo "Prepared workflow context at $RUN_DIR"
  exit 0
fi

render_prompt analyze.md "$RUN_DIR/prompts/analyze.md"
run_codex_stage \
  analyze \
  workspace-write \
  "$RUN_DIR/prompts/analyze.md" \
  "$RUN_DIR/change-list.json" \
  "scripts/doc-sync-from-app/schemas/change-list.schema.json"

if [ "$ANALYZE_ONLY" -eq 1 ]; then
  echo "Wrote change list to $RUN_DIR/change-list.json"
  exit 0
fi

render_prompt en-us-edit.md "$RUN_DIR/prompts/en-us-edit.md"
run_codex_stage \
  en-us-edit \
  workspace-write \
  "$RUN_DIR/prompts/en-us-edit.md" \
  "$RUN_DIR/en-us-edit-summary.md" \
  "" \
  docs/

write_changed_en_us_docs
if [ ! -s "$RUN_DIR/changed-en-us-docs.txt" ]; then
  echo "No en-US docs changed. Stopping before review and translation."
  exit 0
fi

render_prompt review.md "$RUN_DIR/prompts/review-pass-1.md"
run_codex_stage \
  review-pass-1 \
  workspace-write \
  "$RUN_DIR/prompts/review-pass-1.md" \
  "$RUN_DIR/review-findings-pass-1.json" \
  "scripts/doc-sync-from-app/schemas/review-findings.schema.json"

findings_count="$(json_findings_count "$RUN_DIR/review-findings-pass-1.json")"
ready_for_translation="$(json_ready_for_translation "$RUN_DIR/review-findings-pass-1.json")"
if [ "$findings_count" -gt 0 ]; then
  render_prompt apply-review.md "$RUN_DIR/prompts/apply-review.md"
  run_codex_stage \
    apply-review \
    workspace-write \
    "$RUN_DIR/prompts/apply-review.md" \
    "$RUN_DIR/apply-review-summary.md" \
    "" \
    docs/

  write_changed_en_us_docs

  render_prompt review.md "$RUN_DIR/prompts/review-pass-2.md"
  run_codex_stage \
    review-pass-2 \
    workspace-write \
    "$RUN_DIR/prompts/review-pass-2.md" \
    "$RUN_DIR/review-findings-pass-2.json" \
    "scripts/doc-sync-from-app/schemas/review-findings.schema.json"

  findings_count="$(json_findings_count "$RUN_DIR/review-findings-pass-2.json")"
  ready_for_translation="$(json_ready_for_translation "$RUN_DIR/review-findings-pass-2.json")"
  if [ "$findings_count" -gt 0 ] || [ "$ready_for_translation" != "true" ]; then
    echo "Review did not approve translation. Findings: $findings_count. See $RUN_DIR/review-findings-pass-2.json" >&2
    exit 1
  fi
elif [ "$ready_for_translation" != "true" ]; then
  echo "Review did not approve translation and returned no actionable findings. See $RUN_DIR/review-findings-pass-1.json" >&2
  exit 1
fi

if [ "$SKIP_TRANSLATIONS" -eq 1 ]; then
  echo "Reviewed en-US docs are ready. Skipping translations by request."
  exit 0
fi

render_prompt translate.md "$RUN_DIR/prompts/translate.md"
run_codex_stage \
  translate \
  workspace-write \
  "$RUN_DIR/prompts/translate.md" \
  "$RUN_DIR/translation-summary.md" \
  "" \
  i18n/

git status --short -- docs i18n > "$RUN_DIR/final-doc-status.txt"

if [ "$SKIP_VALIDATE" -eq 0 ]; then
  validate_site
else
  echo "Skipped validation by request."
fi

echo "Workflow complete. Run artifacts: $RUN_DIR"
