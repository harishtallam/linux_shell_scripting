#! /bin/bash
# sh forloop_ex2.sh

#This works only on or above bash version 3.x
echo ${BASH_VERSION}
for i in {1..10} #{START_NUMBER..END_NUMBER}
do
    echo $i
done

echo ${BASH_VERSION}
#This works only on or above bash version 4.x
for i in {1..10..2} #{START_NUMBER..END_NUMBER..INCREMENT_VALUE}
do
    echo $i
done

for (( i=1; i<10; i++ ))
do
    echo $i
    #i=$(( i+0 ))
    #i=$(( i+1 ))
done