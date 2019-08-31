#!/bin/bash
# sh filecopy.sh fromfile tofile
# copy a file, creating a backup if the target file exists
if [ $# -lt 2 ]
then
 echo "#:" $#
 echo "0:" $0
 echo "Usage: $0 fromfile tofile"
 exit 1
fi
if [ -f $2 ]
 then 
 echo "2:" $2
 mv $2 $2.bak
fi

echo "1:" $1
cp $1 $2
