#!/bin/bash

echo "Enter the name of a file that store the words"
read file

if [ ! -f "$file" ]; then #Verify if the file exist
	touch "$file"
fi

echo "Write words and when you want to stop write :>"
word=""

while [ "$word" != ":>" ]; do # Verify if the varaible word is :>
	read  word #read the parameter enter for the user
	if  [ "$word" != ":>" ]; then #verify if the  variable word is :>
		echo "$word" >> "$file" #Add the word in the end of the file
	fi
done
