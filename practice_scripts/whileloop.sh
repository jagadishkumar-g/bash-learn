#!/bin/bash

count=1

while [ $count -le 5 ]; do
    echo "your current number is $count"
    ((count++))
done