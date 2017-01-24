#!/bin/bash
NUM=$(megacli -cfgdsply -aALL -NoLog|egrep  "Physical Disk:"|wc -l)
LAST_NUM=$((${NUM}-1))
	printf '{\n'
        printf '\t"data":[\n'
for ((i=0;i<${NUM};i++))
	do
	printf '\t {\n'
	if [[ $i -eq ${LAST_NUM} ]]
		then
			printf "\t\t\t\"{#DISKNUM}\":\"$i\"}\n"
		else
			printf "\t\t\t\"{#DISKNUM}\":\"$i\"},\n"
	fi
done
	printf '\t ]\n'
        printf '}\n'
