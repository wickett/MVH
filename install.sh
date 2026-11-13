#!/usr/bin/env bash
set -euo pipefail
set -o noclobber
if ! printf '%s\n' 'Do it right the first time.' > HARNESS.md; then
  printf '%s\n' 'Could not create HARNESS.md. Existing files are left alone.' >&2
  exit 1
fi
