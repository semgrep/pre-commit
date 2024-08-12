VERSION=$1

# Do text substitution in setup.py & README.md
sed "s/\(version\)=\"[0-9.]*\"\,/\1=\"$VERSION\"\,/" setup.py > tmp
mv tmp setup.py
sed "s/\(semgrep\)==[0-9.]*/\1==$VERSION/" setup.py > tmp
mv tmp setup.py
sed "s/\(rev\:\)\ 'v[0-9.]*'/\1\ \'v$VERSION\'/" README.md > tmp
mv tmp README.md
