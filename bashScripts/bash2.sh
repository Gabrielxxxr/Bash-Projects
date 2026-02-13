#!/bin/bash

# when listing for directories, no need to add quotations

user='gabriel'
password='wytewa'
age=32
num1=30
num2=15


if [ $user!='gabriel' ];then
    echo 'who are you? '
else
    'I am whoami'
fi


if [[ $num1 -gt $num2 ]];then 
    echo "num1 is greater"
fi

if [ $num1 -gt 0 ];then
    if [ $num1 -ge 30 ];then
        echo "Number is btw 1 - 9"
    fi
fi


add=$((num1 + num2))
    echo $add
division=$((num1/num2))
    echo $sub
mul=$((num1*num2))
    echo $mul
exp=$((num1**2))
    echo $exp


    