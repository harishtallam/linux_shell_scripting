echo "The title is:" $(curl https://jsonplaceholder.typicode.com/todos/1 | grep "title" | awk '{ print $2" " $3" " $4 }')
