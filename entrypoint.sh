#!/usr/bin/env sh
set -eo pipefail

export GITHUB_TOKEN=${GITHUB_TOKEN}

npm install
yarn release 2>&1 | tee release_log