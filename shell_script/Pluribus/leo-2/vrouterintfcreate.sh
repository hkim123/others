if [ $# -ne 6 ]
then
    echo "Usage: $0 <add|remove> <N1> <N2> <M> <router-name> <fabric|local>"
    exit;
fi
#$intf=0
operation=$1
netstart=$2
netend=$3
mask=$4
routertag=$5
scope=$6

for ((i=$netstart; i<=($netend); i++))
do
    if [ "$operation" == "add" ]
    then
##	cli vlan-create id $i scope $scope >> /tmp/vlan-operate.log 2>&1
        cli vrouter-interface-$operation vrouter-name $routertag ip $i.0.1.1/$mask vlan $i if data >> /tmp/vrouter-operate.log 2>&1
    else
	cli vlan-delete id $i >> /tmp/vlan-operate.log 2>&1
        cli vrouter-interface-$operation vrouter-name $routertag nic eth$intf.$i >> /tmp/vrouter-operate.log 2>&1
    fi
    rc=$?
    if [ $rc -ne 0 ]
    then
        echo "Failed to $operation vrouter, exit code: $rc"
        exit;
    fi
    echo "Completed: $operation vrouter $i" 
done

