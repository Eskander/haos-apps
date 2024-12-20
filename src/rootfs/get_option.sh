#!/usr/bin/env sh

# Function to get a value from options.json by key
# Returns empty string for empty values or non-existent keys

if [ ! -f "/data/options.json" ]; then
    echo "Error: /data/options.json not found" >&2
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: $0 KEY" >&2
    exit 1
fi

# Match the key and capture everything up to the next comma or closing brace
grep "\"$1\":" /data/options.json | sed -E 's/.*"'"$1"'"\s*:\s*"?([^,"}\n]*)"?\s*[,}]?.*/\1/'
