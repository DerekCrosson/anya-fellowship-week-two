#!/bin/bash
set -e

mkdir actions-runner && cd actions-runner
curl -O -L https://github.com/actions/runner/releases/download/2.292.0/actions-runner-linux-x64-2.292.0.tar.gz
tar xzf ./actions-runner-linux-x64-2.292.0.tar.gz
./bin/installdependencies.sh
mkdir /_work

AUTH_HEADER="Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}"
API_VERSION=v3
API_HEADER="Accept: application/vnd.github.${API_VERSION}+json"
_FULL_URL="https://api.github.com/repos/${GITHUB_ORGANIZATION}/${GITHUB_REPO}/actions/runners/registration-token"
RUNNER_TOKEN="$(curl -XPOST -fsSL \
  -H "${AUTH_HEADER}" \
  -H "${API_HEADER}" \
  "${_FULL_URL}" \
| jq -r '.token')"

./config.sh --url https://github.com/${GITHUB_ORGANIZATION}/${GITHUB_REPO} --token "${RUNNER_TOKEN}" --name "aws-runner" --work _work --labels aws-runner --unattended --replace
./bin/runsvc.sh
