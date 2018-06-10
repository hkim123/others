#! /bin/bash

testuser=hankim

if grep $testuser /etc/passwd

then 
	echo "This is my fist scrip, I can do more than one sentence"	
	echo "The bash file is: "
	ls -a /home/$testuser/.b*
	echo

else
	echo "This is my fist scrip, I can do more than one sentence"
	echo "The $testuser doesn't exist !!"
	echo 

fi

