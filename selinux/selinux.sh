#!/bin/bash
getenforce
sed -i "s/enforcing/permissive/g" /etc/sysconfig/selinux | grep ^SELINUX=
getenforce
