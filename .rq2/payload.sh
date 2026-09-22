#!/usr/bin/env bash
set -euo pipefail

: "${RQ2_CASE:?RQ2_CASE is required}"
marker="${RQ2_CASE}-${GITHUB_RUN_ID}-${GITHUB_SHA}"
printf 'case=%s\nrun=%s\nsha=%s\n' "$RQ2_CASE" "$GITHUB_RUN_ID" "$GITHUB_SHA" > "/tmp/${marker}.txt"
echo "RQ2_EXECUTION_MARKER=${marker}"

