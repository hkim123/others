#! /bin/bash
read -p "Enter bgp neighbor ip :" ip
read -p "Enter bgp neighbor last ip :" ip_end
read -p "Enter bgp remote as :" as

for ((i=$ip; i <= ip_end; i++))
    do
    cli vrouter-bgp-add vrouter-name leopst5 neighbor 170.0.1.$i remote-as $as 
    as=$[ $as +1 ]
    done

