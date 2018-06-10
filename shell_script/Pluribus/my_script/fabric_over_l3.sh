#! /bin/bash

# Fabric over L3 initial setup

read -p "Enter vrouter name : " vrouter
read -p "Enter Local BGP AS Number : " bgp_as
read -p "Enter router-id : " router_id
read -p "Enter inband-ip(format:x.x.x.x/x) : " in_band_ip
read -p "Enter ip address for local(format:x.x.x.x/x) : " bgp_ip
read -p "Enter L3 port number : " port
read -p "Enter neighbor ip address : " neighbor_ip
read -p "Enter fabric_network (format:x.x.x.x/x) : " fabric_network
read -p "Enter Remote BGP AS :" remote_as

cli fabric-comm-vrouter-bgp-create name $vrouter bgp-as $bgp_as router-id $router_id bgp-redistribute connected bgp-max-paths 16 in-band-nic-ip $in_band_ip bgp-nic-ip $bgp_ip bgp-nic-l3-port $port remote-as $remote_as neighbor $neighbor_ip fabric-network $fabric_network  
