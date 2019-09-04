#! /bin/bash
# sh break_ex1.sh

# Here, with the help of the break, coming out of the for loop pre-maturely

for (( i=0; i<=10; i++ ))
do
    if (( $i > 5 ))
    then
        break # break - comes out of the loop if i value is greater than 5.
    fi
    echo $i
done