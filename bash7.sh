#!/usr/bin/env bash

#BREAK AND CONTINUE STATEMENTS && NESTED LOOPS

for i in {1..5}; do
    if [ $i -eq 3 ]; then
        continue
    fi
    echo "Number $i"
    if [ $i -eq 4 ]; then
        break 
    fi
done


for i in {1..3}; do
    for j in {1..2}; do
        echo "Outer loop $i, Inner loop $j"
    done
done
