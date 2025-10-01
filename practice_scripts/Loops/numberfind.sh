#!/bin/bash

# Task 1: Number Guess Game (Enhanced)
# Enhance your previous “guess the number” script.
# Requirements:
# Only accept numbers as input.
# Give hints: “Too high” or “Too low”.
# Limit maximum attempts to 5.

secret=8



for attempts in {1..5}; do
    read -r -p "ENTER your number (1-9): " guess
    if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
        echo "Enter the digit from 1-9"
    fi

    if [ "$guess" -gt "$secret" ]; then
        echo "Too High"
        echo "Attempts left: $((5-attempts))"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Too Low!"
        echo "Attempts left: $((5-attempts))" 
    else 
        echo "/nCongratulations! Secret number is: $secret"
        exit 0
    fi    
done

echo "Game Over! The secret number was $secret."