#!/bin/bash

LOG_FILE="$HOME/logfile.log"
> "$LOG_FILE"

# Create file function
create_file() {
    local FILE_NAME=$1
    
    if [ -e "$HOME/$FILE_NAME"  ]; then
        echo "$FILE_NAME is already exist."
    else
        touch "$HOME/$FILE_NAME"
        echo "created $FILE_NAME"
    fi

}

#create Folder function

create_folder() {
    local FOLDER_NAME=$1
    
    if [ -e "$HOME/$FOLDER_NAME"  ]; then
        echo "$FOLDER_NAME is already exist."
    else
        mkdir "$HOME/$FOLDER_NAME"
        echo "created $FOLDER_NAME"
    fi


}

#validate the input provided

validate_input() {
    local NAME=$1
    local TYPE=$2

    if [ "$TYPE" == "file" ]; then
        create_file "$NAME"
    elif [ "$TYPE" == "folder" ]; then
        create_folder "$NAME"
    else
        echo "Invaild file/folder type, please try again."
    fi


}

# Requesting for user input
read -r -p "Enter names (space-separated): " NAMES
read -r -p "Type to create (file/folder): " TYPE

# Loop for each name
for item in $NAMES; do
    validate_input "$item" "$TYPE"
done