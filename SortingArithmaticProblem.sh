#!/bin/bash -x
#Arithmetic Computation & Sorting
#This problem computes different arithmetic expressions and Sorts the results
#Take The three inputs a, b & c
read -p "Enter The First Number: " a
read -p "Enter The Second Number: " b
read -p "Enter The Third Number: " c
#Declaring Dictionary
declare -A dict
#Variable Declaration for Calculate the Results Of Arithmetic Operation
dict[oprationOne]=$((a+b*c))
dict[oprationTwo]=$((a*b+c))
# Used scale=2 for display .2 floating value
dict[oprationThree]=$(echo "scale=2; $c + $a / $b" | bc )
dict[oprationFour]=$((a%b+c))
#Print the Opration And Result
echo "$a + $b * $c = ${dict[oprationOne]}"
echo "$a * $b + $c = ${dict[oprationTwo]}"
echo "$c + $a / $b = ${dict[oprationThree]}"
echo "$a % $b + $c = ${dict[oprationFour]}"

