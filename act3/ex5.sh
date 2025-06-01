#!/bin/bash
echo "Enter a directory path"
read file

until [ -d "$file" ] #until it becomes a directory it will not stop
do
	echo "The directory is not valid, try again"
	read file
done

[ -r "$file" ] && echo "The directory have Read permisions" #show the read permisions
[ -w "$file" ] && echo "The directory have Write permisions" #show the write permisions
[ -x "$file" ] && echo "The directory have eXecution permisions" #show the execution permisions

total_files=$(find "$file" -type f | wc -l) # Count how many files there are
total_directory=$(find "$file" -type d | wc -l) # Count how many directory there are

echo "There are $total_files files in total"
echo "There are $total_directory directory in total"

echo "All the files name: "
find "$file" -type f #find all the names of the directory path

echo "All the directory name: "
find "$file" -type d #Find all the names of the directory path
