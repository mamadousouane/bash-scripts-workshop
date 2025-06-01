#!/bin/bash
correct="no"

while [ "$correct" = "no" ]; do #In case the correct answer is no, the while will not end.
	echo "Write a password"
	read password

	if [[ "${#password}" -lt 8 ]]; then #If it does not meet the minimum number of characters, an error message is displayed. 
		echo "Error, The password need minimun 8 characters long"
	elif [[ ! "$password" =~ [A-Z] ]]; then #In case there is not a capital letter, an error is displayed
		echo "Error, the password need 1 uppercase letter"
	elif [[ ! "$password" =~ [0-9] ]]; then #If it does not meet a number, an error is displayed
		echo "Error, the password need 1 digit"
	else
		echo "Password Correct!" #in the correct case, we change the variable to end the while and the program
		correct="yes"
	fi
done
