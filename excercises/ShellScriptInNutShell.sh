#!/bin/bash
MESSAGE="Shell Scripting is fun"
echo $MESSAGE

HOSTNAME=$(hostname)
echo "This script is running on ${HOSTNAME}.where ${HOSTNAME} is the output of the "hostname" command"

FILE=/etc/shadow

if [ -e $FILE ]
then
	echo "Shadow passwords are enabled."
else
	echo "Shadow passwords are not enabled."
fi

if [ -w $FILE ]
then
	echo "You have permissions to edit ${FILE}."
else
	echo  "You do NOT have permissions to edit ${FILE}."
fi

: '
ARRAY="man bear pig dog cat sheep"
for item in $ARRAY
do
	echo $item
done
'

#read -p "Enter the name: " NAME
for NAME in $@
do
	echo "************************************************************************************************************"
	if [ -f $NAME ]
	then
		echo ""${NAME}" is regular file"
	elif [ -d $NAME ]
	then
		echo ""${NAME}" is directory"
	else
		echo ""${NAME}" is neither directory nor regular file"
	fi

	LIST=$(ls ${NAME}) 
	if [ -f $NAME ] || [ -d $NAME ]
	then  
		echo "Listing items...."
		for item in $LIST
		do
			echo $item
		done
	fi

done
