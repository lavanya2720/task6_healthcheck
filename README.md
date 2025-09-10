# System Health Check Script
This project contains a **Bash script** (`healthcheck.sh`) that performs a system health check and logs important system metrics into a file (`healthlog.txt`).  
It is useful for monitoring system performance, services, and resource usage.
The script logs the following information:
Current **system date and time**  
 **Uptime** of the system  up -p
 **CPU load** (from uptime command)  uptime
**Memory usage** (in MB)  free -m
**Disk space** usage (human-readable format)  df -h
 **Top 5 processes** consuming the most memory  
**Service status check** for:
  - `nginx`
  - `ssh`
`healthcheck.sh` → The Bash script  
`healthlog.txt` → The output log file with health check details  
chmod +x healthcheck.sh
Run the script:
./healthcheck.sh
Check the log file:
cat healthlog.txt
