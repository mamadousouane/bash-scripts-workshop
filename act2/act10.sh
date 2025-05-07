#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <capture_file> <protocol>"
    exit 1
fi

file="$1"
protocol="$2"

# Check file exists and has correct extension
if [ ! -e "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

extension="${file##*.}"
if [ "$extension" != "txt" ] && [ "$extension" != "csv" ]; then
    echo "Error: File must have .txt or .csv extension."
    exit 1
fi

# Count protocol occurrences (case insensitive)
count=$(grep -i "$protocol" "$file" | wc -l)

if [ $count -eq 0 ]; then
    echo "No occurrences of protocol '$protocol' found."
else
    echo "Number of '$protocol' occurrences: $count"
fi
