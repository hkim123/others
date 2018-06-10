#! /bin/bash

file="cat.txt"

IFS=$'\n'  ##this means ignore space in the file !!!, it can shows up heesuk lee 1 line

# long script case, define IFS and forget about it, so safe way is like below
#IFS.OLD=$IFS
#IFS=$'\n'
#IFS=$IFS.OLD
#file="cat.txt"


for name in $(cat $file)
do
	echo you are "$name"
#	echo "$(cat $file)"    #this is very interesting,It will shows up 4 times 
done

#cat.txt file is like below
#han_kim
#heesuk lee
#christine
#daniel
