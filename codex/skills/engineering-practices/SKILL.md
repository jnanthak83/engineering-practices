---
name: engineering-practices
description: Apply the engineering-practices kit (Google-inspired, for small agent-assisted projects). Use when planning an implementation, reviewing a diff or pull request, authoring or preparing a PR, writing a handoff, deciding whether to merge, splitting a spec into issues, or running a supervisor / planner / implementation / review / correction / validation multi-agent workflow. Covers code-health review standards, small-PR discipline, test and verification expectations, and multi-agent roles.
---

# Engineering Practices

The always-on baseline (small changes, prefer existing patterns, tests with
behavior changes, verify before claiming done, no AI mentions in commit
messages) already lives in the global `AGENTS.md`. **This skill is the
on-demand depth** for reviewing, authoring PRs, writing handoffs, and
coordinating multi-agent work. Prefer concise judgment over long process
narration.

## Core standard

Approve or recommend merging only when the change improves code health and
the remaining issues are nits or explicit follow-ups. Block on correctness,
maintainability, safety, privacy, data loss, missing tests, missing docs for a
changed user workflow, or behavior that cannot be verified.

## Review checklist

- **Design** -- does it belong here and fit the existing system?
- **Functionality** -- correct, including edge cases?
- **Complexity** -- simpler than the alternatives; no speculative abstraction?
- **Tests** -- would they fail if this behavior broke?
- **Names** -- do they explain intent?
- **Comments** -- explain *why*, not the obvious *what*?
- **Style** -- matches project conventions?
- **Docs** -- updated for changed setup, build, release, or user behavior?
- **Safety** -- security, privacy, data-loss, migration, or concurrency risk?

Lead with blockers and correctness issues. Mark optional polish as `Nit:` and
do not block on taste alone. Full standard: `references/code-review-standard.md`.

## Author checklist (before publishing work)

- Keep the change small and self-contained.
- Separate refactors from behavior changes.
- Run the relevant tests and builds.
- Write a PR body: summary, why, risks, test plan.
- Include manual smoke notes for behavior CI cannot cover.

Detail: `references/small-prs.md`, `references/change-author-guide.md`,
`references/testing-and-verification.md`.

## Handoff (every handoff includes)

Include the issue or task, branch and PR, files changed, commands run, test or
smoke result, what works now, risks or follow-up, and recommended next issue.

Detail: `references/agent-worker-handoffs.md`.

## Multi-agent operating model

For meaningful features, separate the work across passes. Do not let an
implementation worker approve its own PR:

1. **Planner** -- decompose the spec into small, independent issues.
2. **Implementation** -- one issue per branch.
3. **Review** -- independent findings only; no silent patches.
4. **Correction** -- accepted review fixes only.
5. **Validation** -- fresh checks from a clean state.
6. **Supervisor** -- final integration and merge order.

Detail: `references/multi-agent-workflow.md`, `references/engineering-principles.md`.

## References

Read the matching file under `references/` when you need the full standard.
These are the same `core/` documents shipped with the kit.
