#! /bin/bash

location=/home/hankim/shell_script
file_name="text.txt"
if [ -e $location ]
then # directory exist
	echo "OK, directory exist"
	echo "Now,checking file"
	
	if [ -e $location/$file_name ]
	then #file exist
		echo "file exist will add date in that file"
		date >> $location/$file_name

	else # file doesn't exist
		echo "file doesn't exist"
	fi

else #directory doesn't exist
	echo "directory doesn't exist"

fi

