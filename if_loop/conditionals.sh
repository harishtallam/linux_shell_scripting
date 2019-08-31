#!/bin/bash
# sh conditionals.sh
# sh conditionals.sh Harish
FIRST_ARGUMENT="$1"
if [ x$FIRST_ARGUMENT = "xHarish" ]; then
  echo "Hello Harish, good to see you"
else
  echo "Hello World"
fi
