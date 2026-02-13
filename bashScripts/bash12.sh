#!/usr/bin/env bash

#!/bin/bash

# Define a set of numbers that should use a non-default suffix.
# For readability, we explicitly list the numbers that are exceptions to the default "th" rule.
# You can extend this list with more numbers (e.g., 24, 25, etc.) if desired.
declare -A special # associative array ( Bash 4+ )
# Populate with exact desired phrases for specific numbers
# The key is the number as a string, the value is the full phrase.
special["1"]="I was 1st position at one point"
special["2"]="I was 2nd position at one point"
special["3"]="I was 3rd position at one point"
# Add 21st, 22nd, 23rd, 31st, 32nd, 33rd, ... as needed
special["21"]="I was 21st position at one point"
special["22"]="I was 22nd position at one point"
special["23"]="I was 23rd position at one point"
special["31"]="I was 31st position at one point"
special["32"]="I was 32nd position at one point"
special["33"]="I was 33rd position at one point"
# Optionally continue with more examples, e.g. 41, 42, 43, etc.
# If you want a generic pattern beyond 100, you can extend similarly.

# Function to compute default ordinal suffix
get_ordinal() {
  local n="$1"
  local suffix
  case "$n" in
    11|12|13) suffix="th" ;;
    1) suffix="st" ;;
    2) suffix="nd" ;;
    3) suffix="rd" ;;
    *) suffix="th" ;;
  esac
  printf "%d%s" "$n" "$suffix"
}

# Generate output for 1..100 (or adjust upper limit as needed)
upper=100
for i in $(seq 1 "$upper"); do
  # If there's a special phrase for this number, print it directly
  if [[ -n "${special[$i]}" ]]; then
    echo "${special[$i]}"
  else
    # Otherwise print the default ordinal phrase
    ord=$(get_ordinal "$i")
    echo "I was ${ord} position at one point"
  fi
done