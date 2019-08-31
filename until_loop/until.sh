
#!/bin/bash
# Source: http://lowfatlinux.com/linux-script-looping.html
# sh until.sh 1 2 3

count=1
until [ "$*" = "" ]
do
  echo "value number $count $1 "
  shift
  count=$[ $count + 1 ]
  # count= `expr $count + 1`
done
