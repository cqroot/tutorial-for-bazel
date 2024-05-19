#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
PROJECT_DIR=$(dirname "${SCRIPT_DIR}")

while IFS= read -r -d '' dir; do
    echo "Clean ${dir}."
    echo "=================================================="
    (cd "${dir}" && bazel clean --expunge)
    echo ""
done < <(find "${PROJECT_DIR}" -type d -name 'day*' -print0)
