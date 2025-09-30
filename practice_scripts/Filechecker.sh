#!/bin/bash

read -r -a FILES -p "Enter multiple files separated by space: "

HOME_VAR="$HOME"

for file in "${FILES[@]}"; do
    if [ -f "$HOME_VAR/$file" ]; then
        echo "File $file exists"
    else
        echo "File $file does NOT exist"
    fi
done
