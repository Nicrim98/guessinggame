#!/usr/bin/env bash
# File: guessinggame.sh

# Function checks if the number is correct or it prompt user to guess again with a correction
check () {
	if [[ $guess -gt $number_of_files ]]
	then
		echo "There are less files in this directory, continue guessing"
	fi
	if [[ $guess -lt $number_of_files ]]
	then
		echo "There are more files in this directory, continue guessing"
	fi
}

# it counts how many files are in current directory minus 1 which is "Total ..."
number_of_files=$( ls -A | wc -l )
is_it_guessed=0

echo "How many files are in this directory (please enter a number)?"
read guess


while [[ $is_it_guessed -ne 1 ]]
do
	if [[ $guess =~ ^[0-9]*$ ]]
	then
		if [[ $guess -eq $number_of_files ]]
		then
        		echo "Congratulations ! You guessed the right number of files in this directory"
        		let is_it_guessed=1
		else
			check
			read guess
		fi
	else
		echo "You need to type the number numerically like 0,1,2 and so on, try again"
		read guess
	fi
done
