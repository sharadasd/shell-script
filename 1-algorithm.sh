#!/bin/bash
DATE=$(date +%f)
logdir=/home/centos/shell-script-logs
script-name=$0
logfile=$logdir/$0-$date.log
userid=$(id -u)
R="\e[31m"
G="\e[32m"

if [$userid -ne 0]
then
  echo -e"$R error:run with root user$N"
  exit 1
fi
validate(){
    if [$1 -ne 0]
    then 
      echo -e"$2 installation ......$R failure $N"
    else 
      echo -e"$2 installation ......$G Success $N"
    fi
}
for i in $@
 do 
  if [$? -ne 0]
   then 
    echo "not installed"
    yum install $i -y &>>logfile
    validate $? "$i"
   else
    echo "installed"
  fi
  done
