#! /bin/bash

echo -e "Enter your choice: \c"
read value

case $value in 
    [a-z] )
        echo " Value entered is $value in a-z ";;
    [A-Z] )
        echo " Value entered is $value in A-Z ";;
    [0-9] )
        echo " Value entered is $value in 0-9 ";;
    ? ) # expects any special character
        echo " Value entered is $value in special character ";;
    * ) # expects any string
        echo " Unknown Input ";;
esac
    
# In some cases, if we enter capital letter as an input, it will fall in "a-z" category. 
# To avoid this, set LANG=C in the terminal before running the script
# LANG=C