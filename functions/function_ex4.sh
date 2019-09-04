#! /bin/bash
# Using local variables in functions
# sh function_ex4.sh

function print1(){
    local name=$1
    echo "the name is $name"
}

name="TV"

echo "the name is $name: Before"
print1 Harish
echo "the name is $name: After"