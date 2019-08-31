#! /bin/bash
# sh nested_if.sh

echo -e "Enter the file name: \c"
read filename

if [ -f $filename ]
then
    if [ -w $filename ]
    then
        echo "Type some text. Press CTRL+C or CTRL+D to quit"
        cat >> $filename
    else
        echo "The file do not have write permissions"
    fi
else
    echo -e "$filename not found"
fi