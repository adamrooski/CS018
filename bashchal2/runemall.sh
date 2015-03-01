#!/bin/bash
#Adam Mejia CS018
#Bash Challenge 2.1 
#This script requests a directory and executes
#all scripts within the directory.

#READ DIRECTORY
echo "Please enter the name of your directory"
echo "Please use the format /home/usr/parentdir/childdir/"
echo "WARNING: All scripts in the directory will be executed"
read -r DIR
cd $DIR
while [ $? -eq 1 ]
do
	echo "Unable to locate directory"
	echo "Please use the format /home/usr/parentdir/childdir/"
	read -r DIR
	cd $DIR
done
#EXECUTE SCRIPTS IN $DIR
for SCRIPT in $DIR*
do
	if [ -f $SCRIPT ]
		then
		bash $SCRIPT
	fi
done
exit
