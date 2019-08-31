#! /bin/bash
# sh if_with_file.sh

echo -e "Enter the file name: \c"
read filename

# "-e" in echo statements determines to enter the file name in the same line as \c also mentioned
# "-e" in if condition determines whether file exists or not
if [ -e $filename ]
then
    echo -e "$filename found"
else
    echo -e "$filename not found"
fi


# "-f" in below if condition determines whether file exists or not and its regular file or not
if [ -f $filename ]
then
    echo -e "$filename found"
else
    echo -e "$filename not found"
fi

# "-d" indiciates whether directory exists or not
if [ -d $filename ]
then
    echo -e "$filename found"
else
    echo -e "$filename not found"
fi

# "-b" indicates whether the file is block special or not
if [ -b $filename ]
then
    echo -e "$filename found"
else
    echo -e "$filename not found"
fi

# "-c" indicates whether the file is character special or not
if [ -c $filename ]
then
    echo -e "$filename found"
else
    echo -e "$filename not found"
fi

# "-s" indicates whether the file is empty or not
if [ -s $filename ]
then
    echo -e "$filename is not empty"
else
    echo -e "$filename is empty"
fi

# "-r" indicates whether the file has "read" permissions or not
if [ -r $filename ]
then
    echo -e "$filename has read permissions"
else
    echo -e "$filename does not have read permissions"
fi

# "-w" indicates whether the file has "read" permissions or not
if [ -w $filename ]
then
    echo -e "$filename has write permissions"
else
    echo -e "$filename does not have write permissions"
fi

# "-x" indicates whether the file has "execute" permissions or not
if [ -x $filename ]
then
    echo -e "$filename has execute permissions"
else
    echo -e "$filename does not have execute permissions"
fi

# "-rwx" indicates whether the file has "all" types of permissions or not
if [ -rwx $filename ]
then
    echo -e "$filename has all permissions"
else
    echo -e "$filename does not have any permissions"
fi