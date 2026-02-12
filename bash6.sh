#!/usr/bin/env bash

#Practicing Loops&conditionals

user='jade'
passwd='monarch'
old=82
new=28

#password is correct say passwd is correct 5X

paswd() {
for u in {1..5}; do
    echo "passwd is correct"
done

if [ $user != 'jade'  ]; then  
    echo 'invalid user'
else
    for v in {1..7}; do
        echo 'valid user'
    done
fi
}
#paswd

hitotsu() {
    year=2007
    count=1
    while [ $count -ne 12 ]; do
        echo " you are going to be $count in the year $year"
        ((count++)) && ((year++)) 
    done

    age=0
    nen=2007
    until [ $age -eq 18 ]; do
        echo "He was $age in year $nen"
        ((age++)) && ((nen++))
    done
}
#hitotsu

func(){
    greet=$1
    echo "Hello, $greet"
}
#func "gabriel"


#echo ${car[@]}
Car() {
car=("Mercedes" "Acra" "BMC" "Lamborgini")
if [ ${car[0]} = 'Acra' ]; then
    for i in {1..5}; do
        echo "Acra is at index 1"
    done
else
    count=5
    while [ $count -lt 11 ]; do
        echo "damncountt "
        ((count++))
    done
fi
}
#Car

untilwhile(){    
while [ $new -le 40 ]; do
    echo "what'll happen when I'm $new"
    ((new++))
done

until [ $old -le 10 ]; do
    echo " I'm regressing $old"
    ((old--))
done
}
#untilwhile

#Program to create a folder named home and subdirectories 
# within those subdirectories create 20 files within the 3 directories within home/Documents/code & display a message saying "Task Complete" 
code(){
    DOCS_DIR="$HOME/Documents"
    CODE_DIR="$HOME/Documents/code-projects/code"

    if [ -d "$DOCS_DIR" ]; then
        mkdir -p $CODE_DIR; touch $CODE_DIR/html{1..5}.html $CODE_DIR/html{1..5}.css $CODE_DIR/html{1..5}.js 
    else
        mkdir -p $CODE_DIR; touch $CODE_DIR/html{1..5}.html $CODE_DIR/html{1..5}.css $CODE_DIR/html{1..5}.js
    fi

    if [ -d "$CODE_DIR" ]; then
        echo "Directory created or already exists"
    else
        echo "Failed to create directory"
    fi
}
#code
