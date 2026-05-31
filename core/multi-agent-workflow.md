# Multi-Agent Workflow

Use agents as a review-and-correction system, not just parallel coders.

## Roles

- **Supervisor:** owns scope, sequencing, architecture, final review, and merge.
- **Planner:** turns a spec into small independent issues.
- **Implementation worker:** implements one issue on one branch.
- **Review worker:** reviews a PR for design, behavior, complexity, tests, docs,
  and safety.
- **Correction worker:** addresses accepted review feedback in a follow-up commit.
- **Validation worker:** reruns tests, build, and smoke checks from a clean state.

One agent can play multiple roles only when the task is small. For meaningful
features, separate implementation from review.

## Flow

1. Supervisor writes or approves the spec.
2. Planner splits the work into small issues.
3. Implementation workers build independent issues in isolated branches.
4. Each worker opens a draft PR with a handoff.
5. Review workers inspect each PR and leave findings.
6. Correction workers address accepted findings.
7. Validation worker runs fresh checks.
8. Supervisor merges in dependency order and creates follow-up issues.

## Rules

- One worker owns one issue.
- One branch maps to one issue.
- PRs stay small enough to review line by line.
- Review is independent from implementation.
- Tests and docs travel with the change.
- Follow-up work is tracked explicitly.
- No merge happens without supervisor approval.

## Prompt Pattern

Every agent prompt should include:

- role
- issue or task
- branch/base branch
- files likely to change
- non-goals
- required checks
- handoff format
- whether the agent may commit, push, or open a PR
