#!/usr/bin/env bash


#String Manipulation in Bash Scripting
echo -e "\twhoami"

car="MERCDES"
car="mercedes"
echo ${car:5}
echo ${car@U} #adding @U turns the variables value to Uppercase
echo ${car@L} #adding @L turns the variables value to LowerCase
echo ${#car} #gives you the lenght of the string

FILES="one two three"
ls ${FILES}


str="Hello, World"
echo ${#str}
echo ${str:0:9} #extracts from point 0 - point 9
echo ${str:7} #extracts from poin 7 - the end

#String Replacement
echo ${str/World/BAsh} # Replace first occurence
str="apple apple apple"
echo ${str//apple/banana} # Replaces all occurence

#Remove substrings
fielname="file.tar.gz"
echo ${filename#t} # Remove shortest 

#String Case modification
echo ${str,,} # Convert to lower case
echo ${str@L} # Convert to lower case
echo ${str@U} # Convert to upper case     
echo ${str^^} # Converts to upper case
echo ${str^} # Converts to upper casehow to make a translucent bar with rgb


#String Concatenation
str1="Hello"
str2="World"
combined="$str1, $str2"                                              
echo $combined

#Checking if substring is present
 if [[ $str == *"World"* ]]; then
    echo "substring found"
 else 
    echo "substring not found"
 fi

#Splitting strings Using IFS (Internal Field Separator)
sstr="apple, banana, cherry"
echo ${sstr} 

