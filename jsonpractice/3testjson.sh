#! /bin/bash
# sh 3testjson.sh

echo "The title is:" $(curl https://jsonplaceholder.typicode.com/todos/1 | grep "title" | cut -c 13-30)
