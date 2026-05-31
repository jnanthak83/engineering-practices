---
name: engineering-practices
description: Use when planning implementation, reviewing code, preparing a PR, supervising Claude/Codex workers, writing handoffs, deciding whether to merge, or applying Google-inspired engineering practices.
---

# Engineering Practices

Apply the local engineering-practices kit. Prefer concise judgment over long
process narration.

## Core Standard

Approve or recommend merging only when the change improves code health and
remaining issues are nits or explicit follow-ups. Block on correctness,
maintainability, safety, privacy, missing tests, missing docs for changed user
workflows, or unverifiable behavior.

## Review Checklist

Check:

- design and fit with the current system
- functionality and edge cases
- unnecessary complexity or speculative abstraction
- tests that would fail if behavior broke
- clear names and focused files
- useful comments that explain why
- docs for changed setup, build, release, or user behavior
- security, privacy, data-loss, migration, and concurrency risks

Use `Nit:` for optional polish. Do not block on taste alone.

## Author Checklist

Before publishing work:

- keep the change small and self-contained
- separate refactors from behavior changes
- run relevant tests and builds
- write a PR body with summary, why, risks, and test plan
- include manual smoke notes for platform behavior that CI cannot cover

## Worker Handoff

Require workers to report:

- issue or task
- branch and PR
- files changed
- commands run
- test or smoke result
- what works now
- risks or follow-up
- recommended next issue

## Multi-Agent Operating Model

For meaningful features, separate the work into:

1. planner agent: issue decomposition
2. implementation agents: one issue per branch
3. review agents: independent findings, no code changes
4. correction agents: accepted review fixes only
5. validation agents: fresh checks from clean state
6. supervisor: final integration and merge order

Do not let an implementation worker self-approve its own PR.

## References

When more detail is needed, read the installed kit files under
`engineering-practices/core/`.
