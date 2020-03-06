#!/usr/bin/env bash
# File: guessinggame.sh

check () {
	if [[ $guess -eq $number_of_files ]]
	then
		echo "Congratulations ! You guessed the right number of files in this directory"
	fi
	if [[ $guess -gt $number_of_files ]]
	then
		echo "There are less files in this directory, continue guessing"
	fi
	if [[ $guess -lt $number_of_files ]]
	then
		echo "There are more files in this directory, continue guessing"
	fi
}

default=0
number_of_files=$( ls -al | wc -l )
echo $number_of_files

while [[ $default -ne $number_of_files ]]
do
	echo "How many files are in this directory (please enter a number)?"
	read guess
	check
	let default=$guess
done


