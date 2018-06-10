#! /bin/bash
#big file delete
name=$(basename $0)
echo
echo "This script name is $name"
echo

for file in /home/hankim/deja-dup/*

do
min=500000
actual=$(wc -c <"$file")
	if [ -d "$file" ]
	then 
		echo "$file is a directory"

	elif [ $actual -ge $min ]
	then
		echo "$file is big size"
		echo "$file: $actual bytes"
		cp $file /home/hankim/test/.
	elif [ $actual -le $min ]
	then 
		echo "$file: $actual bytes"

	fi
done
