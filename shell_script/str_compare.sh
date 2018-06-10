#! /bin/bash

testuser=hankim
testuser1=pool
testuser2=""

if [ $USER = $testuser ]
then
	echo "Hello $testuser"

fi

if [ $testuser1 = pool ]
then
	echo "you are pool"
fi


if [ $testuser \> $testuser1 ]  #DO NOT use like $testuser > $testuser1, becasue > means create file. it will createpool file
then
	echo "$testuser is greater than $testuser1"
else
	echo "$testuser is less than $testuser1"
fi

if [ -n $testuser ]  # -n means $testuser  length is greater than zero
then
	echo "$testuser is not empty"

fi 

if [ -z $testuser2 ] #when $testuser2 is empty(length = 0),it is true
then 
	echo "'$testuser2' is empty"

else  
	echo "$testuser2 is not empty"
fi

if [ -z $testuser3 ]  #even the variable is not defined,still it works 
then 
	echo "'$testuser3' is empty"

else  
	echo "'$testuser3' is not empty"
fi
