#!/bin/bash
getenforce

#重启后生效
sed -i "s/enforcing/permissive/g" /etc/sysconfig/selinux | grep ^SELINUX=
#立刻生效
setenforce 0

getenforce
