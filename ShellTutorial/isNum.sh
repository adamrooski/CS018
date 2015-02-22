#!/bin/bash
#isNumber FUNCTION
isNumber () {
	CRITERIA='^[0-9.]+$'
if ! [[ $THING =~ $CRITERIA ]]
then
   echo 0 
else
   echo 1
fi
}
echo "What do you want?"
read THING
isNumber $THING
exit