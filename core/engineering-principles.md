# Engineering Principles

## Standard

Approve work when it clearly improves the code health of the system, even when
it is not perfect. Do not approve work that worsens correctness, maintainability,
security, privacy, or testability.

## Rules

- Prefer facts, data, tests, and existing project conventions over taste.
- Keep changes small, reviewable, and self-contained.
- Solve the known problem now; avoid speculative abstractions.
- Separate refactors from behavior changes unless the refactor is required.
- Add or update tests with behavior changes.
- Update docs when build, test, release, configuration, or user behavior changes.
- Treat privacy, security, data loss, and concurrency risks as blockers.
- Mark polish as `Nit:` and do not block on nits.
- Verify before claiming success.

## Agent Expectations

- Read project instructions before coding.
- State assumptions when the codebase does not answer a question.
- Preserve user changes.
- Keep commits atomic and descriptive.
- Include a handoff with files changed, checks run, risks, and recommended next
  step.
