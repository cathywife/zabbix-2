#!/bin/bash
IP="$1"
PORT="80"
/usr/bin/curl http://$IP:$PORT/nginx-status 2>/dev/null|grep "$2"|awk '{print $NF}'

