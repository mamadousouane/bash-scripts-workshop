#!/bin/bash
play="yes"

while [ "$play" = "yes" ]; do #As long as the variable play is in itself, it will not exit the loop.
	echo "Choose: rock, paper, scissors"
	read choose
	
	options="rock paper scissors" #the options to choose from
	machine=$(echo "$options" | cut -d' ' -f$((RANDOM % 3 + 1))) #The machine chooses one of the options using the options variable and the cut tool to choose one at random.
	echo "The machine choose $machine"
	
	if [ "$choose" == "$machine" ]; then #In case the two are equal, there is a tie.
		echo "It's a tie"
	elif [[ "$choose" = "paper" && "$machine" = "rock" ]]; then #in case you choose paper and stone machine user wins
		echo "you win"
	elif [[ "$choose" = "rock" && "$machine" = "scissors" ]]; then #in case you choose rock and scissors machine user wins
		echo "you win"
	elif [[ "$choose" = "scissors" && "$machine" = "paper" ]]; then #in case you choose scissors and paper machine the user wins
		echo "you win"
	else
		echo "you lose" #If the user does not choose the above options, he/she will have lost
	fi
	
	echo "Do you want to keep playing? (yes/no) default is NO"
	read keep

	if [ "$keep" = "no" ]; then #If you do not wish to continue, this is the end of 
		play="no"
	elif [ "$keep" = "yes" ]; then #Should you choose to continue
		play="yes"
	else
		play="no" #If neither yes nor no is entered, the program terminates by default.
	fi
done
