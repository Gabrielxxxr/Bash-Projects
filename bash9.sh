#!/usr/bin/env bash

my_function(){
    if [[ du=56 ]]; then 
        echo "disk space of current dir is less than 50mb"
    else 
        echo "This conditional didn't work"
    fi        
}
my_function

calc(){
num1=500
num2=20

if [ $num1 -gt $num2 ]; then
    ((num1++))
fi

quo=$((num1 / num2))
    if [[ $quo -lt 26 ]]; then 
        echo "quo is $quo"
    else
        echo "This command didn't work"
    fi
}


