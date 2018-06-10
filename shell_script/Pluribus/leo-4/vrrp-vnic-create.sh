#!/bin/bash

if [ $# -ne 4 ] 
then
    echo "Usage: $0 <vrouter name> <HW VRRP ID> <# of vnics> <Last IP of primary VNIC>"
    exit;
fi

vrname=$1
vrrpid=$2
vniccount=$3
primaryip=$4

echo `date`
#echo "Creating $vniccount VNICs on vrouter $vrname"

log="/tmp/vrrp-vnic-create.log"
>$log

#set -x 

#echo "Disable STP to scale up number of vlans"
#cli --quiet stp-modify disable

vlan=10
ip1=4
ip2=10
for ((j=1; j<=($vniccount); j++))
do
	vlan=$(($vlan + 1))
##	ip1=$(($vlan / 256))
	ip2=$(($ip2 + 1))
##	cli --quiet vlan-create id $vlan scope fabric >> $log
	rc=$?
	if [ $rc -ne 0 ]
	then
	    echo "Failed to create vlan $vlan, exit code: $rc"
	    echo `date`
	    exit;
	fi
	echo "Completed: Create vlan $vlan scope fabric"
	output=`cli --quiet vrouter-interface-add vrouter-name $vrname ip 32.$ip1.$ip2.$primaryip/24 vlan $vlan`
	if [ $rc -ne 0 ]
	then
	    echo "Failed to create vrouter-interface $vrname vlan $vlan, exit code: $rc"
	    echo `date`
	    exit;
	fi
	echo "Completed: Create Primary vnic in vlan $vlan in $vrname"
	primarynic=`echo $output | awk '{print $3}'`
	cli --quiet vrouter-interface-add vrouter-name $vrname ip 32.$ip1.$ip2.1/24 vlan $vlan vrrp-id $vrrpid vrrp-primary $primarynic >> $log
	rc=$?
	if [ $rc -ne 0 ]
	then
	    echo "Failed to create VRRP interface on $vrname vlan $vlan, exit code: $rc"
	    echo `date`
	    exit;
	fi
	echo "Completed: Create VRRP vnic in vlan $vlan in $vrname"
    done
done

echo `date`

