#!/bin/bash

echo "Welcome to Guessing Game!"

function promptForGuess {
	echo "Please enter how many files you believe are within the current directory: "
	read V_GUESS
	echo "You have entered $V_GUESS as your guess."
	V_FILE_COUNT=$(ls -1 | wc -l)
}

while [ $V_GUESS -ne $V_FILE_COUNT ]; do
	promptForGuess
	if [ $V_GUESS -lt $V_FILE_COUNT ]; then
		echo "Sorry, your guess was too low. Please try again!"
	elif [ $V_GUESS -gt $V_FILE_COUNT ]; then
		echo "Sorry, your guess was too high. Please try again!"
	fi
done

echo "You guessed correctly, well done!"
