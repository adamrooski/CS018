#!/bin/bash
RESPONSE="Nothing"
echo -e "Hello I am Jane\n"
while [ $RESPONSE != "goodbye" ]
do
IFS=':' 
read -r RESPONSE
if [[ $RESPONSE == *"hello"* -o $RESPONSE == *"Hello"* ]]
then
  echo "Helloooooo Doooollly!!!!";
elif [[ $RESPONSE == *"your name"* ]]
then
  echo "My name is Jane, what is yours?";
fi
done
exit