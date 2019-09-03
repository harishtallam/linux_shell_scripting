#! /bin/bash

# *** SYNTAX ***
# while [ condition ]
# do
#   command
#   command
#   command
# done

# sh while_ex1.sh

n=1

while [ $n -le 10 ]
# while (( $n <= 10 )) # Another syntax. If we use double paranthesis, we must use operators
do
    echo "$n"
    n=$(( n+1 ))
    # (( n++ )) # Try this also, which works like above
    # (( ++n )) # Pre increment
done
