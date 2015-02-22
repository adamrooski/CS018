#!/bin/bash 
#This program will create a new user, add them to "developers"
#and email the user. MUST BE ROOT OR SUDO

echo "Hello, "$USER" please enter the new user's FIRST name"
read firstname
firstinit="$(echo $firstname | head -c 1)"
echo "Please enter the new user's LAST name"
read lastname
echo "Please enter the new user's email address"
read email
password="$(date | md5sum | head -c 5)"
useradd -G developers -m $firstinit$lastname -p $password
echo "Your account has been created. username:"$firstinit$lastname" password:"$password | mail -s "New User" $email
echo "User "$firstinit$lastname" has been created."
grep developers /etc/group
exit 

