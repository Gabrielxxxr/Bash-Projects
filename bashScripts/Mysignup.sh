#!/usr/bin/bash

name=$(whoami)
name=${name@U}

echo "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
echo "                                    "
echo "      Welcome to signup page.  "
echo "                                    "
echo "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
echo ""

read -p "Please enter your Fullname: " Name
echo ""
read -p "Please enter Email: " email
echo ""
read -p "Please enter new password: " paswd
echo ""
read -p "Please confirm password: " conf

if [[ "$paswd" == "$conf" ]]; then
    echo ""
    echo -e "\tYour signup is successful"
    sleep 2
    notify-send "$Name's
Signup was successful! "
else 
    echo "Passwords do not match"
fi     

