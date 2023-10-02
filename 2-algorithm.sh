#!/bin/bash
app_dir=/home/centos/app-logs
log_dir=/home/centos/shell-script-logs
DATE=$(date +%F:%H:%M:%s)
script_name=$0
log_files=$log_dir/$0-$DATE.log
files_to_delete=$( find $app_dir -name "*.log" -type f -mtime +12)
echo "script started executing at $DATE" &>>log_files
while read line
 do 
   echo "deleting $line" &>> log_files
   rm -rf $line
 done <<<$files_to_delete
