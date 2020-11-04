#! /bin/bash

while :
do
        if [[ -f /c/Users/haris/Documents/GITHUB/LINUX_SHELL_SCRIPTING/linux_shell_scripting/continuous_file_check/checkout_done.trig ]]
        then
                echo "File found."
                break;
        else
                echo "File not found."
                sleep 2
        fi
done