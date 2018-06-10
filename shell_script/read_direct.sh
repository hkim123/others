#! /bin/bash

for file in /home/hankim/test/*

do

	if  [ -d "$file" ]
	then 
		echo "$file is directory"

	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done
