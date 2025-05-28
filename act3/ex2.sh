#!/bin/bash
# Count positive, negative, and zero numbers in input parameters

# Initialize counters
positive=0
negative=0
zero=0

echo "Analyzing numbers: $@"

for num in "$@"; do
    # Validate if the parameter is a number (including negative numbers)
    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        if [ "$num" -gt 0 ]; then
            ((positive++))
            echo "$num is positive"
        elif [ "$num" -lt 0 ]; then
            ((negative++))
            echo "$num is negative"
        else
            ((zero++))
            echo "$num is zero"
        fi
    else
        echo "Warning: '$num' is not a valid integer and will be ignored"
    fi
done

# Display results
echo -e "\nResults:"
echo "Positive numbers: $positive"
echo "Negative numbers: $negative"
echo "Zeroes: $zero"
