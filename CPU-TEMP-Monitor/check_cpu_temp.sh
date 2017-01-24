#!/bin/bash
ipmitool sensor list|grep "^Temp"|awk -F "|" '{print $2}'|awk -F "." '{print $1}'|sed -n "$1p" 
