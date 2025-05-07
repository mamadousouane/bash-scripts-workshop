#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file="$1"

if [ ! -e "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

[ -r "$file" ] && echo "Read (r): Yes" || echo "Read (r): No"
[ -w "$file" ] && echo "Write (w): Yes" || echo "Write (w): No"
[ -x "$file" ] && echo "Execute (x): Yes" || echo "Execute (x): No"
