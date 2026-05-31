#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_HOME="${CLAUDE_HOME:-$HOME/.claude}"

# Always-on baseline rules.
python3 "$ROOT/scripts/sync-rules.py" \
  --source "$ROOT/claude/CLAUDE.global.md" \
  --target "$CLAUDE_HOME/CLAUDE.md"

# On-demand skill: SKILL.md plus the core/ docs bundled as references, so the
# installed skill is self-contained (mirrors install-codex.sh).
SKILL_DIR="$CLAUDE_HOME/skills/engineering-practices"
mkdir -p "$SKILL_DIR/references"
cp "$ROOT/claude/skills/engineering-practices/SKILL.md" "$SKILL_DIR/SKILL.md"
cp "$ROOT"/core/*.md "$SKILL_DIR/references/"

echo "Installed Claude engineering practices into $CLAUDE_HOME"
echo "  - global rules: $CLAUDE_HOME/CLAUDE.md"
echo "  - skill:        $SKILL_DIR/SKILL.md (+ references/)"
