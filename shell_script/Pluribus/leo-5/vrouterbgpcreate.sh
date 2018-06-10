#!/bin/bash

if [ $# -ne 5 ]
then
    echo "Usage: $0 <add|delete> <startip> <N> <vrouter-name> <asnum>"
    exit;
fi

operation=$1
start=$2
addresscount=$3+$2
vname=$4
as=$5
echo " $operation $3 interfaces "

for ((i=$start; i<=($addresscount); i++))
do
    if [ "$operation" == "add" ]
    then
        cli vrouter-bgp-add vrouter-name $vname neighbor 170.0.1.$i remote-as $as >> /tmp/bgp-create.log 2>&1
	as=$(($as+1))
    else
        cli vrouter-bgp-remove vrouter-name $vname neighbor 6.1.1.$i >> /tmp/bgp-create.log 2>&1
    fi
    rc=$?
    if [ $rc -ne 0 ]
    then
        echo "Failed to $operation bgp interface $i, exit code: $rc"
        exit;
    fi
    echo "Completed: $operation bgp interface $i"
done
