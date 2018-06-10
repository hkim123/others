#!/bin/bash
for i in `seq $1 $2`
do
#        cli vlan-port-remove vlan-id $i switch leo-pst-3 ports 1-68
#        cli vlan-port-add vlan-id $i switch leo-pst-3 ports 1,3

#           cli  vrouter-interface-remove vrouter-name leopst3 nic eth3.$i
#            cli vrouter-interface-remove vrouter-name leopst3 nic eth2.$i

#            cli vrouter-interface-remove vrouter-name leopst3 nic eth0.$i:1



#            cli vlan-create id $i scope local ports 1,3
#            cli vlan-delete id $i

#        cli vrouter-interface-add vrouter-name leopst3 ip 32.4.$i.2/24 vlan $i if data mtu 9216

#        cli vrouter-interface-add vrouter-name leopst3 ip 32.4.$i.1/24 vlan $i if data mtu 9216 vrrp-id 11 vrrp-primary eth2.$i

#         cli vrouter-interface-add vrouter-name leopst3 ip 32:4:$i:2::3/64 alias-on eth0.$i

#           cli vrouter-interface-add vrouter-name leopst3 ip 32:4:$i:2::1/64 vlan $i vrrp-id 11 vrrp-primary eth0.$i:1	
          
          cli vlan-port-add vlan-id $1 ports 44
done
