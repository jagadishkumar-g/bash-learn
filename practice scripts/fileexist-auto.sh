#!/bin/bash

# HOME_DIR="$HOME"

read -r -p "Enter file names separated by space: " FILES
cd "$HOME_DIR" || { echo "Home directory not found."; exit 1; }

for file in $FILES;
do
    if [ -f "$file" ]; then
        echo "$file File already exist"
    else
        touch "$file";
        echo "created $file. please check and let us know"
    fi
done
