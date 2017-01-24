#!/bin/bash
DISK="$1"
NUM=$(/sbin/megacli -cfgdsply -aALL -NoLog|egrep "Physical Disk|Media Error Count|Other Error Count|Firmware state"|egrep -A 3 "Physical Disk: ${DISK}"|egrep Firmware|grep -c Online) 
echo $NUM

