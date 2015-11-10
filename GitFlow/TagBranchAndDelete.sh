echo Creating tag release/3.11.0
git tag release/3.11.0
echo Creating tag release/3.12.0
git tag release/3.12.0

git branch -D -r origin/release/3.11.0
git branch -D -r origin/release/3.12.0
git push origin :refs/heads/release/3.11.0
git push origin :refs/heads/release/3.12.0
