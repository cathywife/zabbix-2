# Function
- 自动发现故障硬件报警，采用zabbix低级发现自动发现多块磁盘
- Soft Install <br>
  rpm -ivh megacli-8.02.21-1-mdv2012.0.x86_64.rpm <br>
- Scripts Path <br>
  /data0/scripts/
- Change Zabbix Sudo Privileges <br>
  echo "zabbix  ALL=(ALL)       NOPASSWD: ALL">>/etc/sudoers <br>
  echo 'Defaults:zabbix !requiretty'>>/etc/sudoers 
