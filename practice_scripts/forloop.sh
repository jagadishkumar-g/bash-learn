#!/bin/bash

read -r -p -a "enter multiple files: " FILES

for file in "${FILES[@]}"; do
    echo "FILE: $file"
done