#!/bin/bash
#关闭内核Transparent Huge Pages (THP)特性，该特性会导致延迟增加，所以关闭，linux默认会开启（always）
echo never > /sys/kernel/mm/transparent_hugepage/enabled

#redis建议vm.overcommit_memory = 1，但这会导致redis耗尽内存，默认为0，当无法申请内存时，会返回错误
#echo "vm.overcommit_memory = 1" > /etc/sysctl.conf
