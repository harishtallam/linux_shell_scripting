#! /bin/bash
# Using variables in functions
# sh function_ex3.sh

function print1(){
    name=$1
    echo "the name is $name"
}

name="TV"

echo "the name is $name: Before"
print1 Harish
echo "the name is $name: After"