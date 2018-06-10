#! /bin/bash

#ssh root@leo-pst-1
echo "Hello $USER"
echo "Today is" ;date
uname -a
echo -n "Enter device >"
read device
ssh root@$device


