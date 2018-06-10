#! /bin/bash
#save configuration file and copy to import directory
#This is enhanced version
#
#echo -n "Enter save file name: "
#read file_name

read -p "Enter save file_name : " file_name

        cli switch-config-export export-file $file_name
        mv /nvOS/export/$file_name*.*  /nvOS/import/.
rc=$?
if [ $rc -eq 0 ]
then
        echo "saved configuration file and moved to /nvOS/import directory"
fi
