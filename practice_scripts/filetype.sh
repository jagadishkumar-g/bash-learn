#!/bin/bash

read -r -a RESOURCES -p "Enter multiple name by space: "

for sources in "${RESOURCES[@]}"; do
    if [ -f "$HOME/$sources" ]; then
        echo "FILE name: $sources" 
        echo "File size: $(stat -c %s "$sources")"
        echo "Resource Type: FILE"
        ((FILEFOUND++))
    if [ -d "$HOME/$sources" ]; then
        echo "Directory name: $sources" 
        echo "Directory size: $(stat -c %s "$sources")"
        echo "Resource Type: FILE"
        ((DIRFOUND++))
    fi
    else
        echo "$sources not found"
        ((NOTFOUND++))
    fi
done

exist="$(( FILEFOUND + DIRFOUND))"
echo ""
echo "Summary: ${#RESOURCES[@]}"
echo "Total files entered: $FILEFOUND"
echo "Total files entered: $DIRFOUND"
Existing: echo "$exist"
Missing: echo "$NOTFOUND"