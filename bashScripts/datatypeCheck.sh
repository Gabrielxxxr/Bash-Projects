val="$1"

is_integer() {
  [[ "$1" =~ ^-?[0-9]+$ ]]
}

is_float() {
  [[ "$1" =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

is_float_strict() {
  [[ "$1" =~ ^-?[0-9]+\.[0-9]+$ ]]
}

is_string() {
  ! is_numeric "$1"
}

is_numeric() {
  [[ "$1" =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

val="$1"

if is_integer "$val"; then
  echo "$val is an integer"
elif is_float "$val"; then
  echo "$val is a float"
else
  echo "$val is a string (non-numeric)"
fi
