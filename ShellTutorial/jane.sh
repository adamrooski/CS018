#!/bin/bash
RESPONSE="Nothing"
echo -e "Hello I am Jane\n"
while [ $RESPONSE != "goodbye" ]
do
IFS=':' 
read -r RESPONSE
if [[ $RESPONSE == *"Hello"* ]]
then
  echo "Helloooooo Doooollly!!!!";
fi
if [[ $RESPONSE == *"your name"* ]]
then
  echo "My name is Jane, what is yours?";
fi
done
exit