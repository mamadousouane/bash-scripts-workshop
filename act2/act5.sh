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

# Determine file type
file_type=$(file -b "$file" | awk '{print $1}')
echo "File type: $file_type"

# Check permissions
[ -r "$file" ] && echo "Readable: Yes" || echo "Readable: No"
[ -w "$file" ] && echo "Writable: Yes" || echo "Writable: No"
[ -x "$file" ] && echo "Executable: Yes" || echo "Executable: No"
