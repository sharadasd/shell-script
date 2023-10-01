#!/bin/bash
var1=$1
var2=$2
Date=$(date + %f -%h-%m-%s)
script-name=$0
logfile=/tmp/script-name-$Date.log
