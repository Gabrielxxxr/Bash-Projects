#!/usr/bin/env bash


name=$(whoami)
name=${name@U} #Changes the whoami command to uppercaseecho -e $\tname

count=1
user="MONARCH"
paswd='monarch'

greet() {
    if [[ $name="Monarch" ]]; then
        #notify-send "User is monarch"
    echo -e '\tUser is monarch'
    fi
}
greet

# Making a calculator

echo "Please enter the first number:"
read num1

echo "Please enter the second number:"
read num2

echo "Please enter the operation (+, -, *, /):"
read op

if [ "$op" == "+" ]; then
    result=$((num1 + num2))
elif [ "$op" == "-" ]; then
    result=$((num1 - num2))
elif [ "$op" == "*" ]; then
    result=$((num1 * num2))
elif [ "$op" == "/" ]; then
    result=$((num1 / num2))
fi

echo "The result is: $result"