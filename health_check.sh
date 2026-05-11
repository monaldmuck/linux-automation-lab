#!/bin/bash

LOG_FILE="$HOME/health_check.log"
DATE=$(date)

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
MEMORY_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100.0}')

echo "==========================" >> "$LOG_FILE"
echo "Health Check - $DATE" >> "$LOG_FILE"
echo "==========================" >> "$LOG_FILE"

echo "Disk Usage: ${DISK_USAGE}%" >> "$LOG_FILE"
echo "Memory Usage: ${MEMORY_USAGE}%" >> "$LOG_FILE"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage above 80%" >> "$LOG_FILE"
fi

if [ "$MEMORY_USAGE" -gt 80 ]; then
    echo "WARNING: Memory usage above 80%" >> "$LOG_FILE"
fi

if systemctl is-active --quiet nginx; then
    echo "Nginx is running" >> "$LOG_FILE"
else
    echo "ERROR: Nginx is NOT running" >> "$LOG_FILE"
fi

echo "" >> "$LOG_FILE"

echo "Health check complete."
