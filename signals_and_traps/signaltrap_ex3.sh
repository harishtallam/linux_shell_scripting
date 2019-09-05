#! /bin/bash
# sh signaltrap_ex3.sh
# kill 15 PID
# removing traps -- trap - 0 2 15
touch test.txt
file=/home/runner/test.txt
trap "rm -f $file && echo file deleted; exit" 0 2 15

echo "PID is $$"
while (( COUNT < 10 ))
do
    sleep 2
    (( COUNT++ ))
    echo $COUNT
done
exit 0