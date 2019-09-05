#! /bin/bash
# sh signaltrap_ex1.sh

trap "echo Exit command detected" 0

echo "Hello Harish"

exit 0