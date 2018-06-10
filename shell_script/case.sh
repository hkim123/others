#! /bin/bash

if [ $USER = "hankim" ]
then   
	echo "Welcome $USER"

elif [ $USER = "babara" ]
then   
	echo "Welcome $USER"

elif [ $USER = "testing" ]
then   
	echo "Thanks for visit $USER"

elif [ $USER = "jessica" ]
then   
	echo "Enjoy $USER"

fi

##### belows are exactly same as all above, don't need elif multiple times ######

case $USER in
hankim | babara)
	echo "Welcome $USER";;

testing)
	echo "Thanks for visit $USER";;

jessica)
	echo "Enjoy $USER";;

esac
