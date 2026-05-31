#!/usr/bin/env python3
"""Install or update a managed block in an agent instruction file."""

from __future__ import annotations

import argparse
from pathlib import Path


def _managed_block(name: str, source: Path) -> str:
    content = source.read_text()
    return (
        f"<!-- BEGIN {name} -->\n"
        f"{content.rstrip()}\n"
        f"<!-- END {name} -->\n"
    )


def sync_block(target: Path, source: Path, name: str) -> None:
    start = f"<!-- BEGIN {name} -->"
    end = f"<!-- END {name} -->"
    block = _managed_block(name, source)
    existing = target.read_text() if target.exists() else ""
    if start in existing and end in existing:
        before, rest = existing.split(start, 1)
        _, after = rest.split(end, 1)
        text = before.rstrip() + "\n\n" + block + after.lstrip()
    elif existing.strip():
        text = existing.rstrip() + "\n\n" + block
    else:
        text = block
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(text)


def main() -> int:
    parser = argparse.ArgumentParser(description="Sync managed agent rules.")
    parser.add_argument("--target", type=Path, required=True)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--name", default="engineering-practices")
    args = parser.parse_args()

    sync_block(args.target.expanduser(), args.source, args.name)
    print(f"synced {args.source} -> {args.target.expanduser()}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
