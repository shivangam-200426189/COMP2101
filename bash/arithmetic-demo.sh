#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "enter first number" fnum
read -p "enter second number" snum
read -p "enter third number" tnum
sum=$((fnum + snum + tnum))

product=$((fnum + snum + tnum))
cat <<EOF
$fnum plus $snum plus $tnum is $sum
$fnum multiply by $snum and $tnum is $product
EOF
