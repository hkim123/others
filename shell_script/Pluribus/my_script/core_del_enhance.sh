#! /bin/bash
name=$(basename $0)
echo
echo "This script is big file delete: $name"
echo

for file in /var/nvOS/log/cores/*

do
min=50000000
actual=$(wc -c <"$file")
	if [ -d "file" ]
	then
		echo "$file is directory"
	elif [ $actual -ge $min ]
	then
		echo "$file is big size"
		echo "$file: $actual bytes"
		rm -f $file
	elif [ $actual -le $min ]
	then
		echo "$file is small"
		echo "$file: $actual bytes"
	fi
done	
