#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: scripts/install-project.sh /path/to/project" >&2
  exit 2
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT="$1"

if [[ ! -d "$PROJECT" ]]; then
  echo "Project directory does not exist: $PROJECT" >&2
  exit 2
fi

python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/codex/AGENTS.project.md" \
  --target "$PROJECT/AGENTS.md"

python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/claude/CLAUDE.project.md" \
  --target "$PROJECT/CLAUDE.md"

mkdir -p "$PROJECT/.github" "$PROJECT/.agents"

if [[ ! -f "$PROJECT/.github/PULL_REQUEST_TEMPLATE.md" ]]; then
  cp "$ROOT/templates/PULL_REQUEST_TEMPLATE.md" \
    "$PROJECT/.github/PULL_REQUEST_TEMPLATE.md"
else
  echo "Skipped existing .github/PULL_REQUEST_TEMPLATE.md"
fi

for file in CODE_REVIEW_CHECKLIST.md HANDOFF_TEMPLATE.md; do
  if [[ ! -f "$PROJECT/.agents/$file" ]]; then
    cp "$ROOT/templates/$file" "$PROJECT/.agents/$file"
  else
    echo "Skipped existing .agents/$file"
  fi
done

echo "Installed project engineering practices into $PROJECT"
