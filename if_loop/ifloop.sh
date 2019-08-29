#! /bin/bash

count=10
if [ $count -eq 10 ]
then
 echo "I'm in if condition 1. 10 is equal to 10"
 echo ""
fi


if [ $count > 9 ]
then
    echo "I'm in if condition 2. 10 is greater than 9"
    echo ""
fi

if (( $count > 9 ))
then
    echo "I'm in if condition 2.1. 10 is greater than 9"
    echo ""
fi

word=abc
if [ $word = "abc" ]
then
    echo "String Comparison 1. abc is abc"
    echo ""
fi

if [ $word == "abc" ]
then
    echo "String Comparison 2. abc is abc"
    echo ""
fi

if [ $word != "cba" ]
then
    echo "String Comparison 3. abc is not cba"
    echo ""
fi

word=a
if [[ $word < "b" ]]
then
    echo "String Comparison 4. a is less than b"
    echo ""
fi


if [[ $word > "b" ]]
then
    echo "String Comparison 5.1. a is less than b"
    echo ""
else
    echo "String Comparison 5.2. a is not greater than b. You are in else condition"
    echo ""
fi

if [[ $word = "b" ]]
then
    echo "String Comparison 6.1. a is b"
    echo ""
elif [[ $word = "a" ]]
then
    echo "String Comparison 6.2. a is a"
    echo ""
else
    echo "String Comparison 6.3. You are in else condition"
fi