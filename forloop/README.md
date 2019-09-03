
for VARIABLE in 1 2 3 4 5 ... N
do
    command1
    command2
    commandN
done

for VARIABLE in file1 file2 filen
do
    command1
    command2
    commandN
done

for OUTPUT in $(LINUX-OR-UNIX-COMMAND)
do
    command1 on $OUTPUT
    command2 on $OUTPUT
    commandN
done

for (( EXP1; EXP2; EXP3 ))
do
    command1
    command2
    command3
done