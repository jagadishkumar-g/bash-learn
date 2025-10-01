#!/bin/bash

# Asks the user to enter multiple names separated by spaces.
# Asks whether each item should be a file or folder.
# Checks if each name already exists.
# Creates the file/folder if it doesn’t exist.
# Logs all creations to a file called creation.log.

# Function to create file and folders.

create_item() {
    local NAME=$1
    local TYPE=$2

    if [ -e "$HOME/$NAME" ]; then
        echo "$NAME Already Exist"
    elif [ "$TYPE" = "file" ]; then
        touch $NAME && echo "File '$NAME' created." | tee -a "$HOME"/creation.log
    elif [ "$TYPE" = "folder" ]; then
        mkdir $NAME && echo "Folder '$NAME' created." | tee -a "$HOME"/creation.log
    else
        echo "Invaild File Type, Please enter correct "File Type""
        exit 1
    fi
}

read -r -p "Enter names separated by space: " NAME
read -r -p "Do you want to create files or folders? (file/folder): " TYPE 

for item in $NAME; do
    create_item $item $TYPE
done

echo "All done! Check creation.log for details."