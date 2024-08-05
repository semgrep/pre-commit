VERSION=$1

# Do text substitution in setup.py & README.md
sed -ie "s/\(version\)=\"[0-9.]*\"\,/\1=\"$VERSION\"\,/" setup.py
sed -ie "s/\(semgrep\)==[0-9.]*/\1==$VERSION/" setup.py
sed -ie "s/\(rev\:*\) \'v[0-9.]*\'/\1 \'v$VERSION\'/" README.md
