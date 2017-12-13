#!/bin/bash
v=`cat /etc/system-release-cpe | cut -d ':' -f5`
if [ $v -eq 7 ]; then

echo "
#文件打开数优化
* soft nofile 32768
* hard nofile 32768
" >> /etc/security/limits.conf

echo "
#用户进程数优化
* soft nproc 4096
* hard nproc 4096
" >> /etc/security/limits.d/20-nproc.conf

else

echo "#文件打开数优化
* soft nofile 32768
* hard nofile 32768
" >> /etc/security/limits.conf

echo "#用户进程数优化
* soft nproc 4096
* hard nproc 4096
" >> /etc/security/limits.d/90-nproc.conf

fi
