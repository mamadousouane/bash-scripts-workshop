#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_path> <output_tarball_name>"
    exit 1
fi

dir="$1"
output="$2"

if [ ! -e "$dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

if [ ! -d "$dir" ]; then
    echo "Error: Path is not a directory."
    exit 1
fi

if [ -e "$output.tar.gz" ]; then
    read -p "File $output.tar.gz exists. Overwrite? (y/n): " answer
    if [ "$answer" != "y" ]; then
        echo "Operation cancelled."
        exit 0
    fi
fi

tar -czf "$output.tar.gz" "$dir"

if [ $? -eq 0 ]; then
    echo "Directory compressed successfully to $output.tar.gz"
else
    echo "Error occurred during compression."
    exit 1
fi
