#!/bin/bash

HOME_DIR="/home/ubuntu"

# HOME_DIR="/Desktop/jagadish-repos"
read -r -p "Enter the directory name which you want to create: " DIR_NAME

cd "$HOME_DIR" || { echo "Home directory not found"; exit 1; }



########## simple method #################

mkdir -p "$DIR_NAME" && echo "Created $DIR_NAME and it's ready for use." >> folder_log.txt 


########## using if statements ############################
# if [ -d "$DIR_NAME" ]; then
#     echo "Folder already exists."
# else
#     if mkdir "$DIR_NAME"; then
#         echo "Directory has been created successfully."
#     else
#         echo "Folder '$DIR_NAME' has been created."
#         exit 1
#     fi
# fi