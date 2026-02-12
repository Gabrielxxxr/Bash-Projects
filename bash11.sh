#!/usr/bin/bash

#kyou mo nani o shirankata da yo ne

#!/bin/bash

#!/bin/bash
# Bash 4+ required for associative arrays if used; here we use a regular array.

declare -a custom=(
  "I was 1st position at one point"     # for 1
  "I was 2nd position at one point"     # for 2
  "I was 3rd position at one point"     # for 3
  # ... fill until 100
)

# If you want a ready-to-run version without filling all 100 entries yet,
# you can generate a default array of 100 items and override as needed.

# Build default ordinals function
get_ordinal() {
  local n=$1
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

# Ensure we have 100 entries in custom if you didn't fill them all
# If custom[i-1] is empty, fall back to default message
for i in {1..100}; do
  if [ -n "${custom[$((i-1))]}" ]; then
    echo "${custom[$((i-1))]}"
  else
    ord=$(get_ordinal "$i")
    echo "I was ${ord} position at one point"
  fi
done