#! /bin/bash

direct=/home/hankim/Pictures

if [ -d $direct ]

then
	echo "move to $direct"
	cd /home/hankim/Pictures
	ls -a

else
	echo "There is no Picture directory"

fi 
