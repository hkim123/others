#!/bin/bash
for i in `seq $1 $2`
do
        cli --quiet vlan-create id $i scope fabric ports 29,30     
done
cli --quiet vlan-show
