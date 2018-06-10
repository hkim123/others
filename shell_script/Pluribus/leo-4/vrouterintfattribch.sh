if [ $# -ne 6 ]
then
    echo "Usage: $0 <modify|remove> <N1> <N2> <router-name> nic1 nic2"
    exit;
fi
#$intf=0
operation=$1
netstart=$2
netend=$3
routertag=$4
nc1=$5
nc2=$6

for ((i=$netstart; i<=($netend); i++))
do
    if [ "$operation" == "modify" ]
    then
        cli vrouter-interface-$operation vrouter-name $routertag nic eth$nc1.$i mtu 5000 >> /tmp/vrouter-operate.log 2>&1
        cli vrouter-interface-$operation vrouter-name $routertag nic eth$nc2.$i mtu 5000  >> /tmp/vrouter-operate.log 2>&1
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

