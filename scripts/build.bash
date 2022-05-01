#!/usr/bin/env bash

set -o errexit
set -o xtrace
set -o pipefail

# Maven package first

if ! [ -x "$(command -v docker)" ]; then
    printf "%s\n" 'Error: docker is not installed.' >&2
    exit 1
fi

if ! [ -x "$(command -v git)" ]; then
    printf "%s\n" 'Error: git is not installed.' >&2
    exit 1
fi

PROJECT_ROOT=$(git rev-parse --show-toplevel)

docker buildx build "${PROJECT_ROOT}" -f "${PROJECT_ROOT}/docker/Dockerfile" -t haskell-local-build:latest