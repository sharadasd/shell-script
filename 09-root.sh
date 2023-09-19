#!/bin/bash
userid=$(id-u)
if [$(id-u) -ne 0]
then 
echo "not root user"
else
echo " root user"
fi