#! /bin/bash
#redirect file input
exec 0< std_in.txt
count=1

while read line
	do
		echo "Line #$count: $line"
		count=$[ $count+1 ]
	done


