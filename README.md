# Engineering Practices Kit

Portable engineering rules for Codex, Claude, and human collaborators.

This repository adapts the spirit of Google Engineering Practices for small
agent-assisted projects: small changes, clear reviews, verified behavior, and
steady code health. It is intentionally concise so it can be installed into new
projects without overwhelming the working context.

## What This Provides

- Global Codex instructions for `~/.codex/AGENTS.md`
- Global Claude Code instructions for `~/.claude/CLAUDE.md`
- Project-level `AGENTS.md` and `CLAUDE.md` templates
- A Codex skill for engineering-practices-aware reviews and implementation
- PR, review, and handoff templates
- Install scripts for new and existing projects

## Quick Start

Install global Codex rules:

```bash
scripts/install-codex.sh
```

Install global Claude rules:

```bash
scripts/install-claude.sh
```

Install project rules:

```bash
scripts/install-project.sh /path/to/project
```

## Operating Model

1. Keep changes small and self-contained.
2. Prefer code health over perfection theater.
3. Review design, behavior, complexity, tests, names, docs, and safety.
4. Separate behavior changes from refactors.
5. Require fresh verification before claiming success.
6. Use agent handoffs that include scope, files, tests, risks, and next steps.

## Attribution

This kit is inspired by Google Engineering Practices and links back to the
source material. See `ATTRIBUTION.md`.
