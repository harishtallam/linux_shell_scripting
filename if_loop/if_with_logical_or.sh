#! /bin/bash

age=25

if [ $age -gt 18 ] || [ $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Invalid age"
fi

if [[ $age -eq 18 || $age -eq 30 ]]
then
    echo "Valid age"
else
    echo "Invalid age"
fi

# "-o" stands "OR" operator
if [ $age -gt 18 -o $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Invalid age"
fi