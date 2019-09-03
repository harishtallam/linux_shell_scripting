#! /bin/bash
# sh while_with_file.sh

# Approach 1
while read p
do
    echo $p
done < testinfo.txt # Input redirection. Reads the file into while loop

# Approach 2
cat testinfo.txt | while read p
do
    echo $p
done

# Approach 3
# In the above 2 approaches, there can be a problems
# with line indentations
# So, in approach 3, we use IFS (Internal Field Separator)
# This is suggestable approach

while IFS=' ' read -r line # -r prevents backslash escapes. IFS='space'
do
    echo $line
done < testinfo.txt

while IFS= read -r line # -r prevents backslash escapes. IFS=space
do
    echo $line
done < testinfo.txt