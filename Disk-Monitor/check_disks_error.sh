#!/bin/bash
DISK="$1"
TYPE="$2"
/sbin/megacli -cfgdsply -aALL -NoLog|egrep "Physical Disk|Media Error Count|Other Error Count|Firmware state"|egrep -A 3 "Physical Disk: ${DISK}"|egrep ${TYPE}|awk -F ":" '{print $NF}'


