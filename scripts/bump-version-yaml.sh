VERSION=$1

sed -ie "s/\(rev\:*\) \'v[0-9.]*\'/\1 \'v$VERSION\'/" .pre-commit-config.yaml

# commit & tag & push code
git checkout -b bump-pre-commit-yaml-to-$VERSION
git add .pre-commit-config.yaml
git commit -m "Bump to version $VERSION"

git push origin HEAD
