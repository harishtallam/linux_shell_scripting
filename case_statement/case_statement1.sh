#! /bin/bash

vehicle=$1

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
        echo " Unknown Vehicle ";;
esac
    