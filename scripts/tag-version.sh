#!/bin/sh

CURRENT_VERSION=$(grep -o 'version=\"[0-9.]*\"' setup.py | sed "s/version=\"\([0-9.]*\)\"/\1/")

git tag "v${CURRENT_VERSION}" HEAD
git push origin tag "v${CURRENT_VERSION}"
