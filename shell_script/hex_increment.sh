#! /bin/bash

as_num=5111

for number in $( seq 1 239 )
        do
        hex_representation=$( printf "%X" ${number} )
        echo "${hex_representation}"
        as_num=$[ $as_num +1 ]
        done

# printf usage
# printf "%x" : x/X means hexadecimal value

# printf "%x" 15 ---> output is f
# printf "%X" 15 ---> output is F
# printf "%2X" 15 -----> output 0F
