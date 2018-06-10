#! /bin/bash
#change IFS value
IFS=$'\n'

for entry in $(cat /home/hankim/shell_script/password)
do
	echo "value in $entry "
	IFS=:
	for value in $entry
	do
		echo "	$value"
	done
done
