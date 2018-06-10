#! /bin/bash

read -p "Enter  vlan id :" vlan 
read -p "Enter vlan end id :" vlan_end
for ((i=$vlan; i <= vlan_end; i++))
do
cli vlan-port-add vlan-id $i ports 44
done
