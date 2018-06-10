#!/bin/bash
for i in `seq $1 $2`
do

#        cli vlan-port-remove vlan-id $i switch leo-pst-1 ports 1-68     
#        cli vlan-port-add vlan-id $i switch leo-pst-1 ports 1,3,44 


#          cli vrouter-interface-remove vrouter-name leopst1 nic eth3.$i
#          cli vrouter-interface-remove vrouter-name leopst1 nic eth2.$i

#	   cli vrouter-interface-remove vrouter-name leopst1 nic eth0.$i:2



            cli vlan-create id $i scope local ports 1,3,44 
#            cli vlan-delete id $i  

#        cli vrouter-interface-add vrouter-name leopst1 ip 22.3.$i.2/24 vlan $i if data mtu 9216 

#        cli vrouter-interface-add vrouter-name leopst1 ip 22.3.$i.1/24 vlan $i if data mtu 9216 vrrp-id 10 vrrp-primary eth0.$i


#         cli vrouter-interface-add vrouter-name leopst1 ip 22:3:$i:2::2/64 alias-on eth0.$i 

#	cli vrouter-interface-add vrouter-name leopst1 ip 22:3:$i:2::1/64 vlan $i vrrp-id 10 vrrp-primary eth0.$i:2 

done
