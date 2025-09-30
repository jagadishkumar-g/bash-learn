#!/bin/bash

read -r -a FILES -p "enter multiple files: "

for file in "${FILES[@]}"; do
    echo "FILE: $file"
done