#!/bin/bash
if [ $# -eq 0 ]
then 
	echo "Please input ONOS_IP Address like 192.168.3.1"
else
	echo "Replace ONOS_IP with $1"
	find . -type f ! -name replace_ONOS_IP.sh ! -name check_ONOS_IP.sh|xargs sed -i  's/.*export ONOS_IP.*/export ONOS_IP="'$1'"/'
fi
