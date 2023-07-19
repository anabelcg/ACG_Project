#!/usr/bin/env bash

echo "[Hi, this is Guessing Game]"

function ask_answer {
	echo "How many files do you think are in the current directory? Enter, please:"
	read answer
    files_ok=$(ls -1 | wc -l)
}

ask_answer

while [[ $answer -ne $files_ok ]]
do
	if [[ $answer -lt $files_ok ]] 
	then
		echo "Sorry, not the right answer, too low. Try again, please"
	else
		echo "Sorry, not the right answer, too high. try again, please"
	fi
	ask_answer
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
