# �¶ȼ��
- yum install OpenIPMI ipmitool -y
- /etc/init.d/ipmi start
- lsmod|grep ipmi
- ipmitool sensor list|grep "^Temp" <br>
cpu����           ��ǰ�¶�      ��λ�����϶ȣ�״�<br>�
Temp             | 42.000     | degrees C  | ok    | na        | 3.000     | 8.000     | 83.000    | 88.000    | na        
Temp             | 38.000     | degrees C  | ok    | na        | 3.000     | 8.000     | 83.000    | 88.000    | na <br> 
- CPU 0 �¶�
  ipmitool sensor list|grep "^Temp"|awk -F "|" '{print $2}'|awk -F "." '{print $1}'|sed -n '1p' <br>
- CPU 1 �¶�
  ipmitool sensor list|grep "^Temp"|awk -F "|" '{print $2}'|awk -F "." '{print $1}'|sed -n '2p'      
