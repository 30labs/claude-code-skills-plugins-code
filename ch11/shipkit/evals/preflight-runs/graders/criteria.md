---
type: llm
weight: 1
---

PASS if the response says the branch is not ready
because notes.txt is uncommitted, and that main is one
commit ahead of origin/main. FAIL if it calls the
branch ready, or deploys or offers to deploy.
