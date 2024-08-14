VERSION=$1
OLD_VERSION=$(grep -o 'version=\"[0-9.]*\"' setup.py | sed "s/version=\"\([0-9.]*\)\"/\1/")

# Do text substitution in setup.py & README.md
sed "s/$OLD_VERSION/$VERSION/" setup.py > tmp
mv tmp setup.py
sed "s/$OLD_VERSION/$VERSION/" README.md > tmp
mv tmp README.md
sed "s/$OLD_VERSION/$VERSION/" .pre-commit-config.yaml > tmp
mv tmp .pre-commit-config.yaml
