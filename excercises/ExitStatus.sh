#!/bin/bash
#echo "This script will exit with a 0 exit status."
: '
read -p "Enter the file name or directory name: " NAME
if [ -f $NAME ]
then
	echo ""${NAME}" is regular file"
	exit 0
elif [ -d $NAME ]
then
	echo ""${NAME}" is directory"
	exit 1
else
	echo ""${NAME}" is neither directory nor regular file"
	exit 2
fi
'

COMMAND=$(cat /etc/shadow)
if [ $? -eq 0 ]
then
	set echo on
	echo "COMMAND succeeded"
	exit 0
else
	set echo on
	echo "COMMAND failed"
	exit 1
fi
