#!/bin/bash -x
#Arithmetic Computation Sorting
#This problem computes different arithmetic expressions and Sorts the results



#Take The Three Inputs a, b & c
read -p "Enter The First Number: " a
read -p "Enter The Second Number: " b
read -p "Enter The Third Number: " c
#Declaring Dictionary And Array
declare -A dict
declare -a 	arr
#Calculate the Results Of Arithmetic Operation
function calculate()
{
	dict[oprationOne]=$((a + b * c))
	dict[oprationTwo]=$((a * b + c))
	dict[oprationThree]=$((c + a / b))
	dict[oprationFour]=$((a % b + c))
}
#Store The Dictionary To Array
function dictionaryToArray()
{
	for ((index=0;index<4;index++))
	do
		arr[((index++))]=${dict[oprationOne]}
		arr[((index++))]=${dict[oprationTwo]}
		arr[((index++))]=${dict[oprationThree]}
		arr[((index++))]=${dict[oprationFour]}
	done
}	
#Print The Opration And Result
function print()
{
	echo "$a + $b * $c = ${dict[oprationOne]}"
	echo "$a * $b + $c = ${dict[oprationTwo]}"
	echo "$c + $a / $b = ${dict[oprationThree]}"
	echo "$a % $b + $c = ${dict[oprationFour]}"
}
#Calling All Function
calculate
print
dictionaryToArray

#All Dictionary And Array Element
echo "Elements In Array: " ${arr[@]}



