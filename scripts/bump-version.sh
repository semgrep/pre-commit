VERSION=$1

# Do text substitution in setup.py & README.md
sed -ie "s/\(version\)=\"[0-9.]*\"\,/\1=\"$VERSION\"\,/" setup.py
sed -ie "s/\(semgrep\)==[0-9.]*/\1==$VERSION/" setup.py
sed -ie "s/\(rev\:*\) \'v[0-9.]*\'/\1 \'v$VERSION\'/" README.md

# commit & tag & push code
git checkout -b bump-pre-commit-to-$VERSION
git add setup.py README.md
git commit -m "Bump to version $VERSION"

git tag $VERSION $(git rev-parse HEAD)
git push origin tag $VERSION
