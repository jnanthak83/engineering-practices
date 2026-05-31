# Global Codex Engineering Practices

Use these rules for every project unless a project-level `AGENTS.md` says
otherwise.

## Default Workflow

- Read project instructions before coding.
- Prefer small, self-contained changes.
- Use existing project patterns before adding abstractions.
- Separate refactors from behavior changes.
- Add tests with behavior changes.
- Update docs when behavior, setup, build, or release flow changes.
- Verify before claiming success.
- Never mention AI, Claude, or Codex in commit messages.

## Review Standard

Favor approval when a change improves code health and remaining comments are
non-blocking nits. Block on correctness, maintainability, safety, privacy,
missing tests, missing docs for changed workflows, or unverifiable behavior.

Review design, functionality, complexity, tests, naming, comments, style, docs,
and safety. Mark optional polish as `Nit:`.

## Agent Work

When supervising workers, require one issue per worker, one branch per issue,
small draft PRs, tests or smoke notes, and a clear handoff.

For meaningful features, separate agent roles:

- planner
- implementation worker
- review worker
- correction worker
- validation worker
- supervisor

Reference kit: `jnanthak83/engineering-practices`.
