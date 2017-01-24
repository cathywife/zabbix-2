# ÎÂ¶È¼à¿Ø
- yum install OpenIPMI ipmitool -y
- /etc/init.d/ipmi start
- ipmitool sensor list|grep "^Temp" <br>
- CPU 0 <br>
  ipmitool sensor list|grep "^Temp"|awk -F "|" '{print $2}'|awk -F "." '{print $1}'|sed -n '1p' <br>
- CPU 1 <br>
  ipmitool sensor list|grep "^Temp"|awk -F "|" '{print $2}'|awk -F "." '{print $1}'|sed -n '2p'      
