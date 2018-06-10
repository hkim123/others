#! /bin/bash
#using numeric test evaluation

value1=10
value2=11

if [ $value1 -gt 5 ]  # do not need test, [] breaket can do condition, must have space first " [" and aonther space before " ]"
then 
	echo "The Value1 $value1 is greater than 5"


fi

if [ $value1 -eq $value2 ] 
then echo "The value are equal"

else
	echo "The values are different"

fi


