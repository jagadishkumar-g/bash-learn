#!/bin/bash

read -r -p "enter multiple files: " FILES

for file in "${FILES[@]}"; do
    echo "FILE: $file"
done