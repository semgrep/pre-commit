CURR_VERSION=$(grep -o 'version=\"[0-9.]*\"' setup.py | sed "s/version=\"\([0-9.]*\)\"/\1/")

git tag "v${CURR_VERSION}" HEAD
git push origin tag "v${CURR_VERSION}"
