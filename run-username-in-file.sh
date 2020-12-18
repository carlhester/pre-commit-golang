#!/usr/bin/env bash
failed=false

for file in "$@"; do
    if ! grep -c $USER "$file" 2>&1
    then
        failed=true
    fi
done

if [[ $failed == "true" ]]; then
    exit 1
fi
