#!/bin/bash
valido=0

until [ "$valido" -eq 1 ]; do #As long as the valid variable is not 1 that does not stop until
    echo "Enter three numbers integers: "
    read first
    if [[ ! "$first" =~ [0-9] ]]; then #check if it is a number, if it is not, start again.
        echo "The first number is incorrect, rebooting"
        valido=0
    else
        read second
        if [[ ! "$second" =~ [0-9] ]]; then #check if it is a number, if it is not, start again.
            echo "The second number is incorrect, rebooting"
            valido=0
        else
            read three
            if [[ ! "$three" =~ [0-9] ]]; then #check if it is a number, if it is not, start again.
                echo "The third number is incorrect, rebooting"
                valido=0
            else
                valido=1 #in case they are all numbers, I change the number of the variable to get out of the loop
            fi
        fi
    fi
done

suma=$((first + second + three)) #I do the sum of the three numbers
product=$((first * second * three)) #I make the product of the three numbers

echo "Total sum: $suma"
echo "Total product: $product"

largest="$first" #I add that the longest is number 1.

if [ "$second" -gt "$largest" ]; then #If the second is the longest, I change the value of the largest variable.
    largest="$second"
fi

if [ "$three" -gt "$largest" ]; then  #If the third is the longest, I change the value of the largest variable.
    largest="$three"
fi

echo "The largest number is: $largest" 

smallest="$first" #I add that the smallest number is the first one.

if [ "$second" -lt "$smallest" ]; then #In case the second one is smaller, it will replace the small variable.
    smallest="$second"
fi

if [ "$three" -lt "$smallest" ]; then #In case the third one is smaller, it will replace the small variable.
    smallest="$three"
fi

echo "The smallest number is: $smallest"
