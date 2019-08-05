while [ -z "$REPLY" ] ; do
    if [ -z "$1" ] ; then
         read -p "Do you want to continue?(yes/no) "
    else
         REPLY=$1
         set --
    fi
    case $REPLY in
        [Yy]es) sleep 5s
                echo -e "\n move ahead" ;;
         [Nn]o) echo -e "\nSkipping The Step..\n"
                sleep 5s ;;
             *) echo "Wrong answer. Print 'yes' or 'no'" 
                unset REPLY ;;
    esac
done
