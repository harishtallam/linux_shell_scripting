#! /bin/sh

n=1

until [ $n -ge 10 ] # Checks for the false condition
do
    echo $n
    n=$(( n+1 ))
    # (( n++ ))
    # (( ++n ))
done


until (( $n -ge 10 )) # Checks for the false condition
do
    echo $n
    n=$(( n+1 ))
    # (( n++ ))
    # (( ++n ))
done