#! /bin/bash
# Program for Fibonacci Series
#  sh fibonacci.sh

# Static input fo N 
#N=8
 

# First Number of the 
# Fibonacci Series 
#a=0

echo "Enter First Number of the Fibonacci Series:"
read a

echo "Enter Second Number of the Fibonacci Series:"
read b
# Second Number of the 
# Fibonacci Series 
#b=1

echo "Enter number of records to be printed:"
read N 

echo "The Fibonacci series is : "

for (( i=0; i<N; i++ )) 
do
	echo -n "$a "
	fn=$((a + b)) 
	a=$b 
	b=$fn 
done
# End of for loop 

