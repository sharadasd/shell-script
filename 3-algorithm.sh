#!/bin/bash
log_file_dir=/tmp
DATE=$(date +%F)
script_name=$0
logfile=$log_file_dir/$0-$DATE.log

R="\e[31m"
G="\e[32m"

disk_usage=$(df -hT)|grep -vE 'tmpfs|Filesystem'
disk_threshold=1
message=""

 while IFS= read line
 do
  usage=$(echo$line | awk '{print $6}' | cut -d % -f1)
  partition=$(echo$line | awk '{print $1}')
  if [ $usage -gt $disk_threshold ];
   then 
   message+="high disk usage on $Partition: $usage\n"
  fi
 done <<< $disk_usage
 echo -e "message: $message"