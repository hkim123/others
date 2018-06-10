#! /bin/bash
name=$(basename $0)
echo
echo "The script name is: $name"
echo

for file in /var/nvOS/log/cores/*
 do
        if [ -d "$file" ]
        then
                echo "$file is directory"
        elif [ -f "$file" ]
        then
                echo "$file is a file"
                actual_size=$(wc -c <"$file")
		echo "$file : $actual_size bytes"
        fi
rm -f /var/nvOS/log/cores/core.nvOSd.2017-01*
rm -f /var/nvOS/log/cores/glfdump.2016-*
done
