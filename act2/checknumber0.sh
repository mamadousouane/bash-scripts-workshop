#!/bin/bash

read -p "Enter an integer: " num

if [ $num -eq 0 ]; then
    echo "The number is zero."
else
    echo "The number is not zero."
fi
