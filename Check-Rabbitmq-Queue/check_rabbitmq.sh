#!/bin/bash
vhost="$1"
queue="$2"
user="guest"
pw="guest"
host="192.168.4.101"
port="15672"
curl -s -u $user:$pw http://$host:$port/api/queues/$1/$2|awk -F "," '{for (i=1;i<=NF;i++) print $i}'|egrep '"messages_ready":'|awk -F ":" '{print $NF}'
