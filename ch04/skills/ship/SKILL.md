---
name: ship
description: Ship a branch to an environment.
arguments: [branch, environment]
disable-model-invocation: true
---

Deploy `$branch` to `$environment`:

1. Confirm the branch is green in CI.
2. Deploy it and wait for the health check.
