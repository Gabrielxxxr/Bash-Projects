#!/usr/bin/env bash

#reading from standard input to use in conditional statements and loops

read -p "What is your age? " age;
if [ $age -le 13 ]; then
    echo -e "\tyou're a minor"
elif [ $age -eq 18 ]; then
    echo -e "\tyou're a teenager"
else 
    echo -e "\tyou're a senior citizen"
fi

read -p "what's your occupation? Or do you have an occupation? "" occ";
profession=("Full-Stack Developer" "Doctor" "Engineer" "Veterneriary Doctor" "Ethical Hacker")

    if [ "$occ" !=  ${profession[@]} ]; then
        echo -e "\tThat's a really nice occupation! I'm glad for you"
    fi

    if [ "$occ" = ${profession[0]} ]; then
        echo -e "\tFull-Stack Developing, that's nice"
    fi

    if [ "$occ"=${profession[1]} ]; then
        echo -e "\tBeing a doctor is nice"
    fi

    if ["$occ"=${profession[2]} ]; then
        echo -e "\tThat's a good profession"
    fi