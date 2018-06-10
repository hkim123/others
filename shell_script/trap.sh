#! /bin/bash

#this is trap signal
#each time when you press ctrl-C, it echo 'Sorry I have tarpped' but script run until end

trap "echo ' Sorry I have trapped ctrl + c ' " SIGINT

echo this is a test script

count=1
while [ $count -le 10 ]
do
	echo "Loop#$count"
	sleep 1
	count=$[ $count + 1 ]
done

echo "This is the end of the test script"

