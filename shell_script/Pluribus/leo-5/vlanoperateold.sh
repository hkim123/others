if [ $# -ne 4 ]
then
    echo "Usage: $0 <create|delete> <N1> <N2> <fabric|local>"
    echo "N1 is starting vlan number and N2 is total number of vlan"
    exit;
fi

operation=$1
vlanstart=$2
vlancount=$3
scope=$4

for ((i=$vlanstart; i<=($vlanstart + $vlancount); i++))
do
    if [ "$operation" == "create" ]
    then
        cli vlan-$operation id $i scope $scope >> /tmp/vlan-operate.log 2>&1
    else
        cli vlan-$operation id $i >> /tmp/vlan-operate.log 2>&1
    fi
    rc=$?
    if [ $rc -ne 0 ]
    then
        echo "Failed to $operation vlan $i scope $scope, exit code: $rc"
        exit;
    fi
    echo "Completed: $operation vlan $i scope $scope"
done
