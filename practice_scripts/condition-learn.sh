#!/bin/bash

echo "Let's check your eligibility?"
read -r -p "Enter your name: " NAME
read -r -p "Enter your age: " AGE

if ! [[ "$AGE" =~ ^[0-9]+$ ]]; then
    echo "Invaild age, Please try again with correct age."
    exit 1
fi

if ! [[ "$NAME" =~ ^[a-zA-Z\ ]+$ ]]; then
    echo "Invaild Name, Please try again with correct Name."
    exit 1
fi


if [ "$AGE" -lt 18 ]; then
 echo "Hello $NAME, You are too young for this course." 
elif [ "$AGE" -gt 60 ]; then
  echo "Hello $NAME, You are old for this course."
else
  echo "Hello $NAME, You are eligible for this course."
fi

# if [ $AGE -ge 18 ] && [ $AGE -le 60 ]; then
#     echo "Hello $NAME! You are eligible for this course."
# else
#     echo "Hello $NAME! You are not eligible for this course."
# fi


