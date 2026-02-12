#!/usr/bin/env bash

#learning bash loops
#for loops example

for i in {1..5};do
    echo "Iteration $5"
done

#for x in {11..20};do
    #touch bash$x.sh
#done

count=1
while [ $count -le 5 ]; do
    echo "Count is $count"
    ((count++))
done

# a program to print " I will be ($age) in year ($year)" and increment the age and years 30 times
future(){
age=18
year=2025
while [ $age -le 43 ] && [ $year -le 2050 ]; do
    echo " I will be $age in year $year"
    ((age++)) && ((year++))
done
}
#future

# a program to go back in time and display hw old i was from birth
timee(){
    age=18
    year=2025
        while [ $age -ge 1 ] && [ $year -ge 2007 ]; do
            echo "I was $age in year $year"
            ((age--)) && ((year--))
        done
    user='monarch'
    owner='jade'
}
#timee

untill(){
    count=1
    until [ $count -gt 5 ]; do
        echo "Count is $count"
        ((count++))
    done
}
#untill

kyonen=2022
for z in {1..5}; do
    echo "She is $z years old in year $kyonen"
    ((kyonen++))
done

#!usr/bin/env bash

year=2025
age=18
while [ $age -le 30 ]; do
    echo "I will be $age in year $year"
    ((year++)); ((age++))
done

#Standard redirection of output in bash for older versions of linux
 ls -! l 2> ls.txt # This will send the error output to file ls.txt
 ls -! l > ls.txt 2>&1 #This will send both output for the command and error if there is one
# Recent versions of linux use a more simpler command for redirecting both standard output & error
 ls -! l &> ls.txt
# You can also append the standard error and out put like so
 ls -! l &>> ls.txt  # This command will
