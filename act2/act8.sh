#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

path="$1"

if [ ! -e "$path" ]; then
    echo "Error: Path does not exist."
    exit 1
fi

if [ -d "$path" ]; then
    echo "Type: Directory"
elif [ -f "$path" ]; then
    echo "Type: File"
    filename=$(basename -- "$path")
    extension="${filename##*.}"
    if [ "$filename" = "$extension" ]; then
        echo "Extension: None"
    else
        echo "Extension: $extension"
    fi
else
    echo "Type: Unknown"
fi
