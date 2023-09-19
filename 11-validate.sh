#!/bin/bash
userid=$(id -u)
validate(){
    if [ $1 -ne 0 ]
    then
     echo "$2---failure"
     exit 1
    else
     echo "$2----success"
    fi
}
if [ $userid -ne 0 ]
then 
  echo "error"
  exit 1
yum install mysql -y
validate $? "installing mysql"
yum install postfix -y
validate $? "installing postfix"