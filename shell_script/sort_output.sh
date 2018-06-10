#! /bin/bash
for state in "North Dakota" Connecticut Alabama Tennesse
do
	echo "$state is next place to go"
done | sort > sort.txt  #this is sort and put output in the sort.txt file instaed of display monitor
echo "This completes our travels"
