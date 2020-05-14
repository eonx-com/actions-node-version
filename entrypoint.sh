#!/usr/bin/env bash
set -eo pipefail

export GITHUB_TOKEN=${GITHUB_TOKEN}

npm install
yarn build
if [[ "${RELEASE}" == 'true' ]]; then
  yarn release 2>&1 | tee release_log
fi
