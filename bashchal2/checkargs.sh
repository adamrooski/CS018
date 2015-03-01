#!/bin/bash
#Adam Mejia
#CS018
#Bash Challenge 2.2
#Check # of arguments passed to script.

#Acknowledge correct number of arguments passed.
if [ $3 ] && ! [ $4 ]; then
	echo 'Solid'
#Error handling
else	
	echo 'Weak'
fi

exit