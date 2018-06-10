#! /bin/bash
read -p "Enter start vlan id:" vlan_start
read -p "Enter end vlan id: " vlan_end
read -p "Enter ip address for:" ip_addr

    for ((i=$vlan_start; i <= vlan_end; i++))
    do
    cli vlan-create id $i scope local ports 1,3
    cli vrouter-interface-add vrouter-name leopst2 ip 22:3:$ip_addr:2::3/64 vlan $i
####### Be careful check primary nic , create manually primay 1 or 2 and define eth0.$i or eth1.$i ####
    cli vrouter-interface-add vrouter-name leopst2 ip 22:3:$ip_addr:2::1/64 vlan $i vrrp-id 10 vrrp-primary eth0.$i
#    cli vrouter-interface-add vrouter-name leopst2 ip 22:3:$ip_addr:2::1/64 vlan $i vrrp-id 10 vrrp-primary eth2.$i
    ip_addr=$[ $ip_addr +1 ]
    done
