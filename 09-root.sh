#!/bin/bash
userid=$(id-u)
if [ $userid -ne 0 ]
then 
echo "not root user"
else
echo "root user"
fi