#!/bin/bash
# sh echoall.sh 1 2 3
while [ "$*" != "" ]
do
  echo "value is $1"
  shift
done
