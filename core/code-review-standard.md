# Code Review Standard

Use review to improve the long-term health of the codebase while allowing
steady progress.

## Review Checklist

- **Design:** Does this belong here? Does it fit the system?
- **Functionality:** Does it do what users and developers need?
- **Complexity:** Is it simpler than the alternatives?
- **Tests:** Would tests fail if this behavior broke?
- **Names:** Do names explain intent?
- **Comments:** Do comments explain why, not obvious what?
- **Style:** Does it match the project style?
- **Docs:** Did changed behavior update documentation?
- **Safety:** Any security, privacy, data-loss, migration, or concurrency risk?

## Commenting

- Lead with blockers and correctness issues.
- Use `Nit:` for optional polish.
- Explain the reason behind requests.
- Prefer concrete alternatives over vague criticism.
- If reviewing only part of a change, say what you reviewed.

## Approval

Approve when the change improves code health and remaining issues are nits or
reasonable follow-ups. Request changes when the issue affects correctness,
maintainability, safety, privacy, or required verification.
