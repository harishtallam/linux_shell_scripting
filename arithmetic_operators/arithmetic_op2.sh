#! /bin/bash
# sh arithmetic_op2.sh

num1=30
num2=2

echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "scale=2;20.5/5" | bc #scale helps in defining the number of decimals required for devision operation
echo "20.5%5" | bc

echo ""

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "$num1*$num2" | bc
echo "scale=2;$num1/$num2" | bc #scale helps in defining the number of decimals required for devision operation
echo "$num1%$num2" | bc

echo ""

num=25

echo "scale=2;sqrt($num1)" | bc -l # As "sqrt" is math operator, "-l" is required to call math operators
echo "scale=2;3^3" | bc -l # ^ indicates power; 3 to the power of 3