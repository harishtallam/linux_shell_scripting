#! /bin/bash

age=25

if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Invalid age"
fi

if [[ $age -gt 18 && $age -lt 30 ]]
then
    echo "Valid age"
else
    echo "Invalid age"
fi

# "-a" stands "and" operator
if [ $age -gt 18 -a $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Invalid age"
fi