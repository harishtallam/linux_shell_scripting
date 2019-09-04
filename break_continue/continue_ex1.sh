#! /bin/bash
# sh continue_ex1.sh

# Here, with the help of the continue, coming out of the for loop basis on the if condition

for (( i=0; i<=10; i++ ))
do
    #if (( $i == 3 || $i == 6 ))
    if [ $i -eq 3 -o $i -eq 6 ] # if i is 3 or 6, it will be skipped for execution
    then
        continue
    fi
    echo $i
done