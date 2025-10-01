#!/bin/bash

#### this script is used to learn "while loop".
# Ask the user to guess a number between 1 and 5.
# Keep asking until they guess the correct number.
# Print how many tries it took.

secret=8
guess=0

while [ $guess -ne $secret ]; do
    read -r -p "Guess a number between 1 and 9: " guess
    ((attempts++))
    if [ $guess -ne $secret ]; then
        echo "You secret number is $secret"
    else
        echo "Please trying again."
    fi
done

echo "Total Attempts: $attempts"
echo "Total Guess Taken: $guess"