#! /bin/bash
# sh 2testjsons.sh

echo "$(cat 2test.json | grep default: | awk -F default '{print $2 }' | awk -F , '{print $1 }')"
