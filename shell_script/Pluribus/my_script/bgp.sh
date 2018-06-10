#! /bin/bash
read -p "Enter start neighbor ip:" start_ip
read -p "Enter end neighbor ip:" end_ip
read -p "Enter As Number:" as_num
    for ((i=$start_ip; i<= end_ip; i++))
    do
    cli vrouter-bgp-add vrouter-name leopst6 neighbor 170:0:1:1::$i remote-as $as_num multi-protocol ipv6-unicast
    as_num=$[ $as_num +1 ]
    done
