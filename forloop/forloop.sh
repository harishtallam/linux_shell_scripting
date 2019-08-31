
#!/bin/bash
# Source: http://lowfatlinux.com/linux-script-looping.html
# sh forloop.sh 1 2 3
for item in "$*"
do
  echo "value is $item"
done
