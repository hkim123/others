#! /bin/bash
#extracting command line option as parameter
#special command --, this script need try ./case_2.sh -c -a -b test1 test2 test3 and ./case_2.sh -c -a -b -- test1 test2 test3
echo
while [ -n "$1" ]
do
	case "$1" in
	-a) echo "Found the -a option";;
	-b) echo "Found the -b option";; 
	-c) echo "Found the -c option";;
	--) shift
	    break 		      ;;
	 *) echo "$1 is not option" ;;
	esac
	shift
done

#
count=1 
for param in $@
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done

