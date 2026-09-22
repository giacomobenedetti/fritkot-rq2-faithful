#!/usr/bin/env bash
set -euo pipefail
marker="${RQ2_CASE:-a3-huggingface}-${GITHUB_RUN_ID:-local}-${GITHUB_SHA:-unknown}-Y"
printf 'RQ2_EXECUTION_MARKER case=%s stage=%s run=%s sha=%s\n' \
  "a3-huggingface" "Y" "${GITHUB_RUN_ID:-local}" "${GITHUB_SHA:-unknown}" | tee "/tmp/${marker}.txt"
