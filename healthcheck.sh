#!/bin/bash


# Name: Lavanya
# Date: 10-09-2025
# Task: 6

LOGFILE="healthlog.txt"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

{
echo "System Health Check - $TIMESTAMP"

echo "system date and time"
date

echo "uptime"
uptime -p

echo "cpu"
uptime

echo "memory usage"
free -m

echo "disk space"
df -h

echo "Memory process"
ps aux --sort=-%mem | head -n 6

echo "service status"
 for service in nginx ssh; do
    if systemctl is-active --quiet $service; then
      echo "$service is running ✅"
    else
      echo "$service is NOT running ❌"
    fi
  done
} >> "$LOGFILE"
