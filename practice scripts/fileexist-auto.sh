#!/bin/bash
# This script was created to practice user input, loop and conditional statements.
# ; is used to separate two, basically it states current is completed.
# || -> OR operator in bash, only execute next step if previous fails. 
# { ... } → group of commands. Anything inside { } is treated as one block.
# for file in $FILES $FILES is the string of file names the user typed, separated by spaces. 
# In loop, Each file name is assigned to the variable file one at a time. 
# Everything between do and done runs for each file.

HOME_DIR="$HOME"

read -r -p "Enter file names separated by space: " FILES
cd "$HOME_DIR" || { echo "Home directory not found."; exit 1; }

for file in $FILES;
do
    if [ -f "$HOME_DIR/$file" ]; then
        echo "$file File already exist"
    else
        touch "$file";
        echo "created $file. please check and let us know"
    fi
done

