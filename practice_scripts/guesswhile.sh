#!/bin/bash

#### this script is used to learn "while loop".
# Ask the user to guess a number between 1 and 5.
# Keep asking until they guess the correct number.
# Print how many tries it took.

secret=8
GUESS=0
attempts=0

while true; do
    read -r -p "Guess a number between 1 and 9: " GUESS
    ((attempts++))
    if [ "$GUESS" = $secret ]; then
        echo "You secret number is $secret"
    fi
done

echo "Total Attempts: $attempts"
echo "Total Guess Taken: "