VERSION=$1
sed "s/\(rev\:\)\ 'v[0-9.]*'/\1\ \'v$VERSION\'/" .pre-commit-config.yaml > tmp
mv tmp .pre-commit-config.yaml
