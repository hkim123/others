#! /bin/bash

if [[ $USER == h* ]]  #Need space after [[ and before ]]
then
	echo "Hello $USER"
else
	echo "Ther is no $USER"

fi
