#!/usr/bin/env bash
set -euo pipefail

branch=$(git branch --show-current)
dirty=$(git status --porcelain | wc -l | tr -d ' ')

ahead=$(git rev-list --count @{u}..HEAD 2>/dev/null \
  || echo unknown)

echo "branch=${branch}"
echo "uncommitted=${dirty}"
echo "ahead=${ahead}"
