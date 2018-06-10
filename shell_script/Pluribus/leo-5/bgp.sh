#!/bin/bash


for i in 'seq $1 $2'
	do
		for j in 'seq $3 $4'
			do
				echo "$i $j"

		done



        cli vrouter-bgp-add vrouter-name leopst5 neighbor 170.0.1.$i remote-as $j 
#        cli vlan-port-add vlan-id $i switch leo-pst-1 ports 1,3,4

done
