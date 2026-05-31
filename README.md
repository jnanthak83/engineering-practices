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
- PR, review, handoff, and multi-agent worker prompt templates
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

## Multi-Agent Workflows

The kit is designed for supervisor-led agent work:

- **Supervisor:** owns architecture, sequencing, final review, and merge.
- **Planner:** splits a spec into small issues.
- **Implementation workers:** build one issue per branch.
- **Review workers:** independently review PRs.
- **Correction workers:** address accepted review findings.
- **Validation workers:** rerun tests, build, and smoke checks.

Install the project kit to get reusable prompts in `.agents/`.

## Attribution

This kit is inspired by Google Engineering Practices and links back to the
source material. See `ATTRIBUTION.md`.
