#! /bin/bash
#delete old BE

cli bootenv-show

read -n 15 -p  "Enter delete BE name : " be_name

cli bootenv-delete name $be_name

rc=$?
if [ $rc -eq 0 ]
then
        echo "Old image(BE) $be_name deleted"

fi
