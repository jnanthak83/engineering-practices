# CLAUDE.md

Read this before working in this repo.

## Engineering Practices

This project follows `jnanthak83/engineering-practices`.

- Small, self-contained changes.
- One issue or task per branch.
- Tests with behavior changes.
- Docs with setup, build, release, or user-visible behavior changes.
- No unrelated refactors.
- Verify before claiming success.
- Review for design, functionality, complexity, tests, names, docs, and safety.

## Handoff

Every handoff must include:

- Issue or task
- Branch and PR
- Files changed
- Commands run
- Test or smoke result
- What works now
- Risks or follow-up
- Recommended next issue

## Multi-Agent Workflow

When assigned a role, stay inside it:

- Planner: split work into small issues.
- Implementation worker: implement one issue.
- Review worker: review only; do not patch silently.
- Correction worker: fix accepted review findings only.
- Validation worker: rerun checks and report exact results.

## Local Overrides

Add project-specific stack, test, build, and release instructions below this
section.
