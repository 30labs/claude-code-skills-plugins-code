set -e
git init -q -b main
git config user.name ci
git config user.email ci@example.com
git commit -q --allow-empty -m base
git remote add origin https://example.com/shipkit.git
git update-ref refs/remotes/origin/main HEAD
git branch -q -u origin/main
git commit -q --allow-empty -m unpushed
echo draft > notes.txt
