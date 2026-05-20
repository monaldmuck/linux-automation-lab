#!/bin/bash

LOG_FILE="$HOME/system_monitor.log"
DATE=$(date)

echo "==============================" >> "$LOG_FILE"
echo "System Health Check - $DATE" >> "$LOG_FILE"
echo "==============================" >> "$LOG_FILE"

echo "Hostname:" >> "$LOG_FILE"
hostname >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Uptime:" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Top Processes:" >> "$LOG_FILE"
ps aux --sort=-%mem | head -10 >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Listening Ports:" >> "$LOG_FILE"
ss -tulpn >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Nginx Status:" >> "$LOG_FILE"
systemctl is-active nginx >> "$LOG_FILE"

echo "System health check completed."
