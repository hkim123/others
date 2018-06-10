#! /bin/bash
#using one command line paramete
echo "The scrip name is: $0"  # this one shows up ./one_input.sh
name=$(basename $0)	      # this one show up only one_input.sh
echo
echo "The script name is: $name"

factorial=1
for (( number= 1; number <= $1; number++ ))  # $1 is input, below case it is 5
do
	factorial=$[ $factorial * $number ]  # this is factorial calculate method.
	echo $factorial
	
done
echo "The factorial of $1 is $factorial"

#you have to run command like ./one_input.sh 5 otherwise it returns error message
#$0 is script name itself.
