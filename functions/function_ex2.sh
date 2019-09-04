#! /bin/bash
# Passing arguements using functions
# sh function_ex2.sh

function print1(){
    echo $1
}

function print2(){
    echo $1 $2 $3
} 

print1 Harish
print2 Venkata Harish Tallam