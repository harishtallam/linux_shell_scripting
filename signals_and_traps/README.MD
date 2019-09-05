
1. CTRL+C is the signal command to interrupt from keyboard. SIGINT-2
2. CTRL+Z is the signal command to suspend. SIGTSTP-18,20,24
3. -9 in "kill -9 PID" is the signal command to kill. SIGKILL-9
4. trap commands helps in capturing the signals
5. To read signal related info - man 7 signal
6. trap command cannot catch SIGKILL, SIGSTOP commands

echo "PID is $$" # $$ indicates current process id of the script in this case
while (( COUNT < 10 ))
do
    sleep 5
    (( COUNT++ ))
    echo $COUNT
done
exit 0