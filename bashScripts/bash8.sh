#!/usr/bin/env bash

#String Comparison Operators
# = : Equals to
# != : Not Equals to 
# < : Less than
# > : Greater than

#Arithmetic Operators for mostly integers
# +
# - 
# /
# *
# %

# LOGICAL OPERATORS
# && : Logical AND
# || : Logical OR
# ! : Logical Not

#Bash file Test Operators
# -e if file exists ; ! -e if file doesn't exist
# -f if file exists and is a regular file 
# -d if file exist and is a directory
# -b if file exist and is a block device
# -c if file exist and is a character device
# -S if file exist and is a socket

#Bash File permissions test
# -r if file exists and is readable
# -w if file exists and is writable
# -x if file exists and is executable

#Basg file attributes and status test
# -s if file exists and has a size greater than zero ! -s if opposite
# -o if file exists and is owned by the effective user ID
# -G if file exists and is owned by the effective group ID

#Bash Comparison operators
# file1 -nt file2 : If file1 is newer than file2
# file1 -ot file2 : If file1 is older than file2
# file1 -ef file2 : If file1 and file2 refer to the same file

filetest(){

if [ ! -e bash1.sh ]; then 
	echo "Bash1.sh exists"
elif [ ! -e hash.sh ]; then 
	echo "hash.sh doesn't exist"
else 
	echo "see ya"
fi


if [ bash15.sh -ef bash16.sh ]; then
	echo "both file are empty hence they are considered equal"
else 
	for i in {1..5}; do
		echo "bash15 and 16.sh are diff"
	done
fi


if [ bash1.sh -nt bash2.sh ]; then
	echo "how can bash1 be newer than bas2"
else
	notify-send "bash2.sh is newer"
fi

}
filetest


