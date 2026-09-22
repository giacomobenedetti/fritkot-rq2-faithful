#!/usr/bin/env bash
set -euo pipefail
marker="${RQ2_CASE:-a2-astryx}-${GITHUB_RUN_ID:-local}-${GITHUB_SHA:-unknown}-X"
printf 'RQ2_EXECUTION_MARKER case=%s stage=%s run=%s sha=%s\n' \
  "a2-astryx" "X" "${GITHUB_RUN_ID:-local}" "${GITHUB_SHA:-unknown}" | tee "/tmp/${marker}.txt"
