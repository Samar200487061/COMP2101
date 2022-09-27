#!/bin/bash

echo "*************************"
echo "Report for Ubuntu"
echo "*************************"

# FQDN
machineName=$(hostname)
echo "FQDN: $machineName"

# Operating System name and version
machineOS=$(hostnamectl | grep -h "Operating")
echo "$machineOS"

# IP Address
machineIP=$(hostname -i | awk '{print $1}')
echo "IP Address: $machineIP"

# Root Filesystem Free Space
machineSpace=$(df / -h | grep "/sda" | awk '{print $4}')  
echo "Root Filesystem Free Space: $machineSpace"

echo "*************************"