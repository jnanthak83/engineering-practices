#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"

# Always-on baseline rules.
python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/codex/AGENTS.global.md" \
  --target "$CODEX_HOME/AGENTS.md"

# On-demand skill: SKILL.md plus the core/ docs bundled as references, so the
# installed skill is self-contained.
SKILL_DIR="$CODEX_HOME/skills/engineering-practices"
mkdir -p "$SKILL_DIR/references"
cp "$ROOT/codex/skills/engineering-practices/SKILL.md" "$SKILL_DIR/SKILL.md"
cp "$ROOT"/core/*.md "$SKILL_DIR/references/"

echo "Installed Codex engineering practices into $CODEX_HOME"
echo "  - global rules: $CODEX_HOME/AGENTS.md"
echo "  - skill:        $SKILL_DIR/SKILL.md (+ references/)"
