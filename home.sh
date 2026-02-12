#/usr/bin/env bash

# Path to home directory
$check="~"

# Program to create necessary folders if it doesn't exist
if [ -d $check ]; then
	echo "Other Necessary folders exist It this exist"
elif [ ! -d $check ]; then
	mkdir -pv "/home/*/Documents/" "/home/*/Downloads/" "/home/*/Desktop/" "/home/*/Music/" "/home/*/Pictures/" "/home/*/Templates/" "/home/*/Public"
fi 