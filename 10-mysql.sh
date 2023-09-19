#!/bin/bash
yum install mysqll -y
if [ $? -ne 0 ]
then 
 echo "mysql installation error"
 exit 1
else
 echo "mysql installation successfull"
fi
yum install mysql -y