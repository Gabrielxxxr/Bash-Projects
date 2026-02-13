#!/usr/bin/env bash

#Functions & Arrays
greet() {
  local name=$1
  echo "Hello, $name!"
}
greet "Alice"

#Advanced Function Features
add() {
  local sum=$(($1 + $2))
  echo $sum
}
result=$(add 5 3)
echo "The sum is $result"
echo ""

name='whoami'

#Creating an Array
my_array=('apple' 'orange' 'banana')
echo ${my_array[2]}

my_array[1]="pawpaw"
echo ${my_array[1]}
echo  ${my_array[@]}