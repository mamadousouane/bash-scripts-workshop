#!/bin/bash
# Student Name: Mamadou

# Ask for filename
read -p "Enter a filename: " filename

# Check if file exists
if [ -f "$filename" ]; then
  echo "The file $filename exists"
else
  echo "The file $filename does NOT exist"
  exit 1
fi

# Count lines
lines=$(wc -l < "$filename")
echo "The file has $lines lines"

# Search for a word
read -p "What word do you want to search for? " word
if grep -q "$word" "$filename"; then
  echo "The word '$word' IS in the file"
else
  echo "The word '$word' is NOT in the file"
fi

# Append text
read -p "Do you want to add text to the file? (y/n) " answer
if [ "$answer" = "y" ]; then
  read -p "Type what you want to add: " newtext
  echo "$newtext" >> "$filename"
  echo "Text added!"
fi

echo "Script finished. Thank you!"
