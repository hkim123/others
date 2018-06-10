#!/bin/bash
as=61410
for ((i=110; i<250; i++))
do
        cli vrouter-bgp-modify vrouter-name dorado9-leaf6 neighbor 5.1.0.$i remote-as $as >> /tmp/vlan-operate.log 2>&1
        as=$(($as+1))
	echo "Completed: $operation bgp interface $i"
done
