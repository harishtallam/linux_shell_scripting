#! /bin/bash
# sh arithmetic_op1.sh

num1=30
num2=2

echo $((num1 + num2))
echo $((num1 - num2))
echo $((num1 * num2))
echo $((num1 / num2))
echo $((num1 % num2))

echo ""

num1=31
num2=2

echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2) #If we use expr for multiplication, * to be escaped using escape character
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)

