#!/usr/bin/env bash
set -euo pipefail
marker="${RQ2_CASE:-a1-backstage}-${GITHUB_RUN_ID:-local}-${GITHUB_SHA:-unknown}-X"
printf 'RQ2_EXECUTION_MARKER case=%s stage=%s run=%s sha=%s\n' \
  "a1-backstage" "X" "${GITHUB_RUN_ID:-local}" "${GITHUB_SHA:-unknown}" | tee "/tmp/${marker}.txt"
