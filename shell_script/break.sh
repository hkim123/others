#! /bin/bash

for (( a=1; a < 4; a++ ))
do
	echo "Outer loop: $a"
	for (( b=1; b<100; b++ ))
	do
		if [ $b -gt 5 ]
		then
			break 2 #if put some number, it breake outer loop, example break 2 menas 1 outloop break, 
		fi
	echo " 	inner loop: $b"
	done
done

#without number the out put will be like below
#Outer loop: 1
# 	inner loop: 1
# 	inner loop: 2
# 	inner loop: 3
# 	inner loop: 4
# 	inner loop: 5
#Outer loop: 2
# 	inner loop: 1
# 	inner loop: 2
# 	inner loop: 3
# 	inner loop: 4
# 	inner loop: 5
#Outer loop: 3
# 	inner loop: 1
# 	inner loop: 2
# 	inner loop: 3
# 	inner loop: 4
# 	inner loop: 5

#with number like break 2 the output will be below
#Outer loop: 1
# 	inner loop: 1
# 	inner loop: 2
# 	inner loop: 3
# 	inner loop: 4
# 	inner loop: 5


