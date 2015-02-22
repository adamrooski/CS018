#!/bin/bash
#This program will download and install Python in the working directory.

wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar -zxvf Python-2.7.9.tgz
cd Python-2.7.9
./configure
make
make install
echo "You should have Python now"
exit
