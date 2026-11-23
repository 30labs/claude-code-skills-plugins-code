# Release checklist

Read this only when a check fails.

- `uncommitted` above zero: stop. Nothing ships from a
  dirty tree, because the image will not match the tag.
- `ahead` above zero: the commits are local only. Push
  first so the deployment tag is reachable.
- `ahead` reported as `unknown`: the branch has no
  upstream. It has never been pushed.
- `branch` is not `main`: allowed, but say so in the
  deployment channel before continuing.
