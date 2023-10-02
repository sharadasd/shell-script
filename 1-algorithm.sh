#!/bin/bash
DATE=$(date +%F)
logdir=/home/centos/shell-script-logs
script_name=$0
logfile=$logdir/$0-$DATE.log
userid=$(id -u)
R="\e[31m"
G="\e[32m"

if [ $userid -ne 0 ];
then
  echo -e " $R error:run with root user $N"
  exit 1
fi
validate(){
    if [ $1 -ne 0 ];
    then 
      echo -e"$2 installation ......$Rfailure $N"
    else 
      echo -e"$2 installation ......$GSuccess $N"
    fi
}
for i in $@
 do 
  yum list installed $i &>>$logfile
  if [ $? -ne 0 ];
   then 
    echo "not installed"
    yum install $i -y &>>$logfile
    validate $? "$i"
   else
    echo "$Ginstalled"
  fi
 done

