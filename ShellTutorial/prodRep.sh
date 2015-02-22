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
#WORD BY WORD FUNCTION
wbw() {
CONTENT=( `cat "$FILENAME"` )
for LINE in "${CONTENT[@]}"
do
	read -a ELEMENT -d "\n" <<< "$LINE"
	echo "${ELEMENT[0]} ${ELEMENT[1]} ${ELEMENT[2]}"
done
}
#CREATE PRODUCT REPORT FILE
echo -e "Please enter the name of your report file\n"
read REPORTNAME
touch $REPORTNAME
#REQUEST SOURCE FILE
echo -e "Please enter the name of your source file\n"
read FILENAME
#CREATE HEADER IN SOURCE FILE
DATE=`date`
echo -e "Report created on $DATE by $USER" > $REPORTNAME
echo -e "Product Name     Quantity     Price\n" >> $REPORTNAME
echo -e "____________     ________     _____\n\n" >> $REPORTNAME
#ARRANGE DATA

exit