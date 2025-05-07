#!/bin/bash

read -p "Enter an integer: " num

if [ $num -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is not negative."
fi
