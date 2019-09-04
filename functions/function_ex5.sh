#! /bin/bash
# Using local variables & terinary operators in functions
# sh function_ex5.sh test.txt
# bash function_ex5.sh test.txt
# ./function_ex5.sh test.txt

touch test.txt
usage(){
    echo "Please provide an arguement"
    echo "Usage: $0 file_name"
}

is_file_exists(){

    # Here, $1 is required for function
    local file="$1" 

    # Terinary operator
    [[ -f $file ]] && return 0 || return 1 
}

# Terinary operator
[[ $# -eq 0 ]] && usage 

# Here, $1 is required to pass the argument
if ( is_file_exists "$1" ) 
then
    echo "File Found"
else
    echo "File Not Found"
fi