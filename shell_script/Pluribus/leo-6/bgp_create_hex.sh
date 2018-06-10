#! /bin/bash

as_num=5111	

for number in $( seq 1 239 )
	do
  	hex_representation=$( printf "%X" ${number} )
#        echo "vrouter-bgp-add vrouter-name leopst6 neighbor 170:0:1:1:0:0:${hex_representation}:10 remote-as $as_num multi-protocol ipv6-unicast" 
 	cli vrouter-bgp-add vrouter-name leopst6 neighbor 170:0:1:1:0:0:${hex_representation}:10 remote-as $as_num multi-protocol ipv6-unicast
  	as_num=$[ $as_num +1 ]
	done
