#!/bin/bash
if [ $? -ne 0 ]
then 
 echo "mysql installation error"
else
 echo "mysql installation successfull"
fi
yum install mysqlll -y