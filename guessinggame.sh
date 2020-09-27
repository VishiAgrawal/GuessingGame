#!/usr/bin/bash

#For the course created by Vishi Agrawal

echo "Guess the number of files in the current directory!!!"

#Creating the function
function keepguess(){
    answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter/input your Guess!!!"
        read  guess
        if [ $guess -lt $answer ]
        then
            echo "Your guess is incorrect. Your Guess is lesser than Actual Value. Keep Guessing"
        elif [ $guess -gt $answer ]
        then
            echo "Your guess is incorrect. Your Guess is greater than Actual Value. Keep Guessing"
        else
            echo "Your guess is correct. Congrats !!!"
        break;
        fi
    done
}

#Calling the function
keepguess
