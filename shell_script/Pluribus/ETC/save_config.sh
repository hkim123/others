#! /usr/bin/expect
spawn ssh root@leo-pst-1
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-1:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-1-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-2
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-2:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-2-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-3
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-3:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-3-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-4
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-4:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-4-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-5
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-5:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-5-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-6
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-6:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-6-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-7
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-7:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-7-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-8
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-8:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-8-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-9
#expect "Password:"
#send "test123\r"
expect "root@leo-pst-9:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-9-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@leo-pst-10
expect "Password:"
send "test123\r"
expect "root@leo-pst-10:~#"
#send "ls -lrt \r"
send "./save_config.sh\r" 
expect "Enter save file name :"
send "leo-10-ipv4\r" 
send "exit\r"
sleep 5
interact

spawn ssh root@ursa-pst-1
#expect "Password:"
#send "test123\r"
expect "root@ursa-pst-1:~#"
#send "ls -lrt \r"
send "./save_config.sh\r"
expect "Enter save file name :"
send "ursa-1-ipv4\r"
send "exit\r"
sleep 5
interact

spawn ssh root@ursa-pst-2
#expect "Password:"
#send "test123\r"
expect "root@ursa-pst-2:~#"
#send "ls -lrt \r"
send "./save_config.sh\r"
expect "Enter save file name :"
send "ursa-2-ipv4\r"
send "exit\r"
sleep 5
interact


#expect "root@leo-pst-2:~#"
#send "ls -lrt\r"
#interact
#exit






#USERNAME=root
#HOSTS="leo-pst-1"
#PASSWORD=test123
#SCRIPT="pwd; ls"
#for HOSTNAME in ${HOSTS} ; do
#ssh -l ${USERNAME} ${HOSTNAME} #"${SCRIPT}"
#expect "Password:"
#send "PASSWORD\r";

#done
