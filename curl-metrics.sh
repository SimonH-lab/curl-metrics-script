#!/usr/bin/env bash
set -euo pipefail

URL="${1:-}"
if [[ -z "$URL" ]]; then
  echo "Usage: $0 <url>"
  exit 1
fi

curl -L -o /dev/null -s -w \
"connect: %{time_connect}s  starttransfer: %{time_starttransfer}s  total: %{time_total}s  speed_download: %{speed_download} B/s\n" \
"$URL"