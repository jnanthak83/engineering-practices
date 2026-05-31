# Small PRs

Small PRs are easier to review, test, merge, revert, and understand.

## Default Size

One PR should contain one self-contained change:

- one bug fix
- one schema addition
- one CLI behavior
- one UI slice
- one doc/research artifact

The PR should include related tests and enough usage to prove the new API or
behavior is real.

## Split Strategies

- **Horizontal:** schema/API first, implementation second, UI third.
- **Vertical:** one thin full-stack feature at a time.
- **Refactor separate:** mechanical cleanup in its own PR.
- **Docs separate:** research or process docs can be their own PR.

## Red Flags

- unrelated formatting mixed with behavior
- broad dependency upgrades mixed with product work
- many ownership boundaries touched at once
- tests deferred to a later PR
- unclear rollback path
