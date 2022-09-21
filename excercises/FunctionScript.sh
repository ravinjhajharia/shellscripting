#!/bin/bash

function file_count(){
	#FILE="temp.txt"
	local COUNT=$(ls ${PWD} | wc -l) 
	if [ $? -eq 0 ]
	then
		echo "No of files present in current working directory: ${COUNT}"
		return $COUNT
	else
		return 1
	fi
}

file_count
COUNT=$?
if [ $COUNT -ge 1 ]
then
	echo "file_count returned: ${COUNT}"
	exit 0
else
	exit 1
fi
