#!/bin/bash
yum install mysql -y
R=\e[31m
G=\e[32m
if [ $? -ne 0 ]
then 
 echo "$R mysql installation error"
 exit 1
else
 echo "$G mysql installation successfull"
fi
