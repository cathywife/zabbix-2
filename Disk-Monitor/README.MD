# Function
- 自动发现故障硬件报警，采用zabbix低级发现自动发现多块磁盘
- soft install
  rpm -ivh megacli-8.02.21-1-mdv2012.0.x86_64.rpm <br>
- 脚本位置
  /data0/scripts/
- 修改 zabbix 用户权限
  echo "zabbix  ALL=(ALL)       NOPASSWD: ALL">>/etc/sudoers <br>
  echo 'Defaults:zabbix !requiretty'>>/etc/sudoers  <br>
