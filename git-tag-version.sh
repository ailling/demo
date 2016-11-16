#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VERSION_PATH="$SCRIPT_DIR/VERSION"
VERSION=$(cat ${VERSION_PATH})

git tag -a "$VERSION" -m "Version $VERSION"
git push origin --tags
