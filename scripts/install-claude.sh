#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_HOME="${CLAUDE_HOME:-$HOME/.claude}"

python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/claude/CLAUDE.global.md" \
  --target "$CLAUDE_HOME/CLAUDE.md"

echo "Installed Claude engineering practices into $CLAUDE_HOME"
