#! /bin/bash

LOGS_FILE_CONF=logs_path.conf
ERRORS_FILE_CONF=error_details.conf

#dos2unix error_details.conf
#dos2unix logs_path.conf



for LOG_FILE in $(cat $LOGS_FILE_CONF)
do
	
	if [ -f $LOG_FILE ]
	then
			
			while IFS= read -r ERROR_LINE || [[ -n $ERROR_LINE ]]
			do
				#echo grep -e "$ERROR_LINE" "$LOG_FILE"
				grep -e "$ERROR_LINE" "$LOG_FILE"
				if [ $? -eq 0 ]
				then
					echo "ERROR FOUND ----- "$ERROR_LINE" IN "$LOG_FILE" ----- FILE"
					exit 1
				else
					echo "NO ERROR FOUND IN ----- $LOG_FILE ----- FILE GOOD TO GO"
				fi
			done < $ERRORS_FILE_CONF
			
	else
	
			echo "$LOG_FILE not found in the server. Skipping....."
			
	fi
done