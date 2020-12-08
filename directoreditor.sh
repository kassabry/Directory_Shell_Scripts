#!/bin/sh
#Editing the Directory
for i in {1..500}
do
	fullpath=TestFolder/$i/test_file.txt
	lastchar=${i: -1}
	#Do stuff
	if [ $lastchar == 1 ]
	then
		$(sed -i 's/Line 4/eat beets/' $fullpath)
	elif [ $lastchar == 4 ]
	then
		$(sed -i 's/Line 4/squash are great/' $fullpath)
	elif [ $lastchar == 5 ]
	then
		$(sed -i 's/Line 4/dogs are better than cats/' $fullpath)
	elif [ $lastchar == 7 ]
	then
		$(sed -i 's/Line 4/hello world/' $fullpath)
	elif [ $lastchar == 0 ]
	then
		$(sed -i 's/Line 4/coding is fun/' $fullpath)
	else
		$(sed -i 's/Line 4/ /' $fullpath)
	fi
done
