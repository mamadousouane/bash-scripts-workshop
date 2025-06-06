#!/bin/bash
echo "Dime una variable global"
read global
echo ${!global}
echo $@
echo $?
echo $$