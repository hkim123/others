#! /bin/bash
#extracting command line option as parameter
#-a,-b,-c beside these input, it will shows up $1 is not option, doesn't matter order, example) ./case_1.sh -c -a -b -d also same result.  
echo
while [ -n "$1" ]
do
	case "$1" in
	-a) echo "Found the -a option";;
	-b) echo "Found the -b option";; 
	-c) echo "Found the -c option";;
	 *) echo "$1 is not option" ;;
	esac
	shift
done

