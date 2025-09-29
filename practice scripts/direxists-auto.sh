#!/bin/bash

HOME_DIR="/home/ubuntu"

# HOME_DIR="/Desktop/jagadish-repos"
read -r -p "Enter the directory name which you want to create: " DIR_NAME

cd "$HOME_DIR" || { echo "Home directory not found"; exit 1; }
pwd

# cd "$HOME_DIR" || exit

if [ -d "$DIR_EXIST" ]; then
    echo "Folder already exists."
else
    if mkdir "$DIR_NAME"; then
        echo "Directory has been created successfully."
    else
        echo "Folder '$DIR_NAME' has been created."
        exit 1
    fi
fi