#! /bin/bash
# sh readonly_ex1.sh

var=3

readonly var

var=2

echo $var


hello(){
  echo "Hello Harish"
}

readonly -f hello # to make readonly functions

hello(){
  echo "Hello Harish Again"
}

hello

#readonly # Gives readonly variables
#readonly -p