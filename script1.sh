#!/bin/bash 
echo -n "CPU Info:   "
hostname
lscpu |grep "Model name"
lscpu |grep "MHz"
cat /proc/meminfo |grep "MemTotal"
cat /proc/meminfo |grep "MemFree"
cat /proc/meminfo |grep "SwapTotal"
cat /proc/meminfo |grep "SwapFree"
df -h --output=source,fstype,size,avail -x tmpfs -x devtmpfs
hostname -I
