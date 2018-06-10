#! /bin/bash

days=10
guest=Han
value1=10
value2=$value1 #variable point to another value
testing=`date`
testing1=$(date)



echo "$guest is looking for $days days"
echo "this is value1 $value2"
echo "the date is : $testing"
echo "The date is : $testing1"

