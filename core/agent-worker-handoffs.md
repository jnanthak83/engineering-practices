# Agent Worker Handoffs

Use this when Claude, Codex, or another worker implements a slice of work.

## Worker Rules

- One worker owns one issue or task.
- Work on an isolated branch or worktree.
- Do not add features outside the issue.
- Keep changes small and focused.
- Preserve existing user changes.
- Open a draft PR when complete.

## Handoff Format

```markdown
## Handoff

- Issue:
- Branch:
- PR:
- Files changed:
- Commands run:
- Test or smoke result:
- What works now:
- Risks or follow-up:
- Recommended next issue:
```

## Supervisor Rules

- Review every PR for design, functionality, complexity, tests, docs, and safety.
- Run verification independently when practical.
- Merge in dependency order.
- Convert risks into follow-up issues instead of burying them.
