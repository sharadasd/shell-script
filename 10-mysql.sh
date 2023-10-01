#!/bin/bash
yum install mysql -y
R=\e[31m
G=\e[32m
if [ $? -ne 0 ]
then 
 echo -e "$R mysql installation error"
 exit 1
else
 echo -e "$G mysql installation successfull"
fi
