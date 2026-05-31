# Global Claude Engineering Practices

Use these rules for every project unless a project-level `CLAUDE.md` says
otherwise.

## How To Work

- Read project instructions before coding.
- Keep changes small and self-contained.
- Work one issue or task at a time.
- Prefer existing project patterns.
- Do not add unrelated features or refactors.
- Add tests with behavior changes.
- Update docs when setup, build, release, or user-visible behavior changes.
- Run verification before claiming success.
- Never mention AI, Claude, or Codex in commit messages.

## Code Review Standard

Changes should improve code health. Review design, functionality, complexity,
tests, names, comments, style, docs, and safety. Block on correctness,
maintainability, privacy, security, data loss, missing tests, or unverifiable
behavior. Mark optional polish as `Nit:`.

## Handoff

Every handoff must include:

- Issue or task
- Files changed
- Commands run
- Test or smoke result
- What works now
- Risks or follow-up
- Recommended next issue

Reference kit: `jnanthak83/engineering-practices`.
