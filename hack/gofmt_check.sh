#!/usr/bin/env bash

set -o errexit

source hack/bazel_setup.sh

$BAZEL_B @go_sdk//...

export PATH="$(bazel info output_base)/external/go_sdk/bin:$PATH"

if [[ -z $(go fmt -n $(go list ./... | grep -v /vendor/) | sed 's/ -w//') ]]; then
  echo "Go files must be formatted with gofmt. Please run:"
  echo '  go fmt $(go list ./... | grep -v /vendor/)'
  exit 1
fi

