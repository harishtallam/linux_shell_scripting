#! /bin/bash

#CM_JAR_GEN_DATE=`stat -c "%Y" cm.jar`
CM_JAR_GEN_DATE=`date +%s -r cm.jar`
CURRENT_DATE=`date +%s`
TIME_DIFF=0
#date -d @$CM_JAR_GEN_DATE '+%Y-%m-%d %H:%M:%S'


echo $CM_JAR_GEN_DATE
echo $CURRENT_DATE

echo "cm.jar generated date is `date -d @$CM_JAR_GEN_DATE +"%d-%b-%Y %T"`"
echo "Current date is `date -d @$CURRENT_DATE +"%d-%b-%Y %T"`"

#TIME_DIFF=$(($CURRENT_DATE-$CM_JAR_GEN_DATE))

#echo $TIME_DIFF is the difference time

#echo Time difference is "$(date -u -d @$(($CURRENT_DATE - $CM_JAR_GEN_DATE)) '+%T')"

if [ $(($CURRENT_DATE - $CM_JAR_GEN_DATE)) -ge 300 ] #300 seconds
then
	echo "Looks the available cm.jar is old"
	echo cm.jar generated "$(date -u -d @$(($CURRENT_DATE - $CM_JAR_GEN_DATE)) '+%T')" ago
else
	echo "Available cm.jar is latest"
	echo cm.jar generated "$(date -u -d @$(($CURRENT_DATE - $CM_JAR_GEN_DATE)) '+%T')" ago
fi