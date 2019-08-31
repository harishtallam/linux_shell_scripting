#! /bin/bash

# sh array_ex1.sh

os=('ubuntu' 'windows' 'mac')

echo ""
echo "${os[@]}" # Prints elements of the array
echo "${os[0]}" # Prints 0th index/element of the array
echo "${os[1]}" # Prints 1st index/element of the array
echo "${!os[@]}" # Prints indices of the array
echo "${#os[@]}" # Prints lenght of the array

os[0]="centos" # centos will replace ubuntu element in the array
os[3]="redhat" # redhat will add as a 3rd element in the array

echo ""
echo "${os[@]}"


unset os[2] # removes 2nd element from the array
echo ""
echo "${os[@]}"

string=abcdefgh
echo ""
echo "${string[@]}" #array also prints string value as an array
echo "${string[0]}"
echo "${string[1]}"
echo "${#string[@]}"
