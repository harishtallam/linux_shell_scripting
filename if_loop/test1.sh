#! /bin/bash
# sh test1.sh

echo "Enter Choice:"
choice=0

read choice

#case "$choice"
#in

#5)

if [ $choice == 5 ];then

	echo "Hello"

elif [ $choice == 3 ];then

	echo "Buzz"

#if [ $choice -eq 3 ] && [ $choice -eq 5 ];
elif [ $choice -eq 53 ] || [ $choice -eq 35 ]
then

	echo "Hello Buzz"

else
	exit

fi
#;;
#esac
exit


