#! /bin/bash

#this is trap signal
#each time when you press ctrl-C, it echo 'Sorry I have tarpped' but script run until end

echo "Display process ID: $$"


count=1
while [ $count -le 10 ]
do
	echo "Loop#$count"
	sleep 1
	count=$[ $count + 1 ]
done

echo "End of script"

