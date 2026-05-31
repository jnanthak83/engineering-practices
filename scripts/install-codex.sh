#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"

python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/codex/AGENTS.global.md" \
  --target "$CODEX_HOME/AGENTS.md"

mkdir -p "$CODEX_HOME/skills/engineering-practices"
cp "$ROOT/codex/skills/engineering-practices/SKILL.md" \
  "$CODEX_HOME/skills/engineering-practices/SKILL.md"

echo "Installed Codex engineering practices into $CODEX_HOME"
