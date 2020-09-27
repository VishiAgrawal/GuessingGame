#!/usr/bin/env bash
#filename: guessinggame.sh

numberoffiles=$(ls | wc -l)
echo "Guess the number of files in the current directory:"

read user_input

function checker {
    while [ $user_input -ne $numberoffiles ]
    do
    if [ $user_input -gt $numberoffiles ]
    then
        echo "Input Higher than the actual value! Please try again!"
        read user_input
    else
        echo "Input Lower than the actual value! Please try again!"
        read user_input
    fi
    done
}

checker

echo "Congratulations! You guessed the right number of files: $numberoffiles !"
