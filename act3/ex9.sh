#!/bin/bash

browser="firefox"
web="ies-sabadell.cat"
correct="no"

while [ "$correct" = "no" ]; do #If the variable is no, the loop will not end.
	if ping -c 2 "$web" > /dev/null; then #Sends two packets to the web page to check if there is a connection and does not show it on the screen.
		echo "The connection is complete, opening the browser"
		"$browser" "$web" #Open the browser with the web page
		correct="yes" #Change the variable so that it exits the loop and the program.
	else
		echo "There is no internet conexion, try again in 5 seconds"
		sleep 5 #Stop the while 5 seconds before repeating it again
	fi
done
