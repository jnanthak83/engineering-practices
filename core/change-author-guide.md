# Change Author Guide

## Before Coding

- Read project instructions.
- Identify the smallest valuable change.
- Know the test or smoke step that will prove it works.
- Avoid bundling refactors with behavior.

## While Coding

- Keep functions and files focused.
- Prefer existing patterns.
- Validate external inputs before use.
- Add tests close to the changed behavior.
- Do not introduce dependencies unless the benefit is clear.

## Before Review

- Re-read the diff.
- Remove unrelated changes.
- Run relevant tests and build checks.
- Write a PR description that explains what changed, why, risks, and validation.
- Include manual smoke notes for behavior that cannot be tested reliably in CI.

## Handoff

Every handoff should include:

- Issue or task
- Files changed
- Commands run
- Test or smoke result
- What works now
- Risks or follow-up
- Recommended next issue
