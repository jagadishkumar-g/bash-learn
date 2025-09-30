#!/bin/bash

read -r -p "enter multiple files: " -a $FILES

for file in "${FILES[@]}"; do
    echo "FILE: $file"
done