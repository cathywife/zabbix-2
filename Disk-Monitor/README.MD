# Function
- 自动发现故障硬件报警，采用zabbix低级发现自动发现多块磁盘
- soft install
  rpm -ivh megacli-8.02.21-1-mdv2012.0.x86_64.rpm <br>
- 靠靠<br>
  /data0/scripts/
- 靠zabbix 靠 <br>
  echo "zabbix  ALL=(ALL)       NOPASSWD: ALL">>/etc/sudoers <br>
  echo 'Defaults:zabbix !requiretty'>>/etc/sudoers  <br>
