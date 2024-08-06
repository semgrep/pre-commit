VERSION=$1

sed -ie "s/\(rev\:*\) \'v[0-9.]*\'/\1 \'v$VERSION\'/" .pre-commit-config.yaml
