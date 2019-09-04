#! /bin/bash

# select works as a menu
#select varName in list
# do
#    command1
#    command2
#    .....
#    commandN
# done

select name in venkata harish tallam
do
    echo "$name selected"
done


select name in venkata harish tallam
do
    case $name in
    venkata)
        echo venkata selected
        ;;
    harish)
        echo harish selected
        ;;
    tallam)
        echo tallam selected
        ;;
    *)
        echo "Error! Please select proper options"
    esac
done
