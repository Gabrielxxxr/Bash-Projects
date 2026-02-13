#!/usr/bin/env bash

# the sleep command is used to for delay after a command has been outputted

#!/bin/bash

#Simple Password Generate

echo "Welcome to  simple password generator"

sleep 3

echo "Please enter the length of the password:"
read PASS_LENGTH

for p in $(seq 1);
do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done