
#!/bin/bash
# Source: http://lowfatlinux.com/linux-script-looping.html
# sh until.sh 1 2 3

# syntax
# until [condition]
# do
#   command
#   command
#   .....
#   command
# done

count=1
until [ "$*" = "" ]
do
  echo $*
  echo "value number $count $1 "
  shift
  count=$[ $count + 1 ]
  # count= `expr $count + 1`
done
