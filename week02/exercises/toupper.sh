#!/usr/bin/env bash
# toupper.sh: Print input in uppercase

if [ $# -eq 0 ]; then
    echo "Error: No input provided" >&2
    echo "Usage: $0 <string>" >&2
    exit 1
fi

echo "${1^^}"
