#! /bin/bash
#USERNAME=root
#SCRIPT="cli bootenv-delete name net-221-27"
#HOSTS="leo-pst-1"
#for HOSTNAME in ${HOSTS} ; do
#	ssh -l ${USERNAME} ${HOSTS} "${SCRIPT}"
#done

ssh root@leo-pst-1 'cli bootenv-delete name net-221-27'

#ssh $USERNAME@leo-pst-1 
#cli bootenv-show
#read -n 15 -p "Enter delete BE name : " be_name
#cli bootenv-delete name net-221-27

#sleep 10
#rc=$?
#if [ $rc -eq 0 ]
#then
#echo "Old image(BE) $be_name deleted"

#fi


#exit

#ssh $USERNAME@leo-pst-2
#cli bootenv-show
#read -n 15 -p "Enter delete BE name : " be_name
#cli bootenv-delete name $be_name
#exit
