# Testing and Verification

## Principle

Evidence before claims. A change is not done until the relevant verification has
run and the output is known.

## Test Selection

- Pure logic: unit tests.
- Cross-module contracts: integration tests.
- User-facing or platform behavior: focused smoke steps.
- Build/package changes: build command.
- Security/privacy behavior: explicit negative tests where practical.

## Required Before Merge

- Relevant tests pass.
- Build passes when packaging/deployment changed.
- Manual smoke notes exist for macOS, browser, audio, or OS behavior that CI
  cannot cover.
- Known gaps are documented as follow-up issues.

## Reporting

State the exact command and result. Do not say "should pass" or "looks fine"
when verification was not run.
