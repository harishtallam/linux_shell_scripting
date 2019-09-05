#! /bin/bash
# sh signaltrap_ex2.sh
# Type CTRL+C while script is running and understand the usage

trap "echo Exit command detected" SIGINT
#trap "echo Exit command detected" SIGKILL
#trap "echo Exit command detected" 9
#trap "echo Exit command detected" SIGSTOP

echo "PID is $$" # $$ indicates current process id of the script in this case
while (( COUNT < 10 ))
do
    sleep 2
    (( COUNT++ ))
    echo $COUNT
done
exit 0