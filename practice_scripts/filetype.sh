#!/bin/bash

read -r -a RESOURCES -p "Enter multiple name by space: "

for sources in "${RESOURCES[@]}"; do
    if [ -f "$HOME/$sources" ]; then
        echo "========================"
        echo "FILE name: $sources" 
        echo "File size: $(stat -c %s "$HOME/$sources")"
        echo "Resource Type: FILE"
        echo "========================"
        ((FILEFOUND++))
    elif [ -d "$HOME/$sources" ]; then
        echo "Directory name: $sources" 
        echo "Directory size: $(stat -c %s "$HOME/$sources")"
        echo "Resource Type: FILE"
        ((DIRFOUND++))
        echo "========================"
    else
        echo "$sources not found"
        echo "========================"
        ((NOTFOUND++))
    fi
done

exist="$(( FILEFOUND + DIRFOUND))"
echo ""
echo "Summary: ${#RESOURCES[@]}"
echo "Total files entered: $FILEFOUND"
echo "Total files entered: $DIRFOUND"
echo "Existing: $exist"
echo "Missing: $NOTFOUND"