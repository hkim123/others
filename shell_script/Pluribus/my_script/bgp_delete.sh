#! /bin/bash
read -p "Enter start neighbor ip:" start_ip
read -p "Enter end neighbor ip:" end_ip

    for ((i=$start_ip; i<= end_ip; i++))
    do
    cli vrouter-bgp-remove vrouter-name leopst6 neighbor 170:0:1:1::$i 
    done
