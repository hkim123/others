#! /bin/bash
# Demo shift command

echo
count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count+1 ]
	shift    #after perfoming 1st loop, 2nd parametr shift to first, so it keep loop until end
done
