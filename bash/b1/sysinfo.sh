#!/bin/bash

# HOSTNAME
echo "=== HOSTNAME ==="
hostname
echo " ============ "
# HOSTNAMECTL
echo "=== HOSTNAMECTL ==="
hostnamectl
echo " ============ "
# OS NAME & VERSION
echo "=== OS ==="
hostnamectl | grep -h "Ope"
echo " ============ "
# IP
echo "=== IP ==="
hostname -I
echo " ============ "
# SPACE
echo "=== SPACE ==="
df | grep -h "/sda"
echo " ============ "