#! /bin/bash

# if no command line arg given
# set rental to Unknown
if [ -z $1 ]
then
    vehicle="*** Unknown Vehicle ***"
elif [ -n $1 ]
then
    vehicle=$1
fi

case $vehicle in 
    "car" )
        echo " Rent of $vehicle is 20$ ";;
    "van" )
        echo " Rent of $vehicle is 25$ ";;
    "jeep" )
        echo " Rent of $vehicle is 30$ ";;
    "bike" )
        echo " Rent of $vehicle is 40$ ";;
    * )
        echo " Sorry, no $vehicle available ";;
esac
    