---
name: deploy
description: Deploy this service to production.
disable-model-invocation: true
---

Deploy to production:

1. Run the test suite and stop if anything fails.
2. Build the image and tag it with the current commit.
3. Push to the deployment target.
4. Poll the health endpoint until it reports ready.
