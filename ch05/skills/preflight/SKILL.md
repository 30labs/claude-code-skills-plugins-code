---
name: preflight
description: Check whether this repository is safe to
  deploy from. Use before /deploy, or when the user asks
  if the branch is ready to ship.
allowed-tools: Bash(${CLAUDE_SKILL_DIR}/scripts/preflight.sh)
---

Run `${CLAUDE_SKILL_DIR}/scripts/preflight.sh` and read
its output.

If every value is clean, say the tree is ready and stop.

If anything is wrong, read [checklist.md](checklist.md)
and report which line applies. Do not fix anything.
