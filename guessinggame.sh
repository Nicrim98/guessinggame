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
number_of_files=$( ls -al | wc -l )-1

echo "How many files are in this directory (please enter a number)?"
read guess

while [[ $guess -ne $number_of_files ]]
do
	if [[ $guess =~ ^[0-9$] ]] # checking if the number was pressed like 0,1,2,3 and nothing else
	then
		check
		read guess
	else
		echo "You need to type the number numerically like 0,1,2 and so on, try again"
		read guess
	fi
done

if [[ $guess -eq $number_of_files ]]
then
	echo "Congratulations ! You guessed the right number of files in this directory"
fi

