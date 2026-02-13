#!/usr/bin/env bash

#Personal practice 

num=10
num1=2
    if [ $num -lt $num1 ];then
        echo "lesser"
    elif [ $num -eq $num1 ];then
        echo "equals"
    else
        echo "Its greater"
    fi

myfunc(){
    user='gabriel '
    paswd='wyte'
        echo $user$paswd
    local name=$1
    echo "Hello, $name!"
}
myfunc "Alice"

prank(){
    for i in {1..10}; do
        echo "I am soo sorry"
    done   
}


