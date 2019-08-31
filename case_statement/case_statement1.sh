#! /bin/bash
# sh case_statement1.sh
# sh case_statement1.sh car
# sh case_statement1.sh jeep
# sh case_statement1.sh abc


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
    